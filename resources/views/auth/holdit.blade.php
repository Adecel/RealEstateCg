<div class="tab" id="tab-2">
    <div class="inner-box">
        <h4>s'inscrire</h4>
        <form action="{{ route('register') }}" method="post" class="default-form">
            @csrf

            <div class="form-group">
                <label>Nom</label>
                <input type="text" name="name" id="name" required="" placeholder="Nom">
            </div>
            <div class="form-group">
                <label>E-mail</label>
                <input type="email" name="email" id="email" required="" placeholder="Adresse e-mail">
            </div>
            <div class="form-group">
                <label>Mot de passe</label>
                <input type="password" name="password" id="password" required="" placeholder="Mot de passe">
            </div>
            <div class="form-group">
                <label>Confirmez le mot de passe</label>
                <input type="password" name="password_confirmation" id="password_confirmation" required="" placeholder="Confirmez le mot de passe">
            </div>

            <div class="form-group message-btn">
                <button type="submit" class="theme-btn btn-one">Je m'inscris</button>
            </div>
        </form>

        <div class="othre-text">
            <p>Avez-vous déjà un compte? <a href="signup.html"> Se Connecter</a></p>
        </div>
    </div>
</div>
