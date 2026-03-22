package com.applovin.impl;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.Animation;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes2.dex */
public class c8 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7716a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f7717b;

    /* renamed from: c  reason: collision with root package name */
    private final View f7718c;

    public c8(View view, com.applovin.impl.sdk.k kVar) {
        this.f7716a = kVar;
        this.f7717b = kVar.O();
        this.f7718c = view;
    }

    public long a(e3 e3Var) {
        long j10;
        if (com.applovin.impl.sdk.o.a()) {
            this.f7717b.a("ViewabilityTracker", "Checking visibility...");
        }
        Point b10 = o0.b(this.f7718c.getContext());
        if (!this.f7718c.isShown()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7717b.b("ViewabilityTracker", "View is hidden");
            }
            j10 = 2;
        } else {
            j10 = 0;
        }
        if (this.f7718c.getAlpha() < e3Var.d0()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7717b.b("ViewabilityTracker", "View is transparent");
            }
            j10 |= 4;
        }
        Animation animation = this.f7718c.getAnimation();
        if (animation != null && animation.hasStarted() && !animation.hasEnded()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7717b.b("ViewabilityTracker", "View is animating");
            }
            j10 |= 8;
        }
        if (this.f7718c.getParent() == null) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7717b.b("ViewabilityTracker", "No parent view found");
            }
            j10 |= 16;
        }
        int pxToDp = AppLovinSdkUtils.pxToDp(this.f7718c.getContext(), this.f7718c.getWidth());
        if (pxToDp < Math.min(e3Var.j0(), b10.x)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7717b;
                oVar.b("ViewabilityTracker", "View has width (" + pxToDp + ") below threshold");
            }
            j10 |= 32;
        }
        int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f7718c.getContext(), this.f7718c.getHeight());
        if (pxToDp2 < e3Var.f0()) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f7717b;
                oVar2.b("ViewabilityTracker", "View has height (" + pxToDp2 + ") below threshold");
            }
            j10 |= 64;
        }
        Rect rect = new Rect(0, 0, b10.x, b10.y);
        int[] iArr = {-1, -1};
        this.f7718c.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        Rect rect2 = new Rect(i10, iArr[1], this.f7718c.getWidth() + i10, iArr[1] + this.f7718c.getHeight());
        if (!Rect.intersects(rect, rect2)) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar3 = this.f7717b;
                oVar3.b("ViewabilityTracker", "Rect (" + rect2 + ") outside of screen's bounds (" + rect + ")");
            }
            j10 |= 128;
        }
        Activity b11 = this.f7716a.e().b();
        if (b11 != null && !b8.a(this.f7718c, b11)) {
            if (com.applovin.impl.sdk.o.a()) {
                this.f7717b.b("ViewabilityTracker", "View is not in top activity's view hierarchy");
            }
            j10 |= 256;
        }
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar4 = this.f7717b;
            oVar4.a("ViewabilityTracker", "Returning flags: " + Long.toBinaryString(j10));
        }
        return j10;
    }
}
