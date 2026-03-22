package com.applovin.impl;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
/* loaded from: classes2.dex */
public class a2 extends u1 {
    public a2(com.applovin.impl.sdk.ad.b bVar, Activity activity, com.applovin.impl.sdk.k kVar) {
        super(bVar, activity, kVar);
    }

    @Override // com.applovin.impl.u1
    public /* bridge */ /* synthetic */ void a(com.applovin.impl.adview.g gVar) {
        super.a(gVar);
    }

    @Override // com.applovin.impl.u1
    public /* bridge */ /* synthetic */ void a(View view) {
        super.a(view);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x025a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.widget.ImageView r17, com.applovin.impl.adview.g r18, final com.applovin.impl.adview.l r19, com.applovin.impl.a r20, android.widget.ProgressBar r21, com.applovin.impl.i0 r22, android.view.View r23, android.view.View r24, com.applovin.adview.AppLovinAdView r25, com.applovin.impl.adview.k r26, android.widget.ImageView r27, android.view.ViewGroup r28) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.a2.a(android.widget.ImageView, com.applovin.impl.adview.g, com.applovin.impl.adview.l, com.applovin.impl.a, android.widget.ProgressBar, com.applovin.impl.i0, android.view.View, android.view.View, com.applovin.adview.AppLovinAdView, com.applovin.impl.adview.k, android.widget.ImageView, android.view.ViewGroup):void");
    }

    public void a(com.applovin.impl.adview.g gVar, com.applovin.impl.adview.k kVar, View view, ProgressBar progressBar) {
        if (view != null) {
            view.setVisibility(0);
        }
        s.a(this.f10105d, view);
        if (gVar != null) {
            a(this.f10104c.o(), (this.f10104c.E0() ? 3 : 5) | 48, gVar);
        }
        if (progressBar != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 20, ((Boolean) this.f10102a.a(v4.f10316o2)).booleanValue() ? 80 : 48);
            layoutParams.setMargins(0, 0, 0, ((Integer) this.f10102a.a(v4.f10324p2)).intValue());
            this.f10105d.addView(progressBar, layoutParams);
        }
        if (kVar != null) {
            this.f10105d.addView(kVar, this.f10106e);
        }
    }
}
