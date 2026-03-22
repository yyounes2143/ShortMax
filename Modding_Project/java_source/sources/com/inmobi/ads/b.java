package com.inmobi.ads;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.media.Y0;
import com.inmobi.media.Z0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class b {
    public static final Animation a(InMobiBanner.AnimationType animationType, float f10, float f11) {
        Intrinsics.checkNotNullParameter(animationType, "animationType");
        int i10 = a.f23418a[animationType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return null;
                }
                Z0 z02 = new Z0(f10 / 2.0f, f11 / 2.0f);
                z02.setDuration(500L);
                z02.setFillAfter(false);
                z02.setInterpolator(new AccelerateInterpolator());
                return z02;
            }
            Y0 y02 = new Y0(f10 / 2.0f, f11 / 2.0f);
            y02.setDuration(500L);
            y02.setFillAfter(false);
            y02.setInterpolator(new AccelerateInterpolator());
            return y02;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.5f);
        alphaAnimation.setDuration(1000L);
        alphaAnimation.setFillAfter(false);
        alphaAnimation.setInterpolator(new DecelerateInterpolator());
        return alphaAnimation;
    }
}
