package com.unity3d.ads.core.data.model;

import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.adplayer.AdPlayer;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.b;
import kotlinx.coroutines.flow.o;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdObject.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdObject {
    @Nullable
    private final AdPlayer adPlayer;
    @NotNull
    private final DiagnosticEventRequestOuterClass.DiagnosticAdType adType;
    private final boolean isHeaderBidding;
    private boolean isOfferwallAd;
    private boolean isScarAd;
    @NotNull
    private final UnityAdsLoadOptions loadOptions;
    @Nullable
    private String offerwallPlacementName;
    @NotNull
    private final ByteString opportunityId;
    @NotNull
    private final String placementId;
    @Nullable
    private String playerServerId;
    @Nullable
    private String scarAdString;
    @Nullable
    private String scarAdUnitId;
    @Nullable
    private String scarQueryId;
    @NotNull
    private e<AdObjectState> state;
    @NotNull
    private ByteString trackingToken;
    @NotNull
    private e<b> ttl;

    public AdObject(@NotNull ByteString opportunityId, @NotNull String placementId, @NotNull ByteString trackingToken, boolean z10, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z11, @Nullable String str4, @Nullable AdPlayer adPlayer, @Nullable String str5, @NotNull UnityAdsLoadOptions loadOptions, boolean z12, @NotNull DiagnosticEventRequestOuterClass.DiagnosticAdType adType, @NotNull e<b> ttl, @NotNull e<AdObjectState> state) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(trackingToken, "trackingToken");
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(ttl, "ttl");
        Intrinsics.checkNotNullParameter(state, "state");
        this.opportunityId = opportunityId;
        this.placementId = placementId;
        this.trackingToken = trackingToken;
        this.isScarAd = z10;
        this.scarQueryId = str;
        this.scarAdUnitId = str2;
        this.scarAdString = str3;
        this.isOfferwallAd = z11;
        this.offerwallPlacementName = str4;
        this.adPlayer = adPlayer;
        this.playerServerId = str5;
        this.loadOptions = loadOptions;
        this.isHeaderBidding = z12;
        this.adType = adType;
        this.ttl = ttl;
        this.state = state;
    }

    @NotNull
    public final ByteString component1() {
        return this.opportunityId;
    }

    @Nullable
    public final AdPlayer component10() {
        return this.adPlayer;
    }

    @Nullable
    public final String component11() {
        return this.playerServerId;
    }

    @NotNull
    public final UnityAdsLoadOptions component12() {
        return this.loadOptions;
    }

    public final boolean component13() {
        return this.isHeaderBidding;
    }

    @NotNull
    public final DiagnosticEventRequestOuterClass.DiagnosticAdType component14() {
        return this.adType;
    }

    @NotNull
    public final e<b> component15() {
        return this.ttl;
    }

    @NotNull
    public final e<AdObjectState> component16() {
        return this.state;
    }

    @NotNull
    public final String component2() {
        return this.placementId;
    }

    @NotNull
    public final ByteString component3() {
        return this.trackingToken;
    }

    public final boolean component4() {
        return this.isScarAd;
    }

    @Nullable
    public final String component5() {
        return this.scarQueryId;
    }

    @Nullable
    public final String component6() {
        return this.scarAdUnitId;
    }

    @Nullable
    public final String component7() {
        return this.scarAdString;
    }

    public final boolean component8() {
        return this.isOfferwallAd;
    }

    @Nullable
    public final String component9() {
        return this.offerwallPlacementName;
    }

    @NotNull
    public final AdObject copy(@NotNull ByteString opportunityId, @NotNull String placementId, @NotNull ByteString trackingToken, boolean z10, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z11, @Nullable String str4, @Nullable AdPlayer adPlayer, @Nullable String str5, @NotNull UnityAdsLoadOptions loadOptions, boolean z12, @NotNull DiagnosticEventRequestOuterClass.DiagnosticAdType adType, @NotNull e<b> ttl, @NotNull e<AdObjectState> state) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(trackingToken, "trackingToken");
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(ttl, "ttl");
        Intrinsics.checkNotNullParameter(state, "state");
        return new AdObject(opportunityId, placementId, trackingToken, z10, str, str2, str3, z11, str4, adPlayer, str5, loadOptions, z12, adType, ttl, state);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdObject)) {
            return false;
        }
        AdObject adObject = (AdObject) obj;
        if (Intrinsics.areEqual(this.opportunityId, adObject.opportunityId) && Intrinsics.areEqual(this.placementId, adObject.placementId) && Intrinsics.areEqual(this.trackingToken, adObject.trackingToken) && this.isScarAd == adObject.isScarAd && Intrinsics.areEqual(this.scarQueryId, adObject.scarQueryId) && Intrinsics.areEqual(this.scarAdUnitId, adObject.scarAdUnitId) && Intrinsics.areEqual(this.scarAdString, adObject.scarAdString) && this.isOfferwallAd == adObject.isOfferwallAd && Intrinsics.areEqual(this.offerwallPlacementName, adObject.offerwallPlacementName) && Intrinsics.areEqual(this.adPlayer, adObject.adPlayer) && Intrinsics.areEqual(this.playerServerId, adObject.playerServerId) && Intrinsics.areEqual(this.loadOptions, adObject.loadOptions) && this.isHeaderBidding == adObject.isHeaderBidding && this.adType == adObject.adType && Intrinsics.areEqual(this.ttl, adObject.ttl) && Intrinsics.areEqual(this.state, adObject.state)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final AdPlayer getAdPlayer() {
        return this.adPlayer;
    }

    @NotNull
    public final DiagnosticEventRequestOuterClass.DiagnosticAdType getAdType() {
        return this.adType;
    }

    @NotNull
    public final UnityAdsLoadOptions getLoadOptions() {
        return this.loadOptions;
    }

    @Nullable
    public final String getOfferwallPlacementName() {
        return this.offerwallPlacementName;
    }

    @NotNull
    public final ByteString getOpportunityId() {
        return this.opportunityId;
    }

    @NotNull
    public final String getPlacementId() {
        return this.placementId;
    }

    @Nullable
    public final String getPlayerServerId() {
        return this.playerServerId;
    }

    @Nullable
    public final String getScarAdString() {
        return this.scarAdString;
    }

    @Nullable
    public final String getScarAdUnitId() {
        return this.scarAdUnitId;
    }

    @Nullable
    public final String getScarQueryId() {
        return this.scarQueryId;
    }

    @NotNull
    public final e<AdObjectState> getState() {
        return this.state;
    }

    @NotNull
    public final ByteString getTrackingToken() {
        return this.trackingToken;
    }

    @NotNull
    public final e<b> getTtl() {
        return this.ttl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6 = ((((this.opportunityId.hashCode() * 31) + this.placementId.hashCode()) * 31) + this.trackingToken.hashCode()) * 31;
        boolean z10 = this.isScarAd;
        int i10 = 1;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int i12 = (hashCode6 + i11) * 31;
        String str = this.scarQueryId;
        int i13 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i14 = (i12 + hashCode) * 31;
        String str2 = this.scarAdUnitId;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i15 = (i14 + hashCode2) * 31;
        String str3 = this.scarAdString;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i16 = (i15 + hashCode3) * 31;
        boolean z11 = this.isOfferwallAd;
        int i17 = z11;
        if (z11 != 0) {
            i17 = 1;
        }
        int i18 = (i16 + i17) * 31;
        String str4 = this.offerwallPlacementName;
        if (str4 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str4.hashCode();
        }
        int i19 = (i18 + hashCode4) * 31;
        AdPlayer adPlayer = this.adPlayer;
        if (adPlayer == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = adPlayer.hashCode();
        }
        int i20 = (i19 + hashCode5) * 31;
        String str5 = this.playerServerId;
        if (str5 != null) {
            i13 = str5.hashCode();
        }
        int hashCode7 = (((i20 + i13) * 31) + this.loadOptions.hashCode()) * 31;
        boolean z12 = this.isHeaderBidding;
        if (!z12) {
            i10 = z12 ? 1 : 0;
        }
        return ((((((hashCode7 + i10) * 31) + this.adType.hashCode()) * 31) + this.ttl.hashCode()) * 31) + this.state.hashCode();
    }

    public final boolean isHeaderBidding() {
        return this.isHeaderBidding;
    }

    public final boolean isOfferwallAd() {
        return this.isOfferwallAd;
    }

    public final boolean isScarAd() {
        return this.isScarAd;
    }

    public final void setOfferwallAd(boolean z10) {
        this.isOfferwallAd = z10;
    }

    public final void setOfferwallPlacementName(@Nullable String str) {
        this.offerwallPlacementName = str;
    }

    public final void setPlayerServerId(@Nullable String str) {
        this.playerServerId = str;
    }

    public final void setScarAd(boolean z10) {
        this.isScarAd = z10;
    }

    public final void setScarAdString(@Nullable String str) {
        this.scarAdString = str;
    }

    public final void setScarAdUnitId(@Nullable String str) {
        this.scarAdUnitId = str;
    }

    public final void setScarQueryId(@Nullable String str) {
        this.scarQueryId = str;
    }

    public final void setState(@NotNull e<AdObjectState> eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<set-?>");
        this.state = eVar;
    }

    public final void setTrackingToken(@NotNull ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<set-?>");
        this.trackingToken = byteString;
    }

    public final void setTtl(@NotNull e<b> eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<set-?>");
        this.ttl = eVar;
    }

    @NotNull
    public String toString() {
        return "AdObject(opportunityId=" + this.opportunityId + ", placementId=" + this.placementId + ", trackingToken=" + this.trackingToken + ", isScarAd=" + this.isScarAd + ", scarQueryId=" + this.scarQueryId + ", scarAdUnitId=" + this.scarAdUnitId + ", scarAdString=" + this.scarAdString + ", isOfferwallAd=" + this.isOfferwallAd + ", offerwallPlacementName=" + this.offerwallPlacementName + ", adPlayer=" + this.adPlayer + ", playerServerId=" + this.playerServerId + ", loadOptions=" + this.loadOptions + ", isHeaderBidding=" + this.isHeaderBidding + ", adType=" + this.adType + ", ttl=" + this.ttl + ", state=" + this.state + ')';
    }

    public /* synthetic */ AdObject(ByteString byteString, String str, ByteString byteString2, boolean z10, String str2, String str3, String str4, boolean z11, String str5, AdPlayer adPlayer, String str6, UnityAdsLoadOptions unityAdsLoadOptions, boolean z12, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType, e eVar, e eVar2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteString, str, byteString2, (i10 & 8) != 0 ? false : z10, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : str3, (i10 & 64) != 0 ? null : str4, (i10 & 128) != 0 ? false : z11, (i10 & 256) != 0 ? null : str5, (i10 & 512) != 0 ? null : adPlayer, (i10 & 1024) != 0 ? null : str6, unityAdsLoadOptions, z12, diagnosticAdType, (i10 & 16384) != 0 ? o.a(null) : eVar, (i10 & 32768) != 0 ? o.a(AdObjectState.INIT) : eVar2);
    }
}
