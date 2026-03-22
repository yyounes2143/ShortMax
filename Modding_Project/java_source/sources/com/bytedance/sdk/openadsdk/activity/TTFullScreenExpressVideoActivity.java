package com.bytedance.sdk.openadsdk.activity;

import android.os.Bundle;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class TTFullScreenExpressVideoActivity extends TTFullScreenVideoActivity {
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    public boolean jr() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    @Override // com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity, com.bytedance.sdk.openadsdk.core.BTZ.ex.ZYk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean oJ(long r10, boolean r12) {
        /*
            r9 = this;
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r9.ZYk
            com.bytedance.sdk.openadsdk.component.reward.view.kkU r0 = r0.f13026tb
            if (r0 == 0) goto L19
            com.bytedance.sdk.openadsdk.component.reward.view.ex r0 = r0.oJ()
            if (r0 == 0) goto L19
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r9.ZYk
            com.bytedance.sdk.openadsdk.component.reward.view.kkU r0 = r0.f13026tb
            com.bytedance.sdk.openadsdk.component.reward.view.ex r0 = r0.oJ()
            com.bytedance.sdk.openadsdk.ex.cFZ r0 = r0.getAdShowTime()
            goto L1e
        L19:
            com.bytedance.sdk.openadsdk.ex.cFZ r0 = new com.bytedance.sdk.openadsdk.ex.cFZ
            r0.<init>()
        L1e:
            com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk r1 = r9.tB
            if (r1 == 0) goto L38
            boolean r2 = r1 instanceof com.bytedance.sdk.openadsdk.component.reward.ZYk.so
            if (r2 == 0) goto L38
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r2 = r9.ZYk
            boolean r3 = r2.mwH
            if (r3 != 0) goto L38
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r2 = r2.cY
            com.bytedance.sdk.openadsdk.component.reward.ZYk.so r1 = (com.bytedance.sdk.openadsdk.component.reward.ZYk.so) r1
            android.widget.FrameLayout r1 = r1.Ln()
            r2.oJ(r1, r0)
            goto L45
        L38:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r1 = r9.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r2 = r1.cY
            com.bytedance.sdk.openadsdk.component.reward.view.kkU r1 = r1.f13026tb
            android.widget.FrameLayout r1 = r1.ZYk()
            r2.oJ(r1, r0)
        L45:
            java.util.HashMap r7 = new java.util.HashMap
            r7.<init>()
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r9.ZYk
            com.bytedance.sdk.openadsdk.component.reward.view.kkU r0 = r0.f13026tb
            if (r0 == 0) goto L80
            int r0 = r0.kkU()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r1 = "dynamic_show_type"
            r7.put(r1, r0)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r9.ZYk
            com.bytedance.sdk.openadsdk.component.reward.view.kkU r0 = r0.f13026tb
            r1 = 0
            org.json.JSONObject r0 = r0.oJ(r1)
            if (r0 == 0) goto L80
            java.util.Iterator r1 = r0.keys()
        L6c:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L80
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r0.get(r2)     // Catch: org.json.JSONException -> L6c
            r7.put(r2, r3)     // Catch: org.json.JSONException -> L6c
            goto L6c
        L80:
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r9.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r0 = r0.cY
            com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity$1 r1 = new com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity$1
            r1.<init>()
            r0.oJ(r1)
            com.bytedance.sdk.openadsdk.component.reward.oJ.oJ r0 = r9.ZYk
            com.bytedance.sdk.openadsdk.component.reward.oJ.eZI r3 = r0.cY
            com.bytedance.sdk.openadsdk.component.reward.ZYk.ZYk r8 = r9.tB
            r4 = r10
            r6 = r12
            boolean r10 = r3.oJ(r4, r6, r7, r8)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity.oJ(long, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity, com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Xe();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity
    protected void Pfn() {
    }
}
