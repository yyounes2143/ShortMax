package com.amazonaws.mobile.auth.userpools;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.autofill.HintConstants;
import com.amazonaws.mobile.auth.core.internal.util.ViewHelper;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserAttributes;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
/* loaded from: classes2.dex */
public class SignUpActivity extends Activity {

    /* renamed from: c  reason: collision with root package name */
    private static final String f5261c = "SignUpActivity";

    /* renamed from: a  reason: collision with root package name */
    private SignUpView f5262a;

    /* renamed from: b  reason: collision with root package name */
    private CognitoUserPool f5263b;

    public static void b(Activity activity, int i10) {
        activity.startActivityForResult(new Intent(activity, SignUpActivity.class), i10);
    }

    protected void a(String str) {
        String string = getString(R$string.f5232x);
        ViewHelper.a(this, string, getString(R$string.f5227s) + " " + str);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.f5207d);
        this.f5262a = (SignUpView) findViewById(R$id.f5202q);
        Context applicationContext = getApplicationContext();
        this.f5263b = new CognitoUserPool(applicationContext, new AWSConfiguration(applicationContext));
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(2, 1);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    public void signUp(View view) {
        final String userName = this.f5262a.getUserName();
        final String password = this.f5262a.getPassword();
        String givenName = this.f5262a.getGivenName();
        String email = this.f5262a.getEmail();
        String phone = this.f5262a.getPhone();
        String str = f5261c;
        Log.d(str, "username = " + userName);
        Log.d(str, "given_name = " + givenName);
        Log.d(str, "email = " + email);
        Log.d(str, "phone = " + phone);
        if (userName.isEmpty()) {
            a(getString(R$string.f5229u));
        } else if (password.length() < 6) {
            a(getString(R$string.f5215g));
        } else {
            CognitoUserAttributes cognitoUserAttributes = new CognitoUserAttributes();
            cognitoUserAttributes.a("given_name", givenName);
            cognitoUserAttributes.a("email", email);
            if (!phone.isEmpty()) {
                cognitoUserAttributes.a("phone_number", phone);
            }
            final AlertDialog show = new AlertDialog.Builder(this).setTitle(getString(R$string.f5228t)).setMessage(getString(R$string.f5217i)).setNeutralButton(17039370, (DialogInterface.OnClickListener) null).show();
            this.f5263b.k(userName, password, cognitoUserAttributes, null, new SignUpHandler() { // from class: com.amazonaws.mobile.auth.userpools.SignUpActivity.1
                @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler
                public void a(CognitoUser cognitoUser, SignUpResult signUpResult) {
                    show.dismiss();
                    Intent intent = new Intent();
                    intent.putExtra("username", userName);
                    intent.putExtra(HintConstants.AUTOFILL_HINT_PASSWORD, password);
                    intent.putExtra("isSignUpConfirmed", signUpResult.d());
                    intent.putExtra("destination", signUpResult.b().e());
                    SignUpActivity.this.setResult(-1, intent);
                    SignUpActivity.this.finish();
                }

                @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler
                public void onFailure(Exception exc) {
                    String str2;
                    show.dismiss();
                    SignUpActivity signUpActivity = SignUpActivity.this;
                    if (exc.getLocalizedMessage() != null) {
                        str2 = CognitoUserPoolsSignInProvider.w(exc);
                    } else {
                        str2 = "";
                    }
                    signUpActivity.a(str2);
                }
            });
        }
    }
}
