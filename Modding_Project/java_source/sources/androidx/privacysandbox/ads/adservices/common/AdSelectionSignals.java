package androidx.privacysandbox.ads.adservices.common;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSelectionSignals.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes2.dex */
public final class AdSelectionSignals {
    @NotNull
    private final String signals;

    public AdSelectionSignals(@NotNull String signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        this.signals = signals;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.common.AdSelectionSignals convertToAdServices$ads_adservices_release() {
        android.adservices.common.AdSelectionSignals fromString;
        fromString = android.adservices.common.AdSelectionSignals.fromString(this.signals);
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(signals)");
        return fromString;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionSignals)) {
            return false;
        }
        return Intrinsics.areEqual(this.signals, ((AdSelectionSignals) obj).signals);
    }

    @NotNull
    public final String getSignals() {
        return this.signals;
    }

    public int hashCode() {
        return this.signals.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdSelectionSignals: " + this.signals;
    }
}
