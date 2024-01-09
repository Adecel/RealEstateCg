@extends('agent.agent_dashboard')
@section('agent')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

    <div class="page-content">
        <nav class="page-breadcrumb">
            <ol class="breadcrumb">
            </ol>
        </nav>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center mb-3 mt-4">Choisissez un forfait</h3>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-4 stretch-card grid-margin grid-margin-md-0">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="text-center mt-3 mb-4">Basique</h4>
                                            <i data-feather="award" class="text-primary icon-xxl d-block mx-auto my-3"></i>
                                            <h1 class="text-center">0 XAF</h1>
                                            <p class="text-muted text-center mb-4 fw-light">Limité</p>
                                            <h5 class="text-primary text-center mb-4">Jusqu'à 1 propriété</h5>
                                            <table class="mx-auto">
                                                <tr>
                                                    <td><i data-feather="check" class="icon-md text-primary me-2"></i></td>
                                                    <td><p>Jusqu'à 1 propriété</p></td>
                                                </tr>
                                                <tr>
                                                    <td><i data-feather="x" class="icon-md text-danger me-2"></i></td>
                                                    <td><p class="text-muted">Assistance Premium</p></td>
                                                </tr>
                                            </table>
                                            <div class="d-grid">
                                                <button class="btn btn-primary mt-4">Commencer l'essai gratuit</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 stretch-card grid-margin grid-margin-md-0">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="text-center mt-3 mb-4">Entreprise</h4>
                                            <i data-feather="gift" class="text-success icon-xxl d-block mx-auto my-3"></i>
                                            <h1 class="text-center">2000 XAF</h1>
                                            <p class="text-muted text-center mb-4 fw-light">Mois illimités</p>
                                            <h5 class="text-success text-center mb-4">Jusqu'à 3 propriétés</h5>
                                            <table class="mx-auto">
                                                <tr>
                                                    <td><i data-feather="check" class="icon-md text-primary me-2"></i></td>
                                                    <td><p>Jusqu'à 3 propriétés</p></td>
                                                </tr>
                                                <tr>
                                                    <td><i data-feather="check" class="icon-md text-primary me-2"></i></td>
                                                    <td><p>Assistance Premium</p></td>
                                                </tr>
                                            </table>
                                            <div class="d-grid">
{{--                                                <button class="btn btn-success mt-4">Start Now</button>--}}
                                                <a href="{{ route('buy.business.plan') }}" class="btn btn-success mt-4">Commencez maintenant</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 stretch-card">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="text-center mt-3 mb-4">Professional</h4>
                                            <i data-feather="briefcase" class="text-primary icon-xxl d-block mx-auto my-3"></i>
                                            <h1 class="text-center">5000 XAF</h1>
                                            <p class="text-muted text-center mb-4 fw-light">Mois illimités</p>
                                            <h5 class="text-primary text-center mb-4">Jusqu'à 10 propriétés</h5>
                                            <table class="mx-auto">
                                                <tr>
                                                    <td><i data-feather="check" class="icon-md text-primary me-2"></i></td>
                                                    <td><p>Jusqu'à 10 propriétés</p></td>
                                                </tr>
                                                <tr>
                                                    <td><i data-feather="check" class="icon-md text-primary me-2"></i></td>
                                                    <td><p>Assistance Premium</p></td>
                                                </tr>
                                            </table>
                                            <div class="d-grid">
                                                <a href="{{ route('buy.professional.plan') }}" class="btn btn-primary mt-4">Commencez maintenant</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
