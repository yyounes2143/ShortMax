package com.inmobi.media;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.widget.RelativeLayout;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class P {

    /* renamed from: a  reason: collision with root package name */
    public final RelativeLayout f23962a;

    /* renamed from: b  reason: collision with root package name */
    public EnumC3115pa f23963b;

    /* renamed from: c  reason: collision with root package name */
    public float f23964c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f23965d;

    public P(RelativeLayout adBackgroundView) {
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.f23962a = adBackgroundView;
        this.f23963b = AbstractC3131qa.a(U3.g());
        this.f23964c = 1.0f;
    }

    public abstract void a();

    public void a(EnumC3115pa orientation) {
        Intrinsics.checkNotNullParameter(orientation, "orientation");
        this.f23963b = orientation;
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public final void e() {
        T3 t32;
        T3 t33;
        RelativeLayout.LayoutParams layoutParams;
        if (this.f23964c == 1.0f) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(10);
            this.f23962a.setLayoutParams(layoutParams2);
            return;
        }
        if (this.f23965d) {
            V3 v32 = U3.f24244a;
            Context context = this.f23962a.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            Intrinsics.checkNotNullParameter(context, "context");
            Display a10 = U3.a(context);
            if (a10 == null) {
                t33 = U3.f24245b;
            } else {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                a10.getRealMetrics(displayMetrics);
                t32 = new T3(displayMetrics.widthPixels, displayMetrics.heightPixels);
                t33 = t32;
            }
        } else {
            V3 v33 = U3.f24244a;
            Context context2 = this.f23962a.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            Intrinsics.checkNotNullParameter(context2, "context");
            Display a11 = U3.a(context2);
            if (a11 == null) {
                t33 = U3.f24245b;
            } else {
                DisplayMetrics displayMetrics2 = new DisplayMetrics();
                a11.getMetrics(displayMetrics2);
                t32 = new T3(displayMetrics2.widthPixels, displayMetrics2.heightPixels);
                t33 = t32;
            }
        }
        Objects.toString(this.f23963b);
        if (AbstractC3131qa.b(this.f23963b)) {
            layoutParams = new RelativeLayout.LayoutParams(bt.a.c(t33.f24171a * this.f23964c), -1);
            layoutParams.addRule(9);
        } else {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, bt.a.c(t33.f24172b * this.f23964c));
            layoutParams3.addRule(10);
            layoutParams = layoutParams3;
        }
        this.f23962a.setLayoutParams(layoutParams);
    }

    public abstract void f();

    public abstract void g();
}
