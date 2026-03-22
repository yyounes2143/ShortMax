package androidx.privacysandbox.ads.adservices.adselection;

import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UpdateAdCounterHistogramRequest.kt */
@Metadata
@ExperimentalFeatures.Ext8OptIn
/* loaded from: classes2.dex */
public final class UpdateAdCounterHistogramRequest {
    private final int adEventType;
    private final long adSelectionId;
    @NotNull
    private final AdTechIdentifier callerAdTech;

    public UpdateAdCounterHistogramRequest(long j10, int i10, @NotNull AdTechIdentifier callerAdTech) {
        Intrinsics.checkNotNullParameter(callerAdTech, "callerAdTech");
        this.adSelectionId = j10;
        this.adEventType = i10;
        this.callerAdTech = callerAdTech;
        if (i10 != 0) {
            if (i10 != 1 && i10 != 2 && i10 != 3) {
                throw new IllegalArgumentException("Ad event type must be one of AD_EVENT_TYPE_IMPRESSION, AD_EVENT_TYPE_VIEW, or AD_EVENT_TYPE_CLICK");
            }
            return;
        }
        throw new IllegalArgumentException("Win event types cannot be manually updated.");
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.adselection.UpdateAdCounterHistogramRequest convertToAdServices$ads_adservices_release() {
        android.adservices.adselection.UpdateAdCounterHistogramRequest build;
        x0.a();
        build = w0.a(this.adSelectionId, this.adEventType, this.callerAdTech.convertToAdServices$ads_adservices_release()).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(\n               …   )\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateAdCounterHistogramRequest)) {
            return false;
        }
        UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest = (UpdateAdCounterHistogramRequest) obj;
        if (this.adSelectionId == updateAdCounterHistogramRequest.adSelectionId && this.adEventType == updateAdCounterHistogramRequest.adEventType && Intrinsics.areEqual(this.callerAdTech, updateAdCounterHistogramRequest.callerAdTech)) {
            return true;
        }
        return false;
    }

    public final int getAdEventType() {
        return this.adEventType;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    @NotNull
    public final AdTechIdentifier getCallerAdTech() {
        return this.callerAdTech;
    }

    public int hashCode() {
        return (((Long.hashCode(this.adSelectionId) * 31) + Integer.hashCode(this.adEventType)) * 31) + this.callerAdTech.hashCode();
    }

    @NotNull
    public String toString() {
        String str;
        int i10 = this.adEventType;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        str = "Invalid ad event type";
                    } else {
                        str = "AD_EVENT_TYPE_CLICK";
                    }
                } else {
                    str = "AD_EVENT_TYPE_VIEW";
                }
            } else {
                str = "AD_EVENT_TYPE_IMPRESSION";
            }
        } else {
            str = "AD_EVENT_TYPE_WIN";
        }
        return "UpdateAdCounterHistogramRequest: adSelectionId=" + this.adSelectionId + ", adEventType=" + str + ", callerAdTech=" + this.callerAdTech;
    }
}
