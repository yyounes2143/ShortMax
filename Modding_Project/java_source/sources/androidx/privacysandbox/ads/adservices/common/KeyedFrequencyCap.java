package androidx.privacysandbox.ads.adservices.common;

import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KeyedFrequencyCap.kt */
@Metadata
@ExperimentalFeatures.Ext8OptIn
/* loaded from: classes2.dex */
public final class KeyedFrequencyCap {
    private final int adCounterKey;
    @NotNull
    private final Duration interval;
    private final int maxCount;

    public KeyedFrequencyCap(int i10, int i11, @NotNull Duration interval) {
        Intrinsics.checkNotNullParameter(interval, "interval");
        this.adCounterKey = i10;
        this.maxCount = i11;
        this.interval = interval;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.common.KeyedFrequencyCap convertToAdServices$ads_adservices_release() {
        android.adservices.common.KeyedFrequencyCap build;
        v.a();
        build = u.a(this.adCounterKey, this.maxCount, this.interval).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(adCounterKey, ma…val)\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyedFrequencyCap)) {
            return false;
        }
        KeyedFrequencyCap keyedFrequencyCap = (KeyedFrequencyCap) obj;
        if (this.adCounterKey == keyedFrequencyCap.adCounterKey && this.maxCount == keyedFrequencyCap.maxCount && Intrinsics.areEqual(this.interval, keyedFrequencyCap.interval)) {
            return true;
        }
        return false;
    }

    public final int getAdCounterKey() {
        return this.adCounterKey;
    }

    @NotNull
    public final Duration getInterval() {
        return this.interval;
    }

    public final int getMaxCount() {
        return this.maxCount;
    }

    public int hashCode() {
        int hashCode;
        hashCode = this.interval.hashCode();
        return (((Integer.hashCode(this.adCounterKey) * 31) + Integer.hashCode(this.maxCount)) * 31) + hashCode;
    }

    @NotNull
    public String toString() {
        return "KeyedFrequencyCap: adCounterKey=" + this.adCounterKey + ", maxCount=" + this.maxCount + ", interval=" + this.interval;
    }
}
