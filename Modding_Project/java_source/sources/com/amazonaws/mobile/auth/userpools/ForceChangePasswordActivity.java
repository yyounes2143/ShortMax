package com.amazonaws.mobile.auth.userpools;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.autofill.HintConstants;
/* loaded from: classes2.dex */
public class ForceChangePasswordActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private ForceChangePasswordView f5131a;

    public void forceChangePassword(View view) {
        String password = this.f5131a.getPassword();
        Intent intent = new Intent();
        intent.putExtra(HintConstants.AUTOFILL_HINT_PASSWORD, password);
        setResult(-1, intent);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.f5204a);
        this.f5131a = (ForceChangePasswordView) findViewById(R$id.f5190e);
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(2, 1);
    }
}
