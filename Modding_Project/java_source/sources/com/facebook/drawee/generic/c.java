package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import c3.g;
import c3.j;
import c3.k;
import c3.l;
import c3.n;
import c3.o;
import c3.q;
import com.facebook.drawee.drawable.RoundedCornersDrawable;
import com.facebook.drawee.generic.RoundingParams;
import k2.h;
/* compiled from: WrappingUtils.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Drawable f15505a = new ColorDrawable(0);

    private static Drawable a(Drawable drawable, RoundingParams roundingParams, Resources resources) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            k kVar = new k(resources, bitmapDrawable.getBitmap(), bitmapDrawable.getPaint(), roundingParams.j());
            b(kVar, roundingParams);
            return kVar;
        } else if (drawable instanceof NinePatchDrawable) {
            n nVar = new n((NinePatchDrawable) drawable);
            b(nVar, roundingParams);
            return nVar;
        } else if (drawable instanceof ColorDrawable) {
            l a10 = l.a((ColorDrawable) drawable);
            b(a10, roundingParams);
            return a10;
        } else {
            l2.a.z("WrappingUtils", "Don't know how to round that drawable: %s", drawable);
            return drawable;
        }
    }

    static void b(j jVar, RoundingParams roundingParams) {
        jVar.d(roundingParams.k());
        jVar.o(roundingParams.e());
        jVar.c(roundingParams.c(), roundingParams.d());
        jVar.e(roundingParams.h());
        jVar.l(roundingParams.m());
        jVar.h(roundingParams.i());
        jVar.g(roundingParams.j());
    }

    static c3.c c(c3.c cVar) {
        while (true) {
            Drawable a10 = cVar.a();
            if (a10 == cVar || !(a10 instanceof c3.c)) {
                break;
            }
            cVar = (c3.c) a10;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable d(Drawable drawable, RoundingParams roundingParams, Resources resources) {
        try {
            if (f4.b.d()) {
                f4.b.a("WrappingUtils#maybeApplyLeafRounding");
            }
            if (drawable != null && roundingParams != null && roundingParams.l() == RoundingParams.RoundingMethod.BITMAP_ONLY) {
                if (drawable instanceof g) {
                    c3.c c10 = c((g) drawable);
                    c10.k(a(c10.k(f15505a), roundingParams, resources));
                    if (f4.b.d()) {
                        f4.b.b();
                    }
                    return drawable;
                }
                Drawable a10 = a(drawable, roundingParams, resources);
                if (f4.b.d()) {
                    f4.b.b();
                }
                return a10;
            }
            return drawable;
        } finally {
            if (f4.b.d()) {
                f4.b.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable e(Drawable drawable, RoundingParams roundingParams) {
        try {
            if (f4.b.d()) {
                f4.b.a("WrappingUtils#maybeWrapWithRoundedOverlayColor");
            }
            if (drawable != null && roundingParams != null && roundingParams.l() == RoundingParams.RoundingMethod.OVERLAY_COLOR) {
                RoundedCornersDrawable roundedCornersDrawable = new RoundedCornersDrawable(drawable);
                b(roundedCornersDrawable, roundingParams);
                roundedCornersDrawable.u(roundingParams.g());
                if (f4.b.d()) {
                    f4.b.b();
                }
                return roundedCornersDrawable;
            }
            return drawable;
        } finally {
            if (f4.b.d()) {
                f4.b.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable f(Drawable drawable, q qVar) {
        return g(drawable, qVar, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Drawable g(Drawable drawable, q qVar, PointF pointF) {
        if (f4.b.d()) {
            f4.b.a("WrappingUtils#maybeWrapWithScaleType");
        }
        if (drawable != null && qVar != null) {
            o oVar = new o(drawable, qVar);
            if (pointF != null) {
                oVar.x(pointF);
            }
            if (f4.b.d()) {
                f4.b.b();
            }
            return oVar;
        }
        if (f4.b.d()) {
            f4.b.b();
        }
        return drawable;
    }

    static void h(j jVar) {
        jVar.d(false);
        jVar.f(0.0f);
        jVar.c(0, 0.0f);
        jVar.e(0.0f);
        jVar.l(false);
        jVar.h(false);
        jVar.g(k.p());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(c3.c cVar, RoundingParams roundingParams, Resources resources) {
        c3.c c10 = c(cVar);
        Drawable a10 = c10.a();
        if (roundingParams != null && roundingParams.l() == RoundingParams.RoundingMethod.BITMAP_ONLY) {
            if (a10 instanceof j) {
                b((j) a10, roundingParams);
            } else if (a10 != null) {
                c10.k(f15505a);
                c10.k(a(a10, roundingParams, resources));
            }
        } else if (a10 instanceof j) {
            h((j) a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void j(c3.c cVar, RoundingParams roundingParams) {
        Drawable a10 = cVar.a();
        if (roundingParams != null && roundingParams.l() == RoundingParams.RoundingMethod.OVERLAY_COLOR) {
            if (a10 instanceof RoundedCornersDrawable) {
                RoundedCornersDrawable roundedCornersDrawable = (RoundedCornersDrawable) a10;
                b(roundedCornersDrawable, roundingParams);
                roundedCornersDrawable.u(roundingParams.g());
                return;
            }
            cVar.k(e(cVar.k(f15505a), roundingParams));
        } else if (a10 instanceof RoundedCornersDrawable) {
            Drawable drawable = f15505a;
            cVar.k(((RoundedCornersDrawable) a10).q(drawable));
            drawable.setCallback(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o k(c3.c cVar, q qVar) {
        Drawable f10 = f(cVar.k(f15505a), qVar);
        cVar.k(f10);
        h.h(f10, "Parent has no child drawable!");
        return (o) f10;
    }
}
