package com.bytedance.sdk.openadsdk.core.so;

import android.view.View;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.ofl;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class oq extends com.bytedance.sdk.component.adexpress.ZYk.oJ<oJ> {
    private com.bytedance.sdk.component.adexpress.ZYk.cFZ Pfn;
    private oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final com.bytedance.sdk.component.adexpress.ZYk.PiB f13277ba;
    private com.bytedance.sdk.component.adexpress.ZYk.tB ex;
    AtomicBoolean oJ = new AtomicBoolean(false);
    private final View tB;

    public oq(View view, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.component.adexpress.ZYk.PiB piB) {
        this.tB = view;
        this.f13277ba = piB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ZYk() {
        float realWidth;
        if (this.oJ.get()) {
            return;
        }
        com.bytedance.sdk.component.adexpress.ZYk.tB tBVar = this.ex;
        if (tBVar != null && tBVar.oJ((QSm) this.tB, 0)) {
            this.f13277ba.Pfn().cFZ();
            oJ oJVar = (oJ) this.tB.findViewWithTag("tt_express_backup_fl_tag_26");
            this.ZYk = oJVar;
            if (oJVar != null) {
                com.bytedance.sdk.component.adexpress.ZYk.WcQ wcQ = new com.bytedance.sdk.component.adexpress.ZYk.WcQ();
                oJ oJVar2 = this.ZYk;
                float f10 = 0.0f;
                if (oJVar2 == null) {
                    realWidth = 0.0f;
                } else {
                    realWidth = oJVar2.getRealWidth();
                }
                oJ oJVar3 = this.ZYk;
                if (oJVar3 != null) {
                    f10 = oJVar3.getRealHeight();
                }
                wcQ.oJ(true);
                wcQ.oJ(realWidth);
                wcQ.ZYk(f10);
                this.Pfn.oJ(this.ZYk, wcQ);
                return;
            }
            this.Pfn.oJ(107, "backupview is null");
            return;
        }
        this.Pfn.oJ(107, "backup false");
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.cFZ cfz) {
        this.Pfn = cfz;
        ofl.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.so.oq.1
            @Override // java.lang.Runnable
            public void run() {
                oq.this.ZYk();
            }
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.ex
    /* renamed from: oJ */
    public oJ Pfn() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.oJ
    public void oJ(com.bytedance.sdk.component.adexpress.ZYk.tB tBVar) {
        this.ex = tBVar;
    }
}
