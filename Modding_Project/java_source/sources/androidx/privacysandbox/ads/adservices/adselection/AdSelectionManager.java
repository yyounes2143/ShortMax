package androidx.privacysandbox.ads.adservices.adselection;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import androidx.privacysandbox.ads.adservices.internal.BackCompatManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdSelectionManager.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class AdSelectionManager {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: AdSelectionManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final AdSelectionManager obtain(@NotNull final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            if (adServicesInfo.adServicesVersion() >= 4) {
                return new AdSelectionManagerApi33Ext4Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (AdSelectionManager) BackCompatManager.INSTANCE.getManager(context, "AdSelectionManager", new Function1<Context, AdSelectionManagerApi31Ext9Impl>() { // from class: androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager$Companion$obtain$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final AdSelectionManagerApi31Ext9Impl invoke(Context it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return new AdSelectionManagerApi31Ext9Impl(context);
                    }
                });
            }
            return null;
        }

        private Companion() {
        }
    }

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @Nullable
    public static final AdSelectionManager obtain(@NotNull Context context) {
        return Companion.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @Nullable
    public abstract Object getAdSelectionData(@NotNull GetAdSelectionDataRequest getAdSelectionDataRequest, @NotNull rs.c<? super GetAdSelectionDataOutcome> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @Nullable
    public abstract Object persistAdSelectionResult(@NotNull PersistAdSelectionResultRequest persistAdSelectionResultRequest, @NotNull rs.c<? super AdSelectionOutcome> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext8OptIn
    @Nullable
    public abstract Object reportEvent(@NotNull ReportEventRequest reportEventRequest, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object reportImpression(@NotNull ReportImpressionRequest reportImpressionRequest, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @Nullable
    public abstract Object selectAds(@NotNull AdSelectionConfig adSelectionConfig, @NotNull rs.c<? super AdSelectionOutcome> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext10OptIn
    @Nullable
    public abstract Object selectAds(@NotNull AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig, @NotNull rs.c<? super AdSelectionOutcome> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    @ExperimentalFeatures.Ext8OptIn
    @Nullable
    public abstract Object updateAdCounterHistogram(@NotNull UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest, @NotNull rs.c<? super Unit> cVar);
}
