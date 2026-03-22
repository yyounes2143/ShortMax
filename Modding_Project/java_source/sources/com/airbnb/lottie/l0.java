package com.airbnb.lottie;

import android.annotation.SuppressLint;
import android.os.Build;
import java.util.HashSet;
/* compiled from: LottieFeatureFlags.java */
/* loaded from: classes2.dex */
class l0 {

    /* renamed from: a  reason: collision with root package name */
    private final HashSet<LottieFeatureFlag> f4528a = new HashSet<>();

    @SuppressLint({"DefaultLocale"})
    public boolean a(LottieFeatureFlag lottieFeatureFlag, boolean z10) {
        if (z10) {
            if (Build.VERSION.SDK_INT < lottieFeatureFlag.minRequiredSdkVersion) {
                d1.f.c(String.format("%s is not supported pre SDK %d", lottieFeatureFlag.name(), Integer.valueOf(lottieFeatureFlag.minRequiredSdkVersion)));
                return false;
            }
            return this.f4528a.add(lottieFeatureFlag);
        }
        return this.f4528a.remove(lottieFeatureFlag);
    }

    public boolean b(LottieFeatureFlag lottieFeatureFlag) {
        return this.f4528a.contains(lottieFeatureFlag);
    }
}
