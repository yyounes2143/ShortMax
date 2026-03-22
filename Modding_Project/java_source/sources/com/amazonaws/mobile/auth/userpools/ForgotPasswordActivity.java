package com.amazonaws.mobile.auth.userpools;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.autofill.HintConstants;
/* loaded from: classes2.dex */
public class ForgotPasswordActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    private static final String f5142b = "ForgotPasswordActivity";

    /* renamed from: a  reason: collision with root package name */
    private ForgotPasswordView f5143a;

    public void forgotPassword(View view) {
        String password = this.f5143a.getPassword();
        String verificationCode = this.f5143a.getVerificationCode();
        String str = f5142b;
        Log.d(str, "verificationCode = " + verificationCode);
        Intent intent = new Intent();
        intent.putExtra(HintConstants.AUTOFILL_HINT_PASSWORD, password);
        intent.putExtra("verification_code", verificationCode);
        setResult(-1, intent);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.f5205b);
        this.f5143a = (ForgotPasswordView) findViewById(R$id.f5193h);
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(2, 1);
    }
}
