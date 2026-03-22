package com.unity3d.ads.beta;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnityAdsPrivacy.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnityAdsPrivacy {
    public static final void set(@NotNull UnityAdsPrivacyConsent consent, @NotNull UnityAdsPrivacyConsentValue value) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    public static final void setPrivacy(@NotNull String flag, @NotNull UnityAdsPrivacyConsentValue value) {
        Intrinsics.checkNotNullParameter(flag, "flag");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    public static final void set(@NotNull UnityAdsPrivacyFlag privacy, @NotNull UnityAdsPrivacyValue value) {
        Intrinsics.checkNotNullParameter(privacy, "privacy");
        Intrinsics.checkNotNullParameter(value, "value");
    }

    public static final void setPrivacy(@NotNull String flag, @NotNull UnityAdsPrivacyValue consent) {
        Intrinsics.checkNotNullParameter(flag, "flag");
        Intrinsics.checkNotNullParameter(consent, "consent");
    }
}
