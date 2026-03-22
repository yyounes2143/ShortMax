package androidx.privacysandbox.ads.adservices.measurement;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.InputEvent;
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
/* compiled from: MeasurementManager.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class MeasurementManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MEASUREMENT_API_STATE_DISABLED = 0;
    public static final int MEASUREMENT_API_STATE_ENABLED = 1;

    /* compiled from: MeasurementManager.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @Nullable
        public final MeasurementManager obtain(@NotNull final Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AdServicesInfo.version=");
            AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
            sb2.append(adServicesInfo.adServicesVersion());
            Log.d("MeasurementManager", sb2.toString());
            if (adServicesInfo.adServicesVersion() >= 5) {
                return new MeasurementManagerApi33Ext5Impl(context);
            }
            if (adServicesInfo.extServicesVersionS() >= 9) {
                return (MeasurementManager) BackCompatManager.INSTANCE.getManager(context, "MeasurementManager", new Function1<Context, MeasurementManagerApi31Ext9Impl>() { // from class: androidx.privacysandbox.ads.adservices.measurement.MeasurementManager$Companion$obtain$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final MeasurementManagerApi31Ext9Impl invoke(Context it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return new MeasurementManagerApi31Ext9Impl(context);
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
    public static final MeasurementManager obtain(@NotNull Context context) {
        return Companion.obtain(context);
    }

    @Nullable
    public abstract Object deleteRegistrations(@NotNull DeletionRequest deletionRequest, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object getMeasurementApiStatus(@NotNull rs.c<? super Integer> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerSource(@NotNull Uri uri, @Nullable InputEvent inputEvent, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @ExperimentalFeatures.RegisterSourceOptIn
    @Nullable
    public abstract Object registerSource(@NotNull SourceRegistrationRequest sourceRegistrationRequest, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerTrigger(@NotNull Uri uri, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerWebSource(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest, @NotNull rs.c<? super Unit> cVar);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @Nullable
    public abstract Object registerWebTrigger(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest, @NotNull rs.c<? super Unit> cVar);
}
