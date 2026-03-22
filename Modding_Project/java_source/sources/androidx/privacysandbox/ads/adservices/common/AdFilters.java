package androidx.privacysandbox.ads.adservices.common;

import android.adservices.common.AdFilters;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdFilters.kt */
@Metadata
@ExperimentalFeatures.Ext8OptIn
/* loaded from: classes2.dex */
public final class AdFilters {
    @Nullable
    private final FrequencyCapFilters frequencyCapFilters;

    public AdFilters(@Nullable FrequencyCapFilters frequencyCapFilters) {
        this.frequencyCapFilters = frequencyCapFilters;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.common.AdFilters convertToAdServices$ads_adservices_release() {
        android.adservices.common.FrequencyCapFilters frequencyCapFilters;
        AdFilters.Builder frequencyCapFilters2;
        android.adservices.common.AdFilters build;
        AdFilters.Builder a10 = j.a();
        FrequencyCapFilters frequencyCapFilters3 = this.frequencyCapFilters;
        if (frequencyCapFilters3 != null) {
            frequencyCapFilters = frequencyCapFilters3.convertToAdServices$ads_adservices_release();
        } else {
            frequencyCapFilters = null;
        }
        frequencyCapFilters2 = a10.setFrequencyCapFilters(frequencyCapFilters);
        build = frequencyCapFilters2.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…s())\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdFilters)) {
            return false;
        }
        return Intrinsics.areEqual(this.frequencyCapFilters, ((AdFilters) obj).frequencyCapFilters);
    }

    @Nullable
    public final FrequencyCapFilters getFrequencyCapFilters() {
        return this.frequencyCapFilters;
    }

    public int hashCode() {
        FrequencyCapFilters frequencyCapFilters = this.frequencyCapFilters;
        if (frequencyCapFilters != null) {
            return frequencyCapFilters.hashCode();
        }
        return 0;
    }

    @NotNull
    public String toString() {
        return "AdFilters: frequencyCapFilters=" + this.frequencyCapFilters;
    }
}
