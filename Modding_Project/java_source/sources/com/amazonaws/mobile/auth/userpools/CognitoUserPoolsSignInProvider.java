package com.amazonaws.mobile.auth.userpools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import com.amazonaws.mobile.auth.core.internal.util.ViewHelper;
import com.amazonaws.mobile.auth.core.signin.SignInProvider;
import com.amazonaws.mobile.auth.core.signin.SignInProviderResultHandler;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserSession;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.NewPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.GenericHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidParameterException;
import com.amazonaws.services.cognitoidentityprovider.model.NotAuthorizedException;
import com.amazonaws.services.cognitoidentityprovider.model.UserNotConfirmedException;
import com.amazonaws.services.cognitoidentityprovider.model.UserNotFoundException;
import org.json.JSONException;
/* loaded from: classes2.dex */
public class CognitoUserPoolsSignInProvider implements SignInProvider {

    /* renamed from: p  reason: collision with root package name */
    private static final String f5102p = "CognitoUserPoolsSignInProvider";

    /* renamed from: q  reason: collision with root package name */
    private static int f5103q;

    /* renamed from: r  reason: collision with root package name */
    private static boolean f5104r;

    /* renamed from: s  reason: collision with root package name */
    private static String f5105s;

    /* renamed from: a  reason: collision with root package name */
    private String f5106a;

    /* renamed from: b  reason: collision with root package name */
    private NewPasswordContinuation f5107b;

    /* renamed from: c  reason: collision with root package name */
    private ForgotPasswordContinuation f5108c;

    /* renamed from: d  reason: collision with root package name */
    private MultiFactorAuthenticationContinuation f5109d;

    /* renamed from: e  reason: collision with root package name */
    private Context f5110e;

    /* renamed from: f  reason: collision with root package name */
    private Activity f5111f;

    /* renamed from: g  reason: collision with root package name */
    private String f5112g;

    /* renamed from: h  reason: collision with root package name */
    private String f5113h;

    /* renamed from: i  reason: collision with root package name */
    private String f5114i;

    /* renamed from: j  reason: collision with root package name */
    private CognitoUserPool f5115j;

    /* renamed from: k  reason: collision with root package name */
    private CognitoUserSession f5116k;

    /* renamed from: l  reason: collision with root package name */
    private AWSConfiguration f5117l;

