package com.bytedance.sdk.openadsdk.core.so;

import android.content.Context;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* loaded from: classes3.dex */
public class ba extends com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ {
    private com.bytedance.sdk.component.adexpress.ZYk.cFZ ZYk;
    private final Runnable ex;
    private final com.bytedance.sdk.component.adexpress.ZYk.PiB oJ;
    private final com.bytedance.sdk.component.so.so tB;

    public ba(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.dynamic.Pfn.so soVar, com.bytedance.sdk.component.adexpress.ZYk.PiB piB, com.bytedance.sdk.component.adexpress.dynamic.ba.oJ oJVar) {
        super(context, themeStatusBroadcastReceiver, z10, soVar, piB, oJVar);
        this.tB = new com.bytedance.sdk.component.so.so("dynamic_render_template") { // from class: com.bytedance.sdk.openadsdk.core.so.ba.1
            @Override // java.lang.Runnable
            public void run() {
                ba.this.oJ.tB();
                com.bytedance.sdk.openadsdk.core.WcQ.tB().post(ba.this.ex);
            }
        };
        this.ex = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.ba.2
            @Override // java.lang.Runnable
            public void run() {
                if (ba.this.ZYk != null) {
                    ba baVar = ba.this;
                    ba.super.oJ(baVar.ZYk);
                }
            }
        };
        this.oJ = piB;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ
    public void ZYk() {
        super.ZYk();
        com.bytedance.sdk.openadsdk.core.WcQ.tB().removeCallbacks(this.ex);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ, com.bytedance.sdk.component.adexpress.ZYk.ex
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.cFZ cfz) {
        this.ZYk = cfz;
        ofl.ZYk(this.tB);
    }
}
