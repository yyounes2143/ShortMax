package androidx.privacysandbox.ads.adservices.common;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdTechIdentifier.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes2.dex */
public final class AdTechIdentifier {
    @NotNull
    private final String identifier;

    public AdTechIdentifier(@NotNull String identifier) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        this.identifier = identifier;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.common.AdTechIdentifier convertToAdServices$ads_adservices_release() {
        android.adservices.common.AdTechIdentifier fromString;
        fromString = android.adservices.common.AdTechIdentifier.fromString(this.identifier);
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(identifier)");
        return fromString;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdTechIdentifier)) {
            return false;
        }
        return Intrinsics.areEqual(this.identifier, ((AdTechIdentifier) obj).identifier);
    }

    @NotNull
    public final String getIdentifier() {
        return this.identifier;
    }

    public int hashCode() {
        return this.identifier.hashCode();
    }

    @NotNull
    public String toString() {
        return String.valueOf(this.identifier);
    }
}
