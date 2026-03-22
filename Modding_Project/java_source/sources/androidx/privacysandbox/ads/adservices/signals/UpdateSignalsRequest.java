package androidx.privacysandbox.ads.adservices.signals;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UpdateSignalsRequest.kt */
@Metadata
@ExperimentalFeatures.Ext12OptIn
/* loaded from: classes2.dex */
public final class UpdateSignalsRequest {
    @NotNull
    private final Uri updateUri;

    public UpdateSignalsRequest(@NotNull Uri updateUri) {
        Intrinsics.checkNotNullParameter(updateUri, "updateUri");
        this.updateUri = updateUri;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateSignalsRequest)) {
            return false;
        }
        return Intrinsics.areEqual(this.updateUri, ((UpdateSignalsRequest) obj).updateUri);
    }

    @NotNull
    public final Uri getUpdateUri() {
        return this.updateUri;
    }

    public int hashCode() {
        return this.updateUri.hashCode();
    }

    @NotNull
    public String toString() {
        return "UpdateSignalsRequest: updateUri=" + this.updateUri;
    }
}
