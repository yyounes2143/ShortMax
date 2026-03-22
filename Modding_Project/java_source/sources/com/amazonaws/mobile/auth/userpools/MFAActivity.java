package com.amazonaws.mobile.auth.userpools;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
/* loaded from: classes2.dex */
public class MFAActivity extends Activity {

    /* renamed from: b  reason: collision with root package name */
    private static final String f5172b = "MFAActivity";

    /* renamed from: a  reason: collision with root package name */
    private MFAView f5173a;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.f5206c);
        this.f5173a = (MFAView) findViewById(R$id.f5196k);
        ((InputMethodManager) getSystemService("input_method")).toggleSoftInput(2, 1);
    }

    public void verify(View view) {
        String mFACode = this.f5173a.getMFACode();
        String str = f5172b;
        Log.d(str, "verificationCode = " + mFACode);
        Intent intent = new Intent();
        intent.putExtra("verification_code", mFACode);
        setResult(-1, intent);
        finish();
    }
}
