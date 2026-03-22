package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.PersistAdSelectionResultRequest;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistAdSelectionResultRequest.kt */
@ExperimentalFeatures.Ext10OptIn
@Metadata
/* loaded from: classes2.dex */
public final class PersistAdSelectionResultRequest {
    private final long adSelectionId;
    @Nullable
    private final byte[] adSelectionResult;
    @Nullable
    private final AdTechIdentifier seller;

    public PersistAdSelectionResultRequest(long j10) {
        this(j10, null, null, 6, null);
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.adselection.PersistAdSelectionResultRequest convertToAdServices$ads_adservices_release() {
        PersistAdSelectionResultRequest.Builder adSelectionId;
        android.adservices.common.AdTechIdentifier adTechIdentifier;
        PersistAdSelectionResultRequest.Builder seller;
        PersistAdSelectionResultRequest.Builder adSelectionResult;
        android.adservices.adselection.PersistAdSelectionResultRequest build;
        adSelectionId = n0.a().setAdSelectionId(this.adSelectionId);
        AdTechIdentifier adTechIdentifier2 = this.seller;
        if (adTechIdentifier2 != null) {
            adTechIdentifier = adTechIdentifier2.convertToAdServices$ads_adservices_release();
        } else {
            adTechIdentifier = null;
        }
        seller = adSelectionId.setSeller(adTechIdentifier);
        adSelectionResult = seller.setAdSelectionResult(this.adSelectionResult);
        build = adSelectionResult.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…ult)\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PersistAdSelectionResultRequest)) {
            return false;
        }
        PersistAdSelectionResultRequest persistAdSelectionResultRequest = (PersistAdSelectionResultRequest) obj;
        if (this.adSelectionId == persistAdSelectionResultRequest.adSelectionId && Intrinsics.areEqual(this.seller, persistAdSelectionResultRequest.seller) && Arrays.equals(this.adSelectionResult, persistAdSelectionResultRequest.adSelectionResult)) {
            return true;
        }
        return false;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    @Nullable
    public final byte[] getAdSelectionResult() {
        return this.adSelectionResult;
    }

    @Nullable
    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        int i10;
        int hashCode = Long.hashCode(this.adSelectionId) * 31;
        AdTechIdentifier adTechIdentifier = this.seller;
        int i11 = 0;
        if (adTechIdentifier != null) {
            i10 = adTechIdentifier.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        byte[] bArr = this.adSelectionResult;
        if (bArr != null) {
            i11 = bArr.hashCode();
        }
        return i12 + i11;
    }

    @NotNull
    public String toString() {
        return "PersistAdSelectionResultRequest: adSelectionId=" + this.adSelectionId + ", seller=" + this.seller + ", adSelectionResult=" + this.adSelectionResult;
    }

    public PersistAdSelectionResultRequest(long j10, @Nullable AdTechIdentifier adTechIdentifier) {
        this(j10, adTechIdentifier, null, 4, null);
    }

    public PersistAdSelectionResultRequest(long j10, @Nullable AdTechIdentifier adTechIdentifier, @Nullable byte[] bArr) {
        this.adSelectionId = j10;
        this.seller = adTechIdentifier;
        this.adSelectionResult = bArr;
    }

    public /* synthetic */ PersistAdSelectionResultRequest(long j10, AdTechIdentifier adTechIdentifier, byte[] bArr, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, (i10 & 2) != 0 ? null : adTechIdentifier, (i10 & 4) != 0 ? null : bArr);
    }
}
