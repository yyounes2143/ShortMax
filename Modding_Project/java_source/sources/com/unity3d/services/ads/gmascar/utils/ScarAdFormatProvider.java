package com.unity3d.services.ads.gmascar.utils;

import com.unity3d.ads.AdFormat;
import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.core.extensions.AdFormatExtensions;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import com.unity3d.services.core.configuration.IExperiments;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ScarAdFormatProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ScarAdFormatProvider implements IScarAdFormatProvider {
    @NotNull
    private final IExperiments experiments;
    @Nullable
    private final TokenConfiguration tokenConfiguration;

    /* compiled from: ScarAdFormatProvider.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdFormat.values().length];
            try {
                iArr[AdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ScarAdFormatProvider(@Nullable TokenConfiguration tokenConfiguration, @NotNull IExperiments experiments) {
        Intrinsics.checkNotNullParameter(experiments, "experiments");
        this.tokenConfiguration = tokenConfiguration;
        this.experiments = experiments;
    }

    @Override // com.unity3d.services.ads.gmascar.utils.IScarAdFormatProvider
    @NotNull
    public List<UnityAdFormat> buildAdFormatList() {
        ArrayList arrayList = new ArrayList();
        TokenConfiguration tokenConfiguration = this.tokenConfiguration;
        if (tokenConfiguration == null) {
            arrayList.add(UnityAdFormat.REWARDED);
            arrayList.add(UnityAdFormat.INTERSTITIAL);
            if (this.experiments.isScarBannerHbEnabled()) {
                arrayList.add(UnityAdFormat.BANNER);
            }
        } else {
            if (WhenMappings.$EnumSwitchMapping$0[tokenConfiguration.getAdFormat().ordinal()] == 1) {
                if (this.experiments.isScarBannerHbEnabled()) {
                    arrayList.add(UnityAdFormat.BANNER);
                }
            } else {
                arrayList.add(AdFormatExtensions.toUnityAdFormat(this.tokenConfiguration.getAdFormat()));
            }
        }
        return arrayList;
    }

    @NotNull
    public final IExperiments getExperiments() {
        return this.experiments;
    }

    @Nullable
    public final TokenConfiguration getTokenConfiguration() {
        return this.tokenConfiguration;
    }
}
