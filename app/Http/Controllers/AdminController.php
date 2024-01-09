<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function AdminDashboard(){
        return view('admin.index');
    }//End of AdminDashboard

    public function AdminLogout(Request $request){
        Auth::guard('web')->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        $notification = array(
            'message' => 'Admin Logout Successfully',
            'alert-type' => 'success'
        );
        return redirect('/admin/login')->with($notification);
    }//End of AdminLogout

    public function AdminLogin(){
        return view('admin.admin_login');
    }// End AdminLogin

    public function AdminProfile(){
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('admin.admin_profile_view',compact('profileData'));
    }// End AdminProfile

    public function AdminProfileStore(Request $request){
        $id = Auth::user()->id;
        $data = User::find($id);
        $data->username = $request->username;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->phone = $request->phone;
        $data->address = $request->address;

        if ($request->file('photo')) {
            $file = $request->file('photo');
            @unlink(public_path('upload/admin_images/'.$data->photo));
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/admin_images'),$filename);
            $data['photo'] = $filename;
        }

        $data->save();
        $notification = array(
            'message' => 'Admin Profile Updated Successfully',
            'alert-type' => 'success'
        );
        return redirect()->back()->with($notification);
    }// End of AdminProfileStore

    public function AdminChangePassword(){
        $id = Auth::user()->id;
        $profileData = User::find($id);
        return view('admin.admin_change_password',compact('profileData'));
    }// End AdminChangePassword

    public function AdminUpdatePassword(Request $request){

        // Validation
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|confirmed'
        ]);

        /// Match The Old Password
        if (!Hash::check($request->old_password, auth::user()->password)) {
            $notification = array(
                'message' => 'Old Password Does not Match!',
                'alert-type' => 'error'
            );
            return back()->with($notification);
        }

        /// Update The New Password
        User::whereId(auth()->user()->id)->update([
            'password' => Hash::make($request->new_password)
        ]);
        $notification = array(
            'message' => 'Password Change Successfully',
            'alert-type' => 'success'
        );
        return back()->with($notification);
    }// End AdminUpdatePassword

    //Agent User All Method
    public function AllAgent(){
        $allagent = User::where('role','agent')->get();
        return view('backend.agentuser.all_agent',compact('allagent'));

    }// End of AllAgent

    public function AddAgent(){
        return view('backend.agentuser.add_agent');
    }// End of AddAgent


    public function StoreAgent(Request $request){
        User::insert([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'password' => Hash::make($request->password),
            'role' => 'agent',
            'status' => 'active',
        ]);

        $notification = array(
            'message' => 'Agent Created Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.agent')->with($notification);
    }// End of StoreAgent

    public function EditAgent($id){
        $allagent = User::findOrFail($id);
        return view('backend.agentuser.edit_agent',compact('allagent'));
    }// End of EditAgent

    public function UpdateAgent(Request $request){
        $user_id = $request->id;

        User::findOrFail($user_id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
        ]);

        $notification = array(
            'message' => 'Agent Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('all.agent')->with($notification);
    }// End of UpdateAgent

    public function DeleteAgent($id){
        User::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Agent Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }// End of DeleteAgent

    public function changeStatus(Request $request){
        $user = User::find($request->user_id);
        $user->status = $request->status;
        $user->save();

        return response()->json(['success'=>'Status Change Successfully']);
    }// End of changeStatus

}
