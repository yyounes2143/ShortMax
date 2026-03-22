package com.bytedance.sdk.openadsdk.QSm.oJ;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.BTZ.ba;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class ZYk extends oJ {
    private FrameLayout Pfn;
    private volatile boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f12834ba;
    private final FrameLayout ex;
    private ba tB;

    public ZYk(Context context, cY cYVar, int i10, boolean z10, FrameLayout frameLayout, String str) {
        super(context, cYVar, i10, z10, frameLayout);
        this.ex = frameLayout;
        this.f12834ba = str;
        ZYk(false);
        int tB = cdg.tB(context);
        int Pfn = cdg.Pfn(context);
        if (i10 == 1) {
            if (tB <= Pfn) {
                this.oJ.layout(0, 0, tB, Pfn);
                return;
            }
        } else if (i10 == 2) {
            if (tB > Pfn) {
                this.oJ.layout(0, 0, tB, Pfn);
                return;
            }
        } else {
            return;
        }
        this.oJ.layout(0, 0, Pfn, tB);
    }

    public void cFZ() {
        super.oJ(true, new ba() { // from class: com.bytedance.sdk.openadsdk.QSm.oJ.ZYk.1
            @Override // com.bytedance.sdk.openadsdk.BTZ.ba
            public void oJ() {
                if (ZYk.this.tB == null) {
                    ZYk.this.ZYk = true;
                } else {
                    ZYk.this.tB.oJ();
                }
            }
        });
    }

    public String so() {
        return this.f12834ba;
    }

    public void oJ(FrameLayout frameLayout, ba baVar) {
        this.Pfn = frameLayout;
        frameLayout.addView(this.ex);
        this.tB = baVar;
        if (this.ZYk) {
            this.tB.oJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.QSm.oJ.oJ
    public void oJ() {
        this.Pfn.setVisibility(0);
        super.oJ();
    }
}
