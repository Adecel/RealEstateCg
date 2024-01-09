@extends('agent.agent_dashboard')
@section('agent')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

    <div class="page-content">
        <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h6 class="card-title">DÉTAILS DE LA PROPRIÉTÉ</h6>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tbody>
                                <tr>
                                    <td>Nom de la propriété</td>
                                    <td><code>{{ $property->property_name }}</code></td>
                                </tr>
                                <tr>
                                    <td>Statut de propriété</td>
                                    <td><code>{{ $property->property_status }}</code></td>
                                </tr>
                                <tr>
                                    <td>Prix minimum</td>
                                    <td><code>{{ $property->lowest_price }}</code></td>
                                </tr>
                                <tr>
                                    <td>Prix maximum</td>
                                    <td><code>{{ $property->max_price }}</code></td>
                                </tr>
                                <tr>
                                    <td>Chambres</td>
                                    <td><code>{{ $property->bedrooms }}</code></td>
                                </tr>
                                <tr>
                                    <td>Salles de bain</td>
                                    <td><code>{{ $property->bathrooms }}</code></td>
                                </tr>
                                <tr>
                                    <td>Garage </td>
                                    <td><code>{{ $property->garage }}</code></td>
                                </tr>
                                <tr>
                                    <td>Taille du garage</td>
                                    <td><code>{{ $property->garage_size }}</code></td>
                                </tr>
                                <tr>
                                    <td>Adresse</td>
                                    <td><code>{{ $property->address }}</code></td>
                                </tr>
                                <tr>
                                    <td>Ville</td>
                                    <td><code>{{ $property->city }}</code></td>
                                </tr>
                                <tr>
                                    <td>État</td>
                                    <td><code>{{ $property['pstate']['state_name'] }}</code></td>
                                </tr>
                                <tr>
                                    <td>Code postal</td>
                                    <td><code>{{ $property->postal_code }}</code></td>
                                </tr>
                                <tr>
                                    <td>Image principale</td>
                                    <td>
                                        <img src="{{ asset($property->property_thambnail) }}" style="width:100px; height:70px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Statut</td>
                                    <td>
                                        @if($property->status == 1)
                                            <span class="badge rounded-pill bg-success">Actif</span>
                                        @else
                                            <span class="badge rounded-pill bg-danger">InActif</span>
                                        @endif
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tbody>
                                <tr>
                                    <td>Code de propriété</td>
                                    <td><code>{{ $property->property_code }}</code></td>
                                </tr>
                                <tr>
                                    <td>Taille de la propriété</td>
                                    <td><code>{{ $property->property_size }}</code></td>
                                </tr>
                                <tr>
                                    <td>Vidéo de la propriété</td>
                                    <td><code>{{ $property->property_video }}</code></td>
                                </tr>
                                <tr>
                                    <td>Voisinage ou Quartier</td>
                                    <td><code>{{ $property->neighborhood }}</code></td>
                                </tr>
                                <tr>
                                    <td>Latitude</td>
                                    <td><code>{{ $property->latitude }}</code></td>
                                </tr>
                                <tr>
                                    <td>Longitude</td>
                                    <td><code>{{ $property->longitude }}</code></td>
                                </tr>
                                <tr>
                                    <td>Type de propriété</td>
                                    <td><code>{{ $property['type']['type_name'] }}</code></td>
                                </tr>
                                <tr>
                                    <td>Commodités de la propriété</td>
                                    <td>
                                        <select name="amenities_id[]" class="js-example-basic-multiple form-select" multiple="multiple" data-width="100%">
                                            @foreach($amenities as $ameni)
                                                <option value="{{ $ameni->amenitis_name }}" {{ (in_array($ameni->amenitis_name,$property_ami)) ? 'selected' : '' }} >{{ $ameni->amenitis_name }}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Agent </td>
                                    @if($property->agent_id == NULL)
                                        <td><code> Admin </code></td>
                                    @else
                                        <td><code> {{ $property['user']['name'] }} </code></td>
                                    @endif
                                </tr>
                                </tbody>
                            </table>
                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
