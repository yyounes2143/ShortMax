package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
/* loaded from: classes3.dex */
public class UN extends ba implements com.bytedance.sdk.component.adexpress.dynamic.Pfn {
    boolean QSm;
    FrameLayout ZYk;
    TextView oJ;

    public UN(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context, dynamicRootView, soVar);
        this.QSm = false;
        View view = new View(context);
        this.awB = view;
        view.setTag(Integer.valueOf(getClickArea()));
        this.oJ = new TextView(context);
        this.ZYk = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 40.0f), (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(context, 15.0f));
        layoutParams.gravity = 8388693;
        layoutParams.rightMargin = 20;
        layoutParams.bottomMargin = 20;
        this.oJ.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(25.0f);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.oJ.setBackground(gradientDrawable);
        this.oJ.setTextSize(10.0f);
        this.oJ.setGravity(17);
        this.oJ.setTextColor(-1);
        this.oJ.setVisibility(8);
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            addView(this.ZYk, new FrameLayout.LayoutParams(-1, -1));
        }
        addView(this.oJ);
        addView(this.awB, getWidgetLayoutParams());
        if (!com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            addView(this.ZYk, getWidgetLayoutParams());
        }
        dynamicRootView.videoView = this.ZYk;
        dynamicRootView.setVideoListener(this);
    }

    private void tB(View view) {
        if (view == this.oJ || view == ((ba) this).RZ) {
            return;
        }
        try {
            if (((Integer) view.getTag(com.bytedance.sdk.component.adexpress.dynamic.oJ.f12709ba)).intValue() == 1) {
                return;
            }
        } catch (Throwable unused) {
        }
        int i10 = 0;
        view.setVisibility(0);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i10 < viewGroup.getChildCount()) {
                tB(viewGroup.getChildAt(i10));
                i10++;
            } else {
                return;
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn
    public boolean Pfn() {
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.ba, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.mu
    public boolean jFA() {
        super.jFA();
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = this.PiB; soVar != null; soVar = soVar.BTZ()) {
            d11 = (d11 + soVar.ba()) - soVar.ex();
            d10 = (d10 + soVar.cFZ()) - soVar.Pfn();
        }
        try {
            float f10 = (float) d11;
            int oJ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), f10);
            int oJ2 = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), f10 + this.Pfn);
            if (com.bytedance.sdk.component.adexpress.ex.ZYk.oJ(getContext())) {
                int dynamicWidth = ((Ry) this.WcQ.getChildAt(0)).getDynamicWidth();
                int i10 = dynamicWidth - oJ2;
                oJ2 = dynamicWidth - oJ;
                oJ = i10;
            }
            if (!"open_ad".equals(this.WcQ.getRenderRequest().ex())) {
                float f11 = (float) d10;
                ((Ry) this.WcQ.getChildAt(0)).oJ.oJ(oJ, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), f11), oJ2, (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(getContext(), f11 + this.f12677ba));
            } else {
                this.WcQ.videoView = this.ZYk;
            }
        } catch (Exception unused) {
        }
        this.WcQ.updateRenderInfoForVideo(d11, d10, this.Pfn, this.f12677ba, this.BTZ.awB());
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Pfn
    public void oJ() {
        this.oJ.setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.Pfn
    public void setTimeUpdate(int i10) {
        String str;
        String str2;
        if (this.PiB.kkU().Pfn().rg() && i10 > 0 && !this.QSm) {
            if (i10 >= 60) {
                str = "" + MBridgeConstans.ENDCARD_URL_TYPE_PL + (i10 / 60);
            } else {
                str = "00";
            }
            String str3 = str + ":";
            int i11 = i10 % 60;
            if (i11 > 9) {
                str2 = str3 + i11;
            } else {
                str2 = str3 + MBridgeConstans.ENDCARD_URL_TYPE_PL + i11;
            }
            this.oJ.setText(str2);
            this.oJ.setVisibility(0);
            return;
        }
        this.QSm = true;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            tB(getChildAt(i12));
        }
        this.oJ.setVisibility(8);
    }
}
