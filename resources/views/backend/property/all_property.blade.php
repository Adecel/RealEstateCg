@extends('admin.admin_dashboard')
@section('admin')

    <div class="page-content">

        <nav class="page-breadcrumb">
            <ol class="breadcrumb">
                <a href="{{ route('add.property') }}" class="btn btn-inverse-info">Ajouter une propriété</a>
            </ol>
        </nav>

        <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h6 class="card-title">TOUTES LES PROPRIÉTÉS</h6>

                        <div class="table-responsive">
                            <table id="dataTableExample" class="table">
                                <thead>
                                <tr>
                                    <th>Sl </th>
                                    <th>IMAGE</th>
                                    <th>NOM</th>
                                    <th>TYPE P</th>
                                    <th>TYPE DE STATUT</th>
                                    <th>VILLE</th>
                                    <th>CODE</th>
                                    <th>STATUT</th>
                                    <th>ACTION</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($property as $key => $item)
                                    <tr>
                                        <td>{{ $key+1 }}</td>
                                        <td><img src="{{ asset($item->property_thambnail) }}" style="width:70px; height:40px;"> </td>
                                        <td>{{ $item->property_name }}</td>
                                        <td>{{ $item['type']['type_name'] }}</td>
                                        <td>{{ $item->property_status }}</td>
                                        <td>{{ $item->city }}</td>
                                        <td>{{ $item->property_code }}</td>
                                        <td>
                                            @if($item->status == 1)
                                                <span class="badge rounded-pill bg-success">Actif</span>
                                            @else
                                                <span class="badge rounded-pill bg-danger">Inactif</span>
                                            @endif

                                        </td>
                                        <td>
                                            <a href="{{ route('details.property',$item->id) }}" class="btn btn-inverse-info" title="Details"> <i data-feather="eye"></i> </a>
                                            <a href="{{ route('edit.property',$item->id) }}" class="btn btn-inverse-warning" title="Edit"> <i data-feather="edit"></i> </a>
                                            <a href="{{ route('delete.property',$item->id) }}" class="btn btn-inverse-danger" id="delete" title="Delete"> <i data-feather="trash-2"></i>  </a>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