    /* renamed from: m  reason: collision with root package name */
    private ForgotPasswordHandler f5118m = new ForgotPasswordHandler() { // from class: com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider.1
        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler
        public void a(ForgotPasswordContinuation forgotPasswordContinuation) {
            CognitoUserPoolsSignInProvider.this.f5108c = forgotPasswordContinuation;
            CognitoUserPoolsSignInProvider.this.f5111f.startActivityForResult(new Intent(CognitoUserPoolsSignInProvider.this.f5110e, ForgotPasswordActivity.class), RequestCodes.FORGOT_PASSWORD_REQUEST_CODE.value);
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler
        public void onFailure(Exception exc) {
            String w10;
            Log.e(CognitoUserPoolsSignInProvider.f5102p, "Password change failed.", exc);
            if (exc instanceof InvalidParameterException) {
                w10 = CognitoUserPoolsSignInProvider.this.f5111f.getString(R$string.f5214f);
            } else {
                w10 = CognitoUserPoolsSignInProvider.w(exc);
            }
            Activity activity = CognitoUserPoolsSignInProvider.this.f5111f;
            String string = CognitoUserPoolsSignInProvider.this.f5111f.getString(R$string.f5230v);
            ViewHelper.a(activity, string, CognitoUserPoolsSignInProvider.this.f5111f.getString(R$string.f5213e) + " " + w10);
        }
    };

    /* renamed from: n  reason: collision with root package name */
    private GenericHandler f5119n = new GenericHandler() { // from class: com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider.2
    };

    /* renamed from: o  reason: collision with root package name */
    private AuthenticationHandler f5120o = new AuthenticationHandler() { // from class: com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider.4
        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void a(ChallengeContinuation challengeContinuation) {
            if (challengeContinuation instanceof NewPasswordContinuation) {
                CognitoUserPoolsSignInProvider.this.f5107b = (NewPasswordContinuation) challengeContinuation;
                CognitoUserPoolsSignInProvider.this.f5111f.startActivityForResult(new Intent(CognitoUserPoolsSignInProvider.this.f5110e, ForceChangePasswordActivity.class), RequestCodes.FORCE_CHANGE_PASSWORD_REQUEST_CODE.value);
                return;
            }
            throw new UnsupportedOperationException("Not supported in this sample.");
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void b(MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation) {
            CognitoUserPoolsSignInProvider.this.f5109d = multiFactorAuthenticationContinuation;
            CognitoUserPoolsSignInProvider.this.f5111f.startActivityForResult(new Intent(CognitoUserPoolsSignInProvider.this.f5110e, MFAActivity.class), RequestCodes.MFA_REQUEST_CODE.value);
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void c(AuthenticationContinuation authenticationContinuation, String str) {
            if (CognitoUserPoolsSignInProvider.this.f5112g != null && CognitoUserPoolsSignInProvider.this.f5113h != null) {
                authenticationContinuation.g(new AuthenticationDetails(CognitoUserPoolsSignInProvider.this.f5112g, CognitoUserPoolsSignInProvider.this.f5113h, null));
                authenticationContinuation.f();
            }
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void d(CognitoUserSession cognitoUserSession, CognitoDevice cognitoDevice) {
            String str = CognitoUserPoolsSignInProvider.f5102p;
            Log.i(str, "Logged in. " + cognitoUserSession.b());
            CognitoUserPoolsSignInProvider.this.f5116k = cognitoUserSession;
            CognitoUserPoolsSignInProvider.t(CognitoUserPoolsSignInProvider.this);
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void onFailure(Exception exc) {
            Log.e(CognitoUserPoolsSignInProvider.f5102p, "Failed to login.", exc);
            if (exc instanceof UserNotConfirmedException) {
                CognitoUserPoolsSignInProvider.this.A();
                return;
            }
            if (exc instanceof UserNotFoundException) {
                CognitoUserPoolsSignInProvider.this.f5111f.getString(R$string.f5233y);
            } else if (exc instanceof NotAuthorizedException) {
                CognitoUserPoolsSignInProvider.this.f5111f.getString(R$string.f5212d);
            } else {
                CognitoUserPoolsSignInProvider.w(exc);
            }
            CognitoUserPoolsSignInProvider.t(CognitoUserPoolsSignInProvider.this);
        }
    };

    /* loaded from: classes2.dex */
    private static class RefreshSessionAuthenticationHandler implements AuthenticationHandler {

        /* renamed from: a  reason: collision with root package name */
        private CognitoUserSession f5130a;

        private RefreshSessionAuthenticationHandler() {
            this.f5130a = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CognitoUserSession f() {
            return this.f5130a;
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void a(ChallengeContinuation challengeContinuation) {
            Log.wtf(CognitoUserPoolsSignInProvider.f5102p, "Refresh flow can not trigger request for authentication challenge.");
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void b(MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation) {
            Log.wtf(CognitoUserPoolsSignInProvider.f5102p, "Refresh flow can not trigger request for MFA code.");
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void c(AuthenticationContinuation authenticationContinuation, String str) {
            Log.d(CognitoUserPoolsSignInProvider.f5102p, "Can't refresh the session silently, due to authentication details needed.");
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void d(CognitoUserSession cognitoUserSession, CognitoDevice cognitoDevice) {
            this.f5130a = cognitoUserSession;
        }

        @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
        public void onFailure(Exception exc) {
            Log.e(CognitoUserPoolsSignInProvider.f5102p, "Can't refresh session.", exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum RequestCodes {
        FORGOT_PASSWORD_REQUEST_CODE(10650),
        SIGN_UP_REQUEST_CODE(10651),
        MFA_REQUEST_CODE(10652),
        VERIFICATION_REQUEST_CODE(10653),
        FORCE_CHANGE_PASSWORD_REQUEST_CODE(10654);
        
        public final int value;

        RequestCodes(int i10) {
            this.value = i10;
        }

        static RequestCodes valueOf(int i10) {
            RequestCodes[] values;
            Log.e(CognitoUserPoolsSignInProvider.f5102p, "valueOf: " + i10, new RuntimeException(""));
            for (RequestCodes requestCodes : values()) {
                Log.e(CognitoUserPoolsSignInProvider.f5102p, "valueOf: compare " + requestCodes.value);
                if (i10 == requestCodes.value) {
                    return requestCodes;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        this.f5115j.f(this.f5112g).S(new VerificationHandler() { // from class: com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider.3
            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler
            public void a(CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails) {
                CognitoUserPoolsSignInProvider.this.C();
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler
            public void onFailure(Exception exc) {
                CognitoUserPoolsSignInProvider.t(CognitoUserPoolsSignInProvider.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        Intent intent = new Intent(this.f5110e, SignUpConfirmActivity.class);
        intent.putExtra("username", this.f5112g);
        intent.putExtra("destination", this.f5106a);
        this.f5111f.startActivityForResult(intent, RequestCodes.VERIFICATION_REQUEST_CODE.value);
    }

    static /* synthetic */ SignInProviderResultHandler t(CognitoUserPoolsSignInProvider cognitoUserPoolsSignInProvider) {
        cognitoUserPoolsSignInProvider.getClass();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int v() {
        return f5103q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String w(Exception exc) {
        String localizedMessage = exc.getLocalizedMessage();
        if (localizedMessage == null) {
            return exc.getMessage();
        }
        int indexOf = localizedMessage.indexOf("(Service");
        if (indexOf == -1) {
            return localizedMessage;
        }
        return localizedMessage.substring(0, indexOf);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String x() {
        return f5105s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean z() {
        return f5104r;
    }

    protected void B() {
        this.f5115j.f(this.f5112g).E(this.f5120o);
    }

    @Override // com.amazonaws.mobile.auth.core.IdentityProvider
    public void a(Context context, AWSConfiguration aWSConfiguration) {
        this.f5110e = context;
        this.f5117l = aWSConfiguration;
        Log.d(f5102p, "Initializing Cognito User Pools");
        this.f5115j = new CognitoUserPool(context, aWSConfiguration);
        this.f5114i = "cognito-idp." + y("Region") + ".amazonaws.com/" + this.f5115j.h();
    }

    @Override // com.amazonaws.mobile.auth.core.signin.SignInProvider
    public View.OnClickListener b(Activity activity, View view, SignInProviderResultHandler signInProviderResultHandler) {
        this.f5111f = activity;
        final UserPoolSignInView userPoolSignInView = (UserPoolSignInView) activity.findViewById(R$id.f5203r);
        f5103q = userPoolSignInView.getBackgroundColor();
        f5105s = userPoolSignInView.getFontFamily();
        f5104r = userPoolSignInView.b();
        userPoolSignInView.getSignUpTextView().setOnClickListener(new View.OnClickListener() { // from class: com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SignUpActivity.b(CognitoUserPoolsSignInProvider.this.f5111f, RequestCodes.SIGN_UP_REQUEST_CODE.value);
            }
        });
        userPoolSignInView.getForgotPasswordTextView().setOnClickListener(new View.OnClickListener() { // from class: com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CognitoUserPoolsSignInProvider.this.f5112g = userPoolSignInView.getEnteredUserName();
                if (CognitoUserPoolsSignInProvider.this.f5112g.length() < 1) {
                    Log.w(CognitoUserPoolsSignInProvider.f5102p, "Missing username.");
                    ViewHelper.a(CognitoUserPoolsSignInProvider.this.f5111f, CognitoUserPoolsSignInProvider.this.f5111f.getString(R$string.f5231w), "Missing username.");
                    return;
                }
                CognitoUserPoolsSignInProvider.this.f5115j.f(CognitoUserPoolsSignInProvider.this.f5112g).w(CognitoUserPoolsSignInProvider.this.f5118m);
            }
        });
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                CognitoUserPoolsSignInProvider.this.f5112g = userPoolSignInView.getEnteredUserName();
                CognitoUserPoolsSignInProvider.this.f5113h = userPoolSignInView.getEnteredPassword();
                CognitoUserPoolsSignInProvider.this.B();
            }
        };
        view.setOnClickListener(onClickListener);
        return onClickListener;
    }

    @Override // com.amazonaws.mobile.auth.core.IdentityProvider
    public String c() {
        return "Amazon Cognito Your User Pools";
    }

    @Override // com.amazonaws.mobile.auth.core.IdentityProvider
    public boolean d() {
        CognitoUserSession cognitoUserSession = this.f5116k;
        if (cognitoUserSession != null && cognitoUserSession.e()) {
            return true;
        }
        RefreshSessionAuthenticationHandler refreshSessionAuthenticationHandler = new RefreshSessionAuthenticationHandler();
        this.f5115j.c().C(refreshSessionAuthenticationHandler);
        if (refreshSessionAuthenticationHandler.f() != null) {
            this.f5116k = refreshSessionAuthenticationHandler.f();
            Log.i(f5102p, "refreshUserSignInState: Signed in with Cognito.");
            return true;
        }
        Log.i(f5102p, "refreshUserSignInState: Not signed in with Cognito.");
        this.f5116k = null;
        return false;
    }

    @Override // com.amazonaws.mobile.auth.core.IdentityProvider
    public String e() {
        return this.f5114i;
    }

    @Override // com.amazonaws.mobile.auth.core.IdentityProvider
    public String getToken() {
        CognitoUserSession cognitoUserSession = this.f5116k;
        if (cognitoUserSession == null) {
            return null;
        }
        return cognitoUserSession.b().c();
    }

    protected String y(String str) {
        try {
            return this.f5117l.e("CognitoUserPool").getString(str);
        } catch (JSONException e10) {
            throw new IllegalArgumentException("Cannot find the CognitoUserPool " + str + " from the AWSConfiguration file.", e10);
        }
    }
}
