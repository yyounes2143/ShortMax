package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.IUZ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.awB;
/* loaded from: classes3.dex */
public class TTAdActivity extends TTBaseActivity {
    private ZYk oJ;

    private void tB() {
        ZYk zYk = this.oJ;
        if (zYk == null) {
            super.onBackPressed();
        } else {
            zYk.ba();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected void ZYk() {
        tB();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity
    protected boolean oJ() {
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.oJ((Activity) this);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        tB();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        com.bytedance.sdk.openadsdk.oJ.Pfn.oJ ZYk = IUZ.oJ().ZYk();
        com.bytedance.sdk.openadsdk.oJ.tB.ZYk tB = IUZ.oJ().tB();
        cY oJ = com.bytedance.sdk.openadsdk.component.reward.oJ.ZYk.oJ(getIntent(), bundle, (com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk) null);
        if (oJ != null) {
            ZYk zYk = new ZYk(this, oJ);
            this.oJ = zYk;
            zYk.oJ(this, bundle, ZYk, tB);
            com.bytedance.sdk.openadsdk.utils.ZYk.oJ(oJ);
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.Pfn(this);
        }
        IUZ.oJ().oJ((com.bytedance.sdk.openadsdk.oJ.Pfn.oJ) null);
        IUZ.oJ().oJ((com.bytedance.sdk.openadsdk.oJ.tB.ZYk) null);
        awB.oJ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.tB(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.ZYk(this);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.oJ(this, bundle);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.oJ(this);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.ex(this);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        ZYk zYk = this.oJ;
        if (zYk != null) {
            zYk.oJ(z10);
        }
    }
}
