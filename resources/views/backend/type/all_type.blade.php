@extends('admin.admin_dashboard')
@section('admin')

    <div class="page-content">

        <nav class="page-breadcrumb">
            <ol class="breadcrumb">
                <a href="{{ route('add.type') }}" class="btn btn-inverse-info">Ajouter un type de propriété</a>
            </ol>
        </nav>

        <div class="row">
            <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h6 class="card-title">Tout le type de propriété</h6>

                        <div class="table-responsive">
                            <table id="dataTableExample" class="table">
                                <thead>
                                <tr>
                                    <th>Sl </th>
                                    <th>Nom du type</th>
                                    <th>Icône du type</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($types as $key => $item)
                                    <tr>
                                        <td>{{ $key+1 }}</td>
                                        <td>{{ $item->type_name }}</td>
                                        <td>{{ $item->type_icon }}</td>
                                        <td>
                                            <a href="{{ route('edit.type',$item->id) }}" class="btn btn-inverse-warning">Modifier</a>
                                            <a href="{{ route('delete.type',$item->id) }}" class="btn btn-inverse-danger" id="delete">Supprimer</a>
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
