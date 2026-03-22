package com.unity3d.ads.core.extensions;

import com.unity3d.ads.UnityAds;
import com.unity3d.ads.adplayer.model.ShowStatus;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ShowStatusExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShowStatusExtensionsKt {

    /* compiled from: ShowStatusExtensions.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[NativeConfigurationOuterClass.ShowCompletionState.values().length];
            try {
                iArr[NativeConfigurationOuterClass.ShowCompletionState.SHOW_COMPLETION_STATE_COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NativeConfigurationOuterClass.ShowCompletionState.SHOW_COMPLETION_STATE_SKIPPED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ShowStatus.values().length];
            try {
                iArr2[ShowStatus.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ShowStatus.SKIPPED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ShowStatus.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @NotNull
    public static final UnityAds.UnityAdsShowCompletionState toUnityAdsShowCompletionState(@NotNull ShowStatus showStatus, @NotNull NativeConfigurationOuterClass.ShowCompletionState defaultShowCompletionState) {
        Intrinsics.checkNotNullParameter(showStatus, "<this>");
        Intrinsics.checkNotNullParameter(defaultShowCompletionState, "defaultShowCompletionState");
        int i10 = WhenMappings.$EnumSwitchMapping$1[showStatus.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    int i11 = WhenMappings.$EnumSwitchMapping$0[defaultShowCompletionState.ordinal()];
                    if (i11 != 1) {
                        if (i11 != 2) {
                            return UnityAds.UnityAdsShowCompletionState.COMPLETED;
                        }
                        return UnityAds.UnityAdsShowCompletionState.SKIPPED;
                    }
                    return UnityAds.UnityAdsShowCompletionState.COMPLETED;
                }
                throw new NoWhenBranchMatchedException();
            }
            return UnityAds.UnityAdsShowCompletionState.SKIPPED;
        }
        return UnityAds.UnityAdsShowCompletionState.COMPLETED;
    }
}
