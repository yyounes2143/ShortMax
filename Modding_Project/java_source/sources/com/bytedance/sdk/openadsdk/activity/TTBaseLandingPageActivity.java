package com.bytedance.sdk.openadsdk.activity;

import android.os.SystemClock;
/* loaded from: classes3.dex */
public class TTBaseLandingPageActivity extends TTBaseActivity {
    private long ZYk;
    private long oJ;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        long j10 = this.oJ;
        if (j10 > 0) {
            com.bytedance.sdk.openadsdk.utils.Pfn.oJ(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.ZYk > 0) {
            this.oJ += SystemClock.elapsedRealtime() - this.ZYk;
            this.ZYk = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (com.bytedance.sdk.openadsdk.utils.Pfn.tB()) {
            this.ZYk = SystemClock.elapsedRealtime();
        }
    }
}
