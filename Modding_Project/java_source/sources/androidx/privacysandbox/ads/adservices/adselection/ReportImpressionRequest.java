package androidx.privacysandbox.ads.adservices.adselection;

import android.annotation.SuppressLint;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ReportImpressionRequest.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes2.dex */
public final class ReportImpressionRequest {
    @NotNull
    private final AdSelectionConfig adSelectionConfig;
    private final long adSelectionId;

    /* compiled from: ReportImpressionRequest.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 10), @RequiresExtension(extension = 31, version = 10)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext10Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: ReportImpressionRequest.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(@NotNull ReportImpressionRequest request) {
                Intrinsics.checkNotNullParameter(request, "request");
                if (Intrinsics.areEqual(request.getAdSelectionConfig(), AdSelectionConfig.Companion.getEMPTY())) {
                    u0.a();
                    return s0.a(request.getAdSelectionId());
                }
                u0.a();
                return t0.a(request.getAdSelectionId(), request.getAdSelectionConfig().convertToAdServices$ads_adservices_release());
            }

            private Companion() {
            }
        }

        private Ext10Impl() {
        }
    }

    /* compiled from: ReportImpressionRequest.kt */
    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 4), @RequiresExtension(extension = 31, version = 9)})
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Ext4Impl {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: ReportImpressionRequest.kt */
        @Metadata
        /* loaded from: classes2.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(@NotNull ReportImpressionRequest request) {
                Intrinsics.checkNotNullParameter(request, "request");
                if (!Intrinsics.areEqual(request.getAdSelectionConfig(), AdSelectionConfig.Companion.getEMPTY())) {
                    u0.a();
                    return t0.a(request.getAdSelectionId(), request.getAdSelectionConfig().convertToAdServices$ads_adservices_release());
                }
                throw new UnsupportedOperationException("adSelectionConfig is mandatory forAPI versions lower than ext 10");
            }

            private Companion() {
            }
        }

        private Ext4Impl() {
        }
    }

    public ReportImpressionRequest(long j10, @NotNull AdSelectionConfig adSelectionConfig) {
        Intrinsics.checkNotNullParameter(adSelectionConfig, "adSelectionConfig");
        this.adSelectionId = j10;
        this.adSelectionConfig = adSelectionConfig;
    }

    @SuppressLint({"NewApi"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.adselection.ReportImpressionRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() < 10 && adServicesInfo.extServicesVersionS() < 10) {
            return Ext4Impl.Companion.convertReportImpressionRequest(this);
        }
        return Ext10Impl.Companion.convertReportImpressionRequest(this);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportImpressionRequest)) {
            return false;
        }
        ReportImpressionRequest reportImpressionRequest = (ReportImpressionRequest) obj;
        if (this.adSelectionId == reportImpressionRequest.adSelectionId && Intrinsics.areEqual(this.adSelectionConfig, reportImpressionRequest.adSelectionConfig)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final AdSelectionConfig getAdSelectionConfig() {
        return this.adSelectionConfig;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public int hashCode() {
        return (Long.hashCode(this.adSelectionId) * 31) + this.adSelectionConfig.hashCode();
    }

    @NotNull
    public String toString() {
        return "ReportImpressionRequest: adSelectionId=" + this.adSelectionId + ", adSelectionConfig=" + this.adSelectionConfig;
    }

    @ExperimentalFeatures.Ext8OptIn
    public ReportImpressionRequest(long j10) {
        this(j10, AdSelectionConfig.Companion.getEMPTY());
    }
}
