package com.amazonaws.mobile.auth.userpools;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
/* loaded from: classes2.dex */
public class SignUpConfirmActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    private static final String f5268b = "SignUpConfirmActivity";

    /* renamed from: a  reason: collision with root package name */
    private SignUpConfirmView f5269a;

    public void confirmAccount(View view) {
        String obj = this.f5269a.getUserNameEditText().getText().toString();
        String obj2 = this.f5269a.getConfirmCodeEditText().getText().toString();
        String str = f5268b;
        Log.d(str, "username = " + obj);
        Log.d(str, "verificationCode = " + obj2);
        Intent intent = new Intent();
        intent.putExtra("username", obj);
        intent.putExtra("verification_code", obj2);
        setResult(-1, intent);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.f5208e);
        String stringExtra = getIntent().getStringExtra("username");
        String stringExtra2 = getIntent().getStringExtra("destination");
        SignUpConfirmView signUpConfirmView = (SignUpConfirmView) findViewById(R$id.f5199n);
        this.f5269a = signUpConfirmView;
        signUpConfirmView.getUserNameEditText().setText(stringExtra);
        this.f5269a.getConfirmCodeEditText().requestFocus();
        ((TextView) findViewById(R$id.f5187b)).setText(getString(R$string.f5226r) + "\n" + stringExtra2);
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(2, 1);
    }
}
