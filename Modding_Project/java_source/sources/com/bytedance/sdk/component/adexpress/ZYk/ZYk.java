package com.bytedance.sdk.component.adexpress.ZYk;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.ZYk.kkU;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
/* loaded from: classes3.dex */
public class ZYk implements kkU {
    private PiB Pfn;
    private com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f12639ba;
    private so ex;
    private Context oJ;
    private ThemeStatusBroadcastReceiver tB;

    public ZYk(Context context, PiB piB, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.dynamic.Pfn.so soVar, so soVar2, com.bytedance.sdk.component.adexpress.dynamic.ba.oJ oJVar, com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ oJVar2) {
        this.oJ = context;
        this.Pfn = piB;
        this.tB = themeStatusBroadcastReceiver;
        this.ex = soVar2;
        if (oJVar2 != null) {
            this.ZYk = oJVar2;
        } else {
            this.ZYk = new com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ(context, themeStatusBroadcastReceiver, z10, soVar, piB, oJVar);
        }
        this.ZYk.oJ(this.ex);
        if (soVar instanceof com.bytedance.sdk.component.adexpress.dynamic.Pfn.cFZ) {
            this.f12639ba = 3;
        } else {
            this.f12639ba = 2;
        }
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ex ZYk() {
        com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null) {
            return oJVar.ex();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public boolean oJ(final kkU.oJ oJVar) {
        this.Pfn.Pfn().oJ(this.f12639ba);
        this.ZYk.oJ(new cFZ() { // from class: com.bytedance.sdk.component.adexpress.ZYk.ZYk.1
            @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
            public void oJ(View view, WcQ wcQ) {
                if (oJVar.tB()) {
                    return;
                }
                ZYk.this.Pfn.Pfn().Pfn(ZYk.this.f12639ba);
                ZYk.this.Pfn.Pfn().ba(ZYk.this.f12639ba);
                ZYk.this.Pfn.Pfn().kkU();
                awB ZYk = oJVar.ZYk();
                if (ZYk == null) {
                    return;
                }
                ZYk.oJ(ZYk.this.ZYk, wcQ);
                oJVar.oJ(true);
            }

            @Override // com.bytedance.sdk.component.adexpress.ZYk.cFZ
            public void oJ(int i10, String str) {
                ZYk.this.Pfn.Pfn().oJ(ZYk.this.f12639ba, i10, str, oJVar.ZYk(ZYk.this));
                if (oJVar.ZYk(ZYk.this)) {
                    oJVar.oJ(ZYk.this);
                    return;
                }
                awB ZYk = oJVar.ZYk();
                if (ZYk == null) {
                    return;
                }
                ZYk.a_(i10);
            }
        });
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.kkU
    public void oJ() {
        com.bytedance.sdk.component.adexpress.dynamic.oJ.oJ oJVar = this.ZYk;
        if (oJVar != null) {
            oJVar.ZYk();
        }
    }
}
