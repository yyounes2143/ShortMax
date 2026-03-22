package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.AdSelectionConfig;
import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSelectionConfig.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes2.dex */
public final class AdSelectionConfig {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final AdSelectionConfig EMPTY;
    @NotNull
    private final AdSelectionSignals adSelectionSignals;
    @NotNull
    private final List<AdTechIdentifier> customAudienceBuyers;
    @NotNull
    private final Uri decisionLogicUri;
    @NotNull
    private final Map<AdTechIdentifier, AdSelectionSignals> perBuyerSignals;
    @NotNull
    private final AdTechIdentifier seller;
    @NotNull
    private final AdSelectionSignals sellerSignals;
    @NotNull
    private final Uri trustedScoringSignalsUri;

    /* compiled from: AdSelectionConfig.kt */
    @Metadata
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AdSelectionConfig getEMPTY() {
            return AdSelectionConfig.EMPTY;
        }

        private Companion() {
        }
    }

    static {
        AdTechIdentifier adTechIdentifier = new AdTechIdentifier("");
        Uri EMPTY2 = Uri.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY2, "EMPTY");
        List n10 = CollectionsKt.n();
        AdSelectionSignals adSelectionSignals = new AdSelectionSignals("");
        AdSelectionSignals adSelectionSignals2 = new AdSelectionSignals("");
        Map i10 = kotlin.collections.p0.i();
        Intrinsics.checkNotNullExpressionValue(EMPTY2, "EMPTY");
        EMPTY = new AdSelectionConfig(adTechIdentifier, EMPTY2, n10, adSelectionSignals, adSelectionSignals2, i10, EMPTY2);
    }

    public AdSelectionConfig(@NotNull AdTechIdentifier seller, @NotNull Uri decisionLogicUri, @NotNull List<AdTechIdentifier> customAudienceBuyers, @NotNull AdSelectionSignals adSelectionSignals, @NotNull AdSelectionSignals sellerSignals, @NotNull Map<AdTechIdentifier, AdSelectionSignals> perBuyerSignals, @NotNull Uri trustedScoringSignalsUri) {
        Intrinsics.checkNotNullParameter(seller, "seller");
        Intrinsics.checkNotNullParameter(decisionLogicUri, "decisionLogicUri");
        Intrinsics.checkNotNullParameter(customAudienceBuyers, "customAudienceBuyers");
        Intrinsics.checkNotNullParameter(adSelectionSignals, "adSelectionSignals");
        Intrinsics.checkNotNullParameter(sellerSignals, "sellerSignals");
        Intrinsics.checkNotNullParameter(perBuyerSignals, "perBuyerSignals");
        Intrinsics.checkNotNullParameter(trustedScoringSignalsUri, "trustedScoringSignalsUri");
        this.seller = seller;
        this.decisionLogicUri = decisionLogicUri;
        this.customAudienceBuyers = customAudienceBuyers;
        this.adSelectionSignals = adSelectionSignals;
        this.sellerSignals = sellerSignals;
        this.perBuyerSignals = perBuyerSignals;
        this.trustedScoringSignalsUri = trustedScoringSignalsUri;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    private final List<android.adservices.common.AdTechIdentifier> convertToAdServices(List<AdTechIdentifier> list) {
        ArrayList arrayList = new ArrayList();
        for (AdTechIdentifier adTechIdentifier : list) {
            arrayList.add(adTechIdentifier.convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.adselection.AdSelectionConfig convertToAdServices$ads_adservices_release() {
        AdSelectionConfig.Builder adSelectionSignals;
        AdSelectionConfig.Builder customAudienceBuyers;
        AdSelectionConfig.Builder decisionLogicUri;
        AdSelectionConfig.Builder seller;
        AdSelectionConfig.Builder perBuyerSignals;
        AdSelectionConfig.Builder sellerSignals;
        AdSelectionConfig.Builder trustedScoringSignalsUri;
        android.adservices.adselection.AdSelectionConfig build;
        adSelectionSignals = i.a().setAdSelectionSignals(this.adSelectionSignals.convertToAdServices$ads_adservices_release());
        customAudienceBuyers = adSelectionSignals.setCustomAudienceBuyers(convertToAdServices(this.customAudienceBuyers));
        decisionLogicUri = customAudienceBuyers.setDecisionLogicUri(this.decisionLogicUri);
        seller = decisionLogicUri.setSeller(this.seller.convertToAdServices$ads_adservices_release());
        perBuyerSignals = seller.setPerBuyerSignals(convertToAdServices(this.perBuyerSignals));
        sellerSignals = perBuyerSignals.setSellerSignals(this.sellerSignals.convertToAdServices$ads_adservices_release());
        trustedScoringSignalsUri = sellerSignals.setTrustedScoringSignalsUri(this.trustedScoringSignalsUri);
        build = trustedScoringSignalsUri.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…Uri)\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionConfig)) {
            return false;
        }
        AdSelectionConfig adSelectionConfig = (AdSelectionConfig) obj;
        if (Intrinsics.areEqual(this.seller, adSelectionConfig.seller) && Intrinsics.areEqual(this.decisionLogicUri, adSelectionConfig.decisionLogicUri) && Intrinsics.areEqual(this.customAudienceBuyers, adSelectionConfig.customAudienceBuyers) && Intrinsics.areEqual(this.adSelectionSignals, adSelectionConfig.adSelectionSignals) && Intrinsics.areEqual(this.sellerSignals, adSelectionConfig.sellerSignals) && Intrinsics.areEqual(this.perBuyerSignals, adSelectionConfig.perBuyerSignals) && Intrinsics.areEqual(this.trustedScoringSignalsUri, adSelectionConfig.trustedScoringSignalsUri)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final AdSelectionSignals getAdSelectionSignals() {
        return this.adSelectionSignals;
    }

    @NotNull
    public final List<AdTechIdentifier> getCustomAudienceBuyers() {
        return this.customAudienceBuyers;
    }

    @NotNull
    public final Uri getDecisionLogicUri() {
        return this.decisionLogicUri;
    }

    @NotNull
    public final Map<AdTechIdentifier, AdSelectionSignals> getPerBuyerSignals() {
        return this.perBuyerSignals;
    }

    @NotNull
    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    @NotNull
    public final AdSelectionSignals getSellerSignals() {
        return this.sellerSignals;
    }

    @NotNull
    public final Uri getTrustedScoringSignalsUri() {
        return this.trustedScoringSignalsUri;
    }

    public int hashCode() {
        return (((((((((((this.seller.hashCode() * 31) + this.decisionLogicUri.hashCode()) * 31) + this.customAudienceBuyers.hashCode()) * 31) + this.adSelectionSignals.hashCode()) * 31) + this.sellerSignals.hashCode()) * 31) + this.perBuyerSignals.hashCode()) * 31) + this.trustedScoringSignalsUri.hashCode();
    }

    @NotNull
    public String toString() {
        return "AdSelectionConfig: seller=" + this.seller + ", decisionLogicUri='" + this.decisionLogicUri + "', customAudienceBuyers=" + this.customAudienceBuyers + ", adSelectionSignals=" + this.adSelectionSignals + ", sellerSignals=" + this.sellerSignals + ", perBuyerSignals=" + this.perBuyerSignals + ", trustedScoringSignalsUri=" + this.trustedScoringSignalsUri;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    private final Map<android.adservices.common.AdTechIdentifier, android.adservices.common.AdSelectionSignals> convertToAdServices(Map<AdTechIdentifier, AdSelectionSignals> map) {
        HashMap hashMap = new HashMap();
        for (AdTechIdentifier adTechIdentifier : map.keySet()) {
            android.adservices.common.AdTechIdentifier convertToAdServices$ads_adservices_release = adTechIdentifier.convertToAdServices$ads_adservices_release();
            AdSelectionSignals adSelectionSignals = map.get(adTechIdentifier);
            hashMap.put(convertToAdServices$ads_adservices_release, adSelectionSignals != null ? adSelectionSignals.convertToAdServices$ads_adservices_release() : null);
        }
        return hashMap;
    }
}
