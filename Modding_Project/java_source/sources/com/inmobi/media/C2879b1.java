package com.inmobi.media;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.media.C2879b1;
import com.inmobi.media.C3001i8;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.b1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2879b1 {

    /* renamed from: a  reason: collision with root package name */
    public final String f24514a = C2879b1.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f24515b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public boolean f24516c;

    public static C2862a1 a(ValueAnimator valueAnimator, C2920d8 c2920d8) {
        valueAnimator.setDuration(0L);
        valueAnimator.setStartDelay(0L);
        P8 p82 = c2920d8.f24581d.f24647k;
        if (p82 != null) {
            O8 o82 = p82.f23977a;
            O8 o83 = p82.f23978b;
            if (o83 != null) {
                valueAnimator.setDuration(o83.a() * 1000);
            }
            if (o82 != null) {
                valueAnimator.setStartDelay(o82.a() * 1000);
            }
        }
        return new C2862a1(valueAnimator);
    }

    public static ValueAnimator b(final View view, float f10, float f11) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f10, f11);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        final C3001i8 c3001i8 = layoutParams instanceof C3001i8 ? (C3001i8) layoutParams : null;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ub.s3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C2879b1.b(C3001i8.this, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        return ofFloat;
    }

    public static final void b(C3001i8 c3001i8, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        if (c3001i8 != null) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            c3001i8.f24857b = (int) ((Float) animatedValue).floatValue();
        }
        view.setLayoutParams(c3001i8);
        view.requestLayout();
    }

    public static ValueAnimator a(final View view, float f10, float f11) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f10, f11);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        final C3001i8 c3001i8 = layoutParams instanceof C3001i8 ? (C3001i8) layoutParams : null;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: ub.r3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C2879b1.a(C3001i8.this, view, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        return ofFloat;
    }

    public static final void a(C3001i8 c3001i8, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        if (c3001i8 != null) {
            Object animatedValue = valueAnimator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            c3001i8.f24856a = (int) ((Float) animatedValue).floatValue();
        }
        view.setLayoutParams(c3001i8);
        view.requestLayout();
    }

    public final void a(ArrayList arrayList) {
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C2862a1 c2862a1 = (C2862a1) it.next();
            if (!c2862a1.f24471c) {
                ValueAnimator valueAnimator = c2862a1.f24469a;
                Intrinsics.checkNotNull(valueAnimator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                valueAnimator.setCurrentPlayTime(c2862a1.f24470b);
                valueAnimator.start();
            }
            if (!this.f24515b.contains(c2862a1)) {
                this.f24515b.add(c2862a1);
            }
        }
    }

    public final void a() {
        if (this.f24516c) {
            this.f24516c = false;
            Iterator it = this.f24515b.iterator();
            while (it.hasNext()) {
                C2862a1 c2862a1 = (C2862a1) it.next();
                ValueAnimator valueAnimator = c2862a1.f24469a;
                Intrinsics.checkNotNull(valueAnimator, "null cannot be cast to non-null type android.animation.ValueAnimator");
                c2862a1.f24470b = valueAnimator.getCurrentPlayTime();
                if (valueAnimator.getAnimatedFraction() == 1.0d) {
                    c2862a1.f24471c = true;
                }
                valueAnimator.cancel();
            }
        }
    }
}
