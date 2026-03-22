package com.bytedance.sdk.openadsdk.component.jFA;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.so.Pfn;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.eZI;
import com.bytedance.sdk.openadsdk.utils.cdg;
/* loaded from: classes3.dex */
public class Pfn extends tB {
    oJ PiB;

    /* loaded from: classes3.dex */
    public interface oJ {
        void oJ(View view, int i10);
    }

    public Pfn(Context context, cY cYVar) {
        super(context);
        oJ(context, cYVar);
    }

    private void oJ(Context context, cY cYVar) {
        com.bytedance.sdk.openadsdk.core.so.Pfn pfn = new com.bytedance.sdk.openadsdk.core.so.Pfn(context);
        com.bytedance.sdk.openadsdk.core.so.ex.oJ().tB(pfn);
        pfn.oJ(cYVar, new Pfn.ZYk() { // from class: com.bytedance.sdk.openadsdk.component.jFA.Pfn.1
            @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
            public View ZYk() {
                return Pfn.this;
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
            public void oJ(int i10, int i11) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
            public View oJ() {
                cFZ cfz = Pfn.this.f12986so;
                if (cfz != null) {
                    return cfz.getTopDislike();
                }
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
            public void oJ(View view, int i10) {
                oJ oJVar = Pfn.this.PiB;
                if (oJVar != null) {
                    oJVar.oJ(view, i10);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.so.Pfn.ZYk
            public void k_() {
            }
        }, "open_ad");
        addView(pfn, new ViewGroup.LayoutParams(-1, -1));
        pfn.QSm();
        int ZYk = cdg.ZYk(context, 9.0f);
        int ZYk2 = cdg.ZYk(context, 10.0f);
        this.ex = PAGLogoView.createPAGLogoViewByMaterial(context, cYVar);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, cdg.ZYk(context, 14.0f));
        layoutParams.leftMargin = ZYk2;
        layoutParams.bottomMargin = ZYk2;
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        addView(this.ex, layoutParams);
        com.bytedance.sdk.openadsdk.core.widget.tB tBVar = new com.bytedance.sdk.openadsdk.core.widget.tB(context);
        this.BTZ = tBVar;
        tBVar.setPadding(ZYk, 0, ZYk, 0);
        this.BTZ.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(cdg.ZYk(context, 32.0f), cdg.ZYk(context, 14.0f));
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(0, 0, ZYk2, ZYk2);
        addView(this.BTZ, layoutParams2);
        View view = this.f12986so;
        if (view != null) {
            addView(view);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public com.bytedance.sdk.openadsdk.core.Pfn.ex getAdIconView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public com.bytedance.sdk.openadsdk.core.Pfn.so getAdTitleTextView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public eZI getScoreBar() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.jFA.tB
    public View getUserInfo() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.PiB = null;
    }

    public void setRenderListener(oJ oJVar) {
        this.PiB = oJVar;
    }
}
