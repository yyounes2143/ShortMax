package com.unity3d.ads.core.extensions;

import com.unity3d.ads.AdFormat;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdFormatExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdFormatExtensions {

    /* compiled from: AdFormatExtensions.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[InitializationResponseOuterClass.AdFormat.values().length];
            try {
                iArr[InitializationResponseOuterClass.AdFormat.AD_FORMAT_REWARDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InitializationResponseOuterClass.AdFormat.AD_FORMAT_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InitializationResponseOuterClass.AdFormat.AD_FORMAT_BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[AdFormat.values().length];
            try {
                iArr2[AdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[AdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @NotNull
    public static final InitializationResponseOuterClass.AdFormat toProtoAdFormat(@NotNull AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$1[adFormat.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return InitializationResponseOuterClass.AdFormat.AD_FORMAT_REWARDED;
                }
                throw new NoWhenBranchMatchedException();
            }
            return InitializationResponseOuterClass.AdFormat.AD_FORMAT_INTERSTITIAL;
        }
        return InitializationResponseOuterClass.AdFormat.AD_FORMAT_BANNER;
    }

    @Nullable
    public static final UnityAdFormat toUnityAdFormat(@NotNull InitializationResponseOuterClass.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[adFormat.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return null;
                }
                return UnityAdFormat.BANNER;
            }
            return UnityAdFormat.INTERSTITIAL;
        }
        return UnityAdFormat.REWARDED;
    }

    @NotNull
    public static final UnityAdFormat toUnityAdFormat(@NotNull AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$1[adFormat.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return UnityAdFormat.REWARDED;
                }
                throw new NoWhenBranchMatchedException();
            }
            return UnityAdFormat.INTERSTITIAL;
        }
        return UnityAdFormat.BANNER;
    }
}
