package com.applovin.impl;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.ad.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class u1 {

    /* renamed from: a  reason: collision with root package name */
    final com.applovin.impl.sdk.k f10102a;

    /* renamed from: b  reason: collision with root package name */
    final Activity f10103b;

    /* renamed from: c  reason: collision with root package name */
    final com.applovin.impl.sdk.ad.b f10104c;

    /* renamed from: d  reason: collision with root package name */
    final ViewGroup f10105d;

    /* renamed from: e  reason: collision with root package name */
    final FrameLayout.LayoutParams f10106e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(com.applovin.impl.sdk.ad.b bVar, Activity activity, com.applovin.impl.sdk.k kVar) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        this.f10106e = layoutParams;
        this.f10104c = bVar;
        this.f10102a = kVar;
        this.f10103b = activity;
        FrameLayout frameLayout = new FrameLayout(activity);
        this.f10105d = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        frameLayout.setLayoutParams(layoutParams);
    }

    public void a(View view) {
        this.f10105d.removeView(view);
    }

    public void a(com.applovin.impl.adview.g gVar) {
        if (gVar == null || gVar.getParent() != null) {
            return;
        }
        a(this.f10104c.o(), (this.f10104c.E0() ? 3 : 5) | 48, gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b.d dVar, int i10, com.applovin.impl.adview.g gVar) {
        gVar.a(dVar.f9569a, dVar.f9573e, dVar.f9572d, i10);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(gVar.getLayoutParams());
        int i11 = dVar.f9571c;
        layoutParams.setMargins(i11, dVar.f9570b, i11, 0);
        layoutParams.gravity = i10;
        this.f10105d.addView(gVar, layoutParams);
    }
}
