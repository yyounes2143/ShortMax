package com.bytedance.sdk.openadsdk.ex.oJ;

import com.bytedance.sdk.openadsdk.core.si;
import com.bytedance.sdk.openadsdk.utils.Xe;
import com.bytedance.sdk.openadsdk.utils.ofl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class BTZ implements com.bytedance.sdk.openadsdk.awB.tB.ZYk {
    public static final BTZ oJ = new BTZ();

    private BTZ() {
    }

    @Override // com.bytedance.sdk.openadsdk.awB.tB.ZYk
    public void oJ(com.bytedance.sdk.openadsdk.awB.ZYk zYk) {
        oJ(zYk, false);
    }

    @Override // com.bytedance.sdk.openadsdk.awB.tB.ZYk
    public void oJ(final com.bytedance.sdk.openadsdk.awB.ZYk zYk, final boolean z10) {
        oJ(new com.bytedance.sdk.component.so.so("uploadLogEvent") { // from class: com.bytedance.sdk.openadsdk.ex.oJ.BTZ.1
            @Override // java.lang.Runnable
            public void run() {
                byte b10;
                try {
                    com.bytedance.sdk.openadsdk.awB.oJ.tB logStats = zYk.getLogStats();
                    if (logStats == null) {
                        return;
                    }
                    com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ oJVar = new com.bytedance.sdk.component.ba.oJ.ex.oJ.oJ(Xe.oJ(), logStats.oJ());
                    oJVar.tB((byte) 0);
                    if (z10) {
                        b10 = 2;
                    } else {
                        b10 = 3;
                    }
                    oJVar.ZYk(b10);
                    oJVar.oJ((byte) 1);
                    if (com.bytedance.sdk.component.ba.oJ.ZYk.ZYk()) {
                        ex.oJ(si.oJ(), com.bytedance.sdk.openadsdk.multipro.ZYk.tB());
                    }
                    com.bytedance.sdk.component.ba.oJ.ZYk.oJ(oJVar);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void oJ(com.bytedance.sdk.component.so.so soVar) {
        if (soVar == null) {
            return;
        }
        if (!ofl.cFZ()) {
            ofl.ZYk(soVar, 5);
        } else {
            soVar.run();
        }
    }
}
