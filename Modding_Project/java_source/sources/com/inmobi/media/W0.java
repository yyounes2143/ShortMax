package com.inmobi.media;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class W0 extends Animatable2.AnimationCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ X0 f24324a;

    public W0(X0 x02) {
        this.f24324a = x02;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        super.onAnimationEnd(drawable);
        this.f24324a.e();
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationStart(Drawable drawable) {
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        super.onAnimationStart(drawable);
    }
}
