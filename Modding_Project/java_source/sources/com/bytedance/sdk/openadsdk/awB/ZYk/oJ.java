package com.bytedance.sdk.openadsdk.awB.ZYk;

import com.bytedance.sdk.component.so.tB;
import com.bytedance.sdk.openadsdk.awB.ZYk;
import com.bytedance.sdk.openadsdk.awB.oJ.ex;
import com.bytedance.sdk.openadsdk.core.si;
/* loaded from: classes3.dex */
public class oJ implements tB {
    @Override // com.bytedance.sdk.component.so.tB
    public void oJ(final com.bytedance.sdk.component.so.ZYk.oJ oJVar) {
        com.bytedance.sdk.openadsdk.awB.tB.oJ();
        com.bytedance.sdk.openadsdk.awB.tB.oJ("stats_sdk_thread_num", false, new ZYk() { // from class: com.bytedance.sdk.openadsdk.awB.ZYk.oJ.1
            @Override // com.bytedance.sdk.openadsdk.awB.ZYk
            public com.bytedance.sdk.openadsdk.awB.oJ.tB getLogStats() throws Exception {
                com.bytedance.sdk.component.so.ZYk.oJ oJVar2;
                if (!si.ex().bgF() || (oJVar2 = oJVar) == null || oJVar2.oJ() == null) {
                    return null;
                }
                return ex.ZYk().oJ("stats_sdk_thread_num").ZYk(oJVar.oJ().toString());
            }
        });
    }
}
