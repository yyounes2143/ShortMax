package com.bytedance.sdk.openadsdk.WcQ;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.bytedance.sdk.openadsdk.utils.eZI;
/* loaded from: classes3.dex */
public class Pfn extends kkU {
    private com.bytedance.sdk.openadsdk.core.Pfn.ex cFZ;

    /* renamed from: so  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.Pfn.so f12855so;

    public Pfn(Context context) {
        this(context, null);
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.so getTtBuDescTV() {
        return this.f12855so;
    }

    public com.bytedance.sdk.openadsdk.core.Pfn.ex getTtBuImg() {
        return this.cFZ;
    }

    @Override // com.bytedance.sdk.openadsdk.WcQ.kkU
    protected void oJ(Context context) {
        int ZYk = cdg.ZYk(context, 6.0f);
        setPadding(ZYk, ZYk, ZYk, ZYk);
        com.bytedance.sdk.openadsdk.core.Pfn.tB Pfn = Pfn(context);
        this.oJ = Pfn;
        Pfn.setId(eZI.hwh);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        int ZYk2 = cdg.ZYk(context, 26.0f);
        layoutParams.topMargin = ZYk2;
        this.oJ.setLayoutParams(layoutParams);
        addView(this.oJ);
        com.bytedance.sdk.openadsdk.core.Pfn.ex exVar = new com.bytedance.sdk.openadsdk.core.Pfn.ex(context);
        this.cFZ = exVar;
        exVar.setId(eZI.f13408ib);
        this.cFZ.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.topMargin = ZYk2;
        this.cFZ.setLayoutParams(layoutParams2);
        addView(this.cFZ);
        PAGLogoView so2 = so(context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 80;
        int ZYk3 = cdg.ZYk(context, 10.0f);
        layoutParams3.leftMargin = ZYk3;
        layoutParams3.topMargin = ZYk3;
        layoutParams3.bottomMargin = ZYk3;
        so2.setLayoutParams(layoutParams3);
        addView(so2);
        com.bytedance.sdk.openadsdk.core.Pfn.Pfn pfn = new com.bytedance.sdk.openadsdk.core.Pfn.Pfn(context);
        pfn.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        pfn.setOrientation(0);
        pfn.setGravity(17);
        addView(pfn);
        com.bytedance.sdk.openadsdk.core.Pfn.so soVar = new com.bytedance.sdk.openadsdk.core.Pfn.so(context);
        this.f12855so = soVar;
        soVar.setId(eZI.Qzd);
        this.f12855so.setEllipsize(TextUtils.TruncateAt.END);
        this.f12855so.setMaxLines(1);
        this.f12855so.setTextColor(-1);
        this.f12855so.setTextSize(2, 12.0f);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 1.0f;
        this.f12855so.setLayoutParams(layoutParams4);
        pfn.addView(this.f12855so);
    }

    public Pfn(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Pfn(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
