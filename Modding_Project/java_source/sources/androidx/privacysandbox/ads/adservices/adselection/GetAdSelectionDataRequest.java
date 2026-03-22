package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.adselection.GetAdSelectionDataRequest;
import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetAdSelectionDataRequest.kt */
@ExperimentalFeatures.Ext10OptIn
@Metadata
/* loaded from: classes2.dex */
public final class GetAdSelectionDataRequest {
    @Nullable
    private final Uri coordinatorOriginUri;
    @NotNull
    private final AdTechIdentifier seller;

    /* compiled from: GetAdSelectionDataRequest.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext10Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: GetAdSelectionDataRequest.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.adselection.GetAdSelectionDataRequest convertGetAdSelectionDataRequest(@NotNull GetAdSelectionDataRequest request) {
                GetAdSelectionDataRequest.Builder seller;
                android.adservices.adselection.GetAdSelectionDataRequest build;
                Intrinsics.checkNotNullParameter(request, "request");
                seller = h0.a().setSeller(request.getSeller().convertToAdServices$ads_adservices_release());
                build = seller.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    /* compiled from: GetAdSelectionDataRequest.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 12), @RequiresExtension(extension = 31, version = 12)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext12Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: GetAdSelectionDataRequest.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.adselection.GetAdSelectionDataRequest convertGetAdSelectionDataRequest(@NotNull GetAdSelectionDataRequest request) {
                GetAdSelectionDataRequest.Builder seller;
                GetAdSelectionDataRequest.Builder coordinatorOriginUri;
                android.adservices.adselection.GetAdSelectionDataRequest build;
                Intrinsics.checkNotNullParameter(request, "request");
                seller = h0.a().setSeller(request.getSeller().convertToAdServices$ads_adservices_release());
                coordinatorOriginUri = seller.setCoordinatorOriginUri(request.getCoordinatorOriginUri());
                build = coordinatorOriginUri.build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder()\n              …                 .build()");
                return build;
            }

            private Companion() {
            }
        }

        private Ext12Impl() {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetAdSelectionDataRequest(@NotNull AdTechIdentifier seller) {
        this(seller, null, 2, null);
        Intrinsics.checkNotNullParameter(seller, "seller");
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @SuppressLint({"NewApi"})
    @NotNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final android.adservices.adselection.GetAdSelectionDataRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 12 && adServicesInfo.extServicesVersionS() < 12) {
            return Ext10Impl.Companion.convertGetAdSelectionDataRequest(this);
        }
        return Ext12Impl.Companion.convertGetAdSelectionDataRequest(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetAdSelectionDataRequest)) {
            return false;
        }
        GetAdSelectionDataRequest getAdSelectionDataRequest = (GetAdSelectionDataRequest) obj;
        if (Intrinsics.areEqual(this.seller, getAdSelectionDataRequest.seller) && Intrinsics.areEqual(this.coordinatorOriginUri, getAdSelectionDataRequest.coordinatorOriginUri)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Uri getCoordinatorOriginUri() {
        return this.coordinatorOriginUri;
    }

    @NotNull
    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.seller.hashCode() * 31;
        Uri uri = this.coordinatorOriginUri;
        if (uri != null) {
            i10 = uri.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @NotNull
    public String toString() {
        return "GetAdSelectionDataRequest: seller=" + this.seller + ", coordinatorOriginUri=" + this.coordinatorOriginUri;
    }

    public GetAdSelectionDataRequest(@NotNull AdTechIdentifier seller, @Nullable Uri uri) {
        Intrinsics.checkNotNullParameter(seller, "seller");
        this.seller = seller;
        this.coordinatorOriginUri = uri;
    }

    public /* synthetic */ GetAdSelectionDataRequest(AdTechIdentifier adTechIdentifier, Uri uri, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(adTechIdentifier, (i10 & 2) != 0 ? null : uri);
    }

    @ExperimentalFeatures.Ext12OptIn
    public static /* synthetic */ void getCoordinatorOriginUri$annotations() {
    }
}
