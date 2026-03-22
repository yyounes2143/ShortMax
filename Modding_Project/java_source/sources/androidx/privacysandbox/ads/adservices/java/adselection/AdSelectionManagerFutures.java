package androidx.privacysandbox.ads.adservices.java.adselection;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionFromOutcomesConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest;
import androidx.privacysandbox.ads.adservices.adselection.PersistAdSelectionResultRequest;
import androidx.privacysandbox.ads.adservices.adselection.ReportEventRequest;
import androidx.privacysandbox.ads.adservices.adselection.ReportImpressionRequest;
import androidx.privacysandbox.ads.adservices.adselection.UpdateAdCounterHistogramRequest;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.e;
import gt.g;
import gt.k0;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSelectionManagerFutures.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class AdSelectionManagerFutures {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: AdSelectionManagerFutures.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nAdSelectionManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSelectionManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/adselection/AdSelectionManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n1#2:393\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AdSelectionManagerFutures from(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AdSelectionManager obtain = AdSelectionManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext4JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @Nullable
    public static final AdSelectionManagerFutures from(@NotNull Context context) {
        return Companion.from(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @NotNull
    public abstract e<GetAdSelectionDataOutcome> getAdSelectionDataAsync(@NotNull GetAdSelectionDataRequest getAdSelectionDataRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @NotNull
    public abstract e<AdSelectionOutcome> persistAdSelectionResultAsync(@NotNull PersistAdSelectionResultRequest persistAdSelectionResultRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext8OptIn
    @NotNull
    public abstract e<Unit> reportEventAsync(@NotNull ReportEventRequest reportEventRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @NotNull
    public abstract e<Unit> reportImpressionAsync(@NotNull ReportImpressionRequest reportImpressionRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @NotNull
    public abstract e<AdSelectionOutcome> selectAdsAsync(@NotNull AdSelectionConfig adSelectionConfig);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @NotNull
    public abstract e<AdSelectionOutcome> selectAdsAsync(@NotNull AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext8OptIn
    @NotNull
    public abstract e<Unit> updateAdCounterHistogramAsync(@NotNull UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AdSelectionManagerFutures.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api33Ext4JavaImpl extends AdSelectionManagerFutures {
        @Nullable
        private final AdSelectionManager mAdSelectionManager;

        public Api33Ext4JavaImpl(@Nullable AdSelectionManager adSelectionManager) {
            this.mAdSelectionManager = adSelectionManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<GetAdSelectionDataOutcome> getAdSelectionDataAsync(@NotNull GetAdSelectionDataRequest getAdSelectionDataRequest) {
            k0 b10;
            Intrinsics.checkNotNullParameter(getAdSelectionDataRequest, "getAdSelectionDataRequest");
            b10 = g.b(i.a(q0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1(this, getAdSelectionDataRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<AdSelectionOutcome> persistAdSelectionResultAsync(@NotNull PersistAdSelectionResultRequest persistAdSelectionResultRequest) {
            k0 b10;
            Intrinsics.checkNotNullParameter(persistAdSelectionResultRequest, "persistAdSelectionResultRequest");
            b10 = g.b(i.a(q0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$persistAdSelectionResultAsync$1(this, persistAdSelectionResultRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<Unit> reportEventAsync(@NotNull ReportEventRequest reportEventRequest) {
            k0 b10;
            Intrinsics.checkNotNullParameter(reportEventRequest, "reportEventRequest");
            b10 = g.b(i.a(q0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$reportEventAsync$1(this, reportEventRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<Unit> reportImpressionAsync(@NotNull ReportImpressionRequest reportImpressionRequest) {
            k0 b10;
            Intrinsics.checkNotNullParameter(reportImpressionRequest, "reportImpressionRequest");
            b10 = g.b(i.a(q0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$reportImpressionAsync$1(this, reportImpressionRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<AdSelectionOutcome> selectAdsAsync(@NotNull AdSelectionConfig adSelectionConfig) {
            k0 b10;
            Intrinsics.checkNotNullParameter(adSelectionConfig, "adSelectionConfig");
            b10 = g.b(i.a(q0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(this, adSelectionConfig, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<Unit> updateAdCounterHistogramAsync(@NotNull UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest) {
            k0 b10;
            Intrinsics.checkNotNullParameter(updateAdCounterHistogramRequest, "updateAdCounterHistogramRequest");
            b10 = g.b(i.a(q0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1(this, updateAdCounterHistogramRequest, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        @NotNull
        public e<AdSelectionOutcome> selectAdsAsync(@NotNull AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig) {
            k0 b10;
            Intrinsics.checkNotNullParameter(adSelectionFromOutcomesConfig, "adSelectionFromOutcomesConfig");
            b10 = g.b(i.a(q0.a()), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$2(this, adSelectionFromOutcomesConfig, null), 3, null);
            return CoroutineAdapterKt.asListenableFuture$default(b10, null, 1, null);
        }
    }
}
