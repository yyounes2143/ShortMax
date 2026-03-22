package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.AdSelectionFromOutcomesConfig;
import android.net.Uri;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSelectionFromOutcomesConfig.kt */
@ExperimentalFeatures.Ext10OptIn
@Metadata
/* loaded from: classes2.dex */
public final class AdSelectionFromOutcomesConfig {
    @NotNull
    private final List<Long> adSelectionIds;
    @NotNull
    private final AdSelectionSignals adSelectionSignals;
    @NotNull
    private Uri selectionLogicUri;
    @NotNull
    private final AdTechIdentifier seller;

    public AdSelectionFromOutcomesConfig(@NotNull AdTechIdentifier seller, @NotNull List<Long> adSelectionIds, @NotNull AdSelectionSignals adSelectionSignals, @NotNull Uri selectionLogicUri) {
        Intrinsics.checkNotNullParameter(seller, "seller");
        Intrinsics.checkNotNullParameter(adSelectionIds, "adSelectionIds");
        Intrinsics.checkNotNullParameter(adSelectionSignals, "adSelectionSignals");
        Intrinsics.checkNotNullParameter(selectionLogicUri, "selectionLogicUri");
        this.seller = seller;
        this.adSelectionIds = adSelectionIds;
        this.adSelectionSignals = adSelectionSignals;
        this.selectionLogicUri = selectionLogicUri;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.adselection.AdSelectionFromOutcomesConfig convertToAdServices$ads_adservices_release() {
        AdSelectionFromOutcomesConfig.Builder selectionSignals;
        AdSelectionFromOutcomesConfig.Builder adSelectionIds;
        AdSelectionFromOutcomesConfig.Builder selectionLogicUri;
        AdSelectionFromOutcomesConfig.Builder seller;
        android.adservices.adselection.AdSelectionFromOutcomesConfig build;
        selectionSignals = o.a().setSelectionSignals(this.adSelectionSignals.convertToAdServices$ads_adservices_release());
        adSelectionIds = selectionSignals.setAdSelectionIds(this.adSelectionIds);
        selectionLogicUri = adSelectionIds.setSelectionLogicUri(this.selectionLogicUri);
        seller = selectionLogicUri.setSeller(this.seller.convertToAdServices$ads_adservices_release());
        build = seller.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…s())\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionFromOutcomesConfig)) {
            return false;
        }
        AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig = (AdSelectionFromOutcomesConfig) obj;
        if (Intrinsics.areEqual(this.seller, adSelectionFromOutcomesConfig.seller) && Intrinsics.areEqual(this.adSelectionIds, adSelectionFromOutcomesConfig.adSelectionIds) && Intrinsics.areEqual(this.adSelectionSignals, adSelectionFromOutcomesConfig.adSelectionSignals) && Intrinsics.areEqual(this.selectionLogicUri, adSelectionFromOutcomesConfig.selectionLogicUri)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<Long> getAdSelectionIds() {
        return this.adSelectionIds;
    }

    @NotNull
    public final AdSelectionSignals getAdSelectionSignals() {
        return this.adSelectionSignals;
    }

    @NotNull
    public final Uri getSelectionLogicUri() {
        return this.selectionLogicUri;
    }

    @NotNull
    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        return (((((this.seller.hashCode() * 31) + this.adSelectionIds.hashCode()) * 31) + this.adSelectionSignals.hashCode()) * 31) + this.selectionLogicUri.hashCode();
    }

    public final void setSelectionLogicUri(@NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<set-?>");
        this.selectionLogicUri = uri;
    }

    @NotNull
    public String toString() {
        return "AdSelectionFromOutcomesConfig: seller=" + this.seller + ", adSelectionIds='" + this.adSelectionIds + "', adSelectionSignals=" + this.adSelectionSignals + ", selectionLogicUri=" + this.selectionLogicUri;
    }
}
