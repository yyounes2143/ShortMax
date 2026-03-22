package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.model.cY;
/* loaded from: classes3.dex */
public class tB extends BTZ {
    public tB(@NonNull Context context) {
        super(context);
        this.ZYk = false;
    }

    @Override // com.bytedance.sdk.openadsdk.common.BTZ
    public void oJ() {
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.tB.1
            @Override // java.lang.Runnable
            public void run() {
                tB tBVar = tB.this;
                if (tBVar.oJ != null) {
                    tBVar.setVisibility(0);
                }
            }
        });
    }

    public void oJ(cY cYVar, String str, int i10, String str2, long j10, boolean z10, int i11, long j11) {
        if (getVisibility() != 8) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, str, i10, str2, SystemClock.elapsedRealtime() - j10, z10, i11, j11);
            super.ZYk();
        }
    }
}
