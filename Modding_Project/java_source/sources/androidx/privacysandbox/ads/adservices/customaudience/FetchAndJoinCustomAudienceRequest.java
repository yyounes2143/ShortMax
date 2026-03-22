package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.customaudience.FetchAndJoinCustomAudienceRequest;
import android.net.Uri;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FetchAndJoinCustomAudienceRequest.kt */
@ExperimentalFeatures.Ext10OptIn
@Metadata
/* loaded from: classes2.dex */
public final class FetchAndJoinCustomAudienceRequest {
    @Nullable
    private final Instant activationTime;
    @Nullable
    private final Instant expirationTime;
    @NotNull
    private final Uri fetchUri;
    @Nullable
    private final String name;
    @Nullable
    private final AdSelectionSignals userBiddingSignals;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(@NotNull Uri fetchUri) {
        this(fetchUri, null, null, null, null, 30, null);
        Intrinsics.checkNotNullParameter(fetchUri, "fetchUri");
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.customaudience.FetchAndJoinCustomAudienceRequest convertToAdServices$ads_adservices_release() {
        FetchAndJoinCustomAudienceRequest.Builder name;
        FetchAndJoinCustomAudienceRequest.Builder activationTime;
        FetchAndJoinCustomAudienceRequest.Builder expirationTime;
        android.adservices.common.AdSelectionSignals adSelectionSignals;
        FetchAndJoinCustomAudienceRequest.Builder userBiddingSignals;
        android.adservices.customaudience.FetchAndJoinCustomAudienceRequest build;
        i0.a();
        name = h0.a(this.fetchUri).setName(this.name);
        activationTime = name.setActivationTime(this.activationTime);
        expirationTime = activationTime.setExpirationTime(this.expirationTime);
        AdSelectionSignals adSelectionSignals2 = this.userBiddingSignals;
        if (adSelectionSignals2 != null) {
            adSelectionSignals = adSelectionSignals2.convertToAdServices$ads_adservices_release();
        } else {
            adSelectionSignals = null;
        }
        userBiddingSignals = expirationTime.setUserBiddingSignals(adSelectionSignals);
        build = userBiddingSignals.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(fetchUri)\n      …s())\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FetchAndJoinCustomAudienceRequest)) {
            return false;
        }
        FetchAndJoinCustomAudienceRequest fetchAndJoinCustomAudienceRequest = (FetchAndJoinCustomAudienceRequest) obj;
        if (Intrinsics.areEqual(this.fetchUri, fetchAndJoinCustomAudienceRequest.fetchUri) && Intrinsics.areEqual(this.name, fetchAndJoinCustomAudienceRequest.name) && Intrinsics.areEqual(this.activationTime, fetchAndJoinCustomAudienceRequest.activationTime) && Intrinsics.areEqual(this.expirationTime, fetchAndJoinCustomAudienceRequest.expirationTime) && Intrinsics.areEqual(this.userBiddingSignals, fetchAndJoinCustomAudienceRequest.userBiddingSignals)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Instant getActivationTime() {
        return this.activationTime;
    }

    @Nullable
    public final Instant getExpirationTime() {
        return this.expirationTime;
    }

    @NotNull
    public final Uri getFetchUri() {
        return this.fetchUri;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final AdSelectionSignals getUserBiddingSignals() {
        return this.userBiddingSignals;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int hashCode = this.fetchUri.hashCode() * 31;
        String str = this.name;
        int i13 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i14 = (hashCode + i10) * 31;
        Instant instant = this.activationTime;
        if (instant != null) {
            i11 = instant.hashCode();
        } else {
            i11 = 0;
        }
        int i15 = (i14 + i11) * 31;
        Instant instant2 = this.expirationTime;
        if (instant2 != null) {
            i12 = instant2.hashCode();
        } else {
            i12 = 0;
        }
        int i16 = (i15 + i12) * 31;
        AdSelectionSignals adSelectionSignals = this.userBiddingSignals;
        if (adSelectionSignals != null) {
            i13 = adSelectionSignals.hashCode();
        }
        return i16 + i13;
    }

    @NotNull
    public String toString() {
        return "FetchAndJoinCustomAudienceRequest: fetchUri=" + this.fetchUri + ", name=" + this.name + ", activationTime=" + this.activationTime + ", expirationTime=" + this.expirationTime + ", userBiddingSignals=" + this.userBiddingSignals;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(@NotNull Uri fetchUri, @Nullable String str) {
        this(fetchUri, str, null, null, null, 28, null);
        Intrinsics.checkNotNullParameter(fetchUri, "fetchUri");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(@NotNull Uri fetchUri, @Nullable String str, @Nullable Instant instant) {
        this(fetchUri, str, instant, null, null, 24, null);
        Intrinsics.checkNotNullParameter(fetchUri, "fetchUri");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FetchAndJoinCustomAudienceRequest(@NotNull Uri fetchUri, @Nullable String str, @Nullable Instant instant, @Nullable Instant instant2) {
        this(fetchUri, str, instant, instant2, null, 16, null);
        Intrinsics.checkNotNullParameter(fetchUri, "fetchUri");
    }

    public FetchAndJoinCustomAudienceRequest(@NotNull Uri fetchUri, @Nullable String str, @Nullable Instant instant, @Nullable Instant instant2, @Nullable AdSelectionSignals adSelectionSignals) {
        Intrinsics.checkNotNullParameter(fetchUri, "fetchUri");
        this.fetchUri = fetchUri;
        this.name = str;
        this.activationTime = instant;
        this.expirationTime = instant2;
        this.userBiddingSignals = adSelectionSignals;
    }

    public /* synthetic */ FetchAndJoinCustomAudienceRequest(Uri uri, String str, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(uri, (i10 & 2) != 0 ? null : str, (i10 & 4) != 0 ? null : instant, (i10 & 8) != 0 ? null : instant2, (i10 & 16) != 0 ? null : adSelectionSignals);
    }
}
