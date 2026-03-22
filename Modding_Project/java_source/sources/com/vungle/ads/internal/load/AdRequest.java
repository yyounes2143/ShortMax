package com.vungle.ads.internal.load;

import com.vungle.ads.VungleAdSize;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.Placement;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdRequest implements Serializable {
    @Nullable
    private final BidPayload adMarkup;
    @NotNull
    private final Placement placement;
    @Nullable
    private final VungleAdSize requestAdSize;

    public AdRequest(@NotNull Placement placement, @Nullable BidPayload bidPayload, @Nullable VungleAdSize vungleAdSize) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.placement = placement;
        this.adMarkup = bidPayload;
        this.requestAdSize = vungleAdSize;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(AdRequest.class, obj.getClass())) {
            return false;
        }
        AdRequest adRequest = (AdRequest) obj;
        if (!Intrinsics.areEqual(this.placement.getReferenceId(), adRequest.placement.getReferenceId()) || !Intrinsics.areEqual(this.requestAdSize, adRequest.requestAdSize)) {
            return false;
        }
        BidPayload bidPayload = this.adMarkup;
        BidPayload bidPayload2 = adRequest.adMarkup;
        if (bidPayload != null) {
            return Intrinsics.areEqual(bidPayload, bidPayload2);
        }
        if (bidPayload2 == null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final BidPayload getAdMarkup() {
        return this.adMarkup;
    }

    @NotNull
    public final Placement getPlacement() {
        return this.placement;
    }

    @Nullable
    public final VungleAdSize getRequestAdSize() {
        return this.requestAdSize;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.placement.getReferenceId().hashCode() * 31;
        VungleAdSize vungleAdSize = this.requestAdSize;
        int i11 = 0;
        if (vungleAdSize != null) {
            i10 = vungleAdSize.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        BidPayload bidPayload = this.adMarkup;
        if (bidPayload != null) {
            i11 = bidPayload.hashCode();
        }
        return i12 + i11;
    }

    @NotNull
    public String toString() {
        return "AdRequest{placementId='" + this.placement.getReferenceId() + "', adMarkup=" + this.adMarkup + ", requestAdSize=" + this.requestAdSize + '}';
    }
}
