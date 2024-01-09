@extends('admin.admin_dashboard')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

    <div class="page-content">
        <div class="row profile-body">
            <!-- middle wrapper start -->
            <div class="col-md-8 col-xl-8 middle-wrapper">
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                            <h6 class="card-title">Modifier l'Agent</h6>
                            <br>
                            <form id="myForm" method="POST" action="{{ route('update.agent') }}" class="forms-sample">
                                @csrf
                                <input type="hidden" name="id" value="{{ $allagent->id }}">
                                <div class="form-group mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Nom de l'agent</label>
                                    <input type="text" name="name" class="form-control" value="{{ $allagent->name }}" >
                                </div>
                                <div class="form-group mb-3">
                                    <label for="exampleInputEmail1" class="form-label">E-mail de l'agent</label>
                                    <input type="email" name="email" class="form-control"  value="{{ $allagent->email }}" >
                                </div>
                                <div class="form-group mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Téléphone de l'agent</label>
                                    <input type="text" name="phone" class="form-control"  value="{{ $allagent->phone }}"  >
                                </div>
                                <div class="form-group mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Adresse de l'agent</label>
                                    <input type="text" name="address" class="form-control"  value="{{ $allagent->address }}" >
                                </div>
                                <button type="submit" class="btn btn-primary me-2">Sauvegarder les modifications</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- middle wrapper end -->
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function (){
            $('#myForm').validate({
                rules: {
                    name: {
                        required : true,
                    },
                    email: {
                        required : true,
                    },
                    phone: {
                        required : true,
                    },
                    password: {
                        required : true,
                    },

                },
                messages :{
                    name: {
                        required : 'Please Enter Name',
                    },
                    email: {
                        required : 'Please Enter Email',
                    },
                    phone: {
                        required : 'Please Enter Phone',
                    },
                    password: {
                        required : 'Please Enter Password',
                    },

                },
                errorElement : 'span',
                errorPlacement: function (error,element) {
                    error.addClass('invalid-feedback');
                    element.closest('.form-group').append(error);
                },
                highlight : function(element, errorClass, validClass){
                    $(element).addClass('is-invalid');
                },
                unhighlight : function(element, errorClass, validClass){
                    $(element).removeClass('is-invalid');
                },
            });
        });
    </script>

@endsection
