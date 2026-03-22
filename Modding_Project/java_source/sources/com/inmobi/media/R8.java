package com.inmobi.media;

import android.animation.ValueAnimator;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class R8 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f24068a;

    public R8(T8 view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f24068a = new WeakReference(view);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        T8 t82 = (T8) this.f24068a.get();
        if (t82 == null) {
            return;
        }
        int visibility = t82.getVisibility();
        if (visibility != 4 && visibility != 8) {
            Object animatedValue = animation.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            t82.f24213l = 360 * ((Float) animatedValue).floatValue();
            t82.invalidate();
            return;
        }
        Object animatedValue2 = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
        if (((Float) animatedValue2).floatValue() >= 1.0d) {
            t82.a();
        }
    }
}
