package com.applovin.impl;

import android.app.Activity;
import android.view.ViewGroup;
import com.applovin.adview.AppLovinAdView;
/* loaded from: classes2.dex */
public class x1 extends u1 {
    public x1(com.applovin.impl.sdk.ad.b bVar, Activity activity, com.applovin.impl.sdk.k kVar) {
        super(bVar, activity, kVar);
    }

    @Override // com.applovin.impl.u1
    public /* bridge */ /* synthetic */ void a(com.applovin.impl.adview.g gVar) {
        super.a(gVar);
    }

    public void a(com.applovin.impl.adview.g gVar, com.applovin.impl.adview.k kVar, AppLovinAdView appLovinAdView, ViewGroup viewGroup) {
        this.f10105d.addView(appLovinAdView);
        if (gVar != null) {
            a(this.f10104c.o(), (this.f10104c.E0() ? 3 : 5) | 48, gVar);
        }
        if (kVar != null) {
            this.f10105d.addView(kVar, this.f10106e);
        }
        if (viewGroup != null) {
            viewGroup.addView(this.f10105d);
        } else {
            this.f10103b.setContentView(this.f10105d);
        }
    }
}
