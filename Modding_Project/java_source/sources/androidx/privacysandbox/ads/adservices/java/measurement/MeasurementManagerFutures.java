package androidx.privacysandbox.ads.adservices.java.measurement;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.measurement.DeletionRequest;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import androidx.privacysandbox.ads.adservices.measurement.SourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebSourceRegistrationRequest;
import androidx.privacysandbox.ads.adservices.measurement.WebTriggerRegistrationRequest;
import com.google.common.util.concurrent.e;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MeasurementManagerFutures.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class MeasurementManagerFutures {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: MeasurementManagerFutures.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMeasurementManagerFutures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasurementManagerFutures.kt\nandroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n1#2:209\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final MeasurementManagerFutures from(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            MeasurementManager obtain = MeasurementManager.Companion.obtain(context);
            if (obtain != null) {
                return new Api33Ext5JavaImpl(obtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    @Nullable
    public static final MeasurementManagerFutures from(@NotNull Context context) {
        return Companion.from(context);
    }

    @NotNull
    public abstract e<Unit> deleteRegistrationsAsync(@NotNull DeletionRequest deletionRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @NotNull
    public abstract e<Integer> getMeasurementApiStatusAsync();

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @NotNull
    public abstract e<Unit> registerSourceAsync(@NotNull Uri uri, @Nullable InputEvent inputEvent);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @ExperimentalFeatures.RegisterSourceOptIn
    @NotNull
    public abstract e<Unit> registerSourceAsync(@NotNull SourceRegistrationRequest sourceRegistrationRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @NotNull
    public abstract e<Unit> registerTriggerAsync(@NotNull Uri uri);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @NotNull
    public abstract e<Unit> registerWebSourceAsync(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @NotNull
    public abstract e<Unit> registerWebTriggerAsync(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MeasurementManagerFutures.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Api33Ext5JavaImpl extends MeasurementManagerFutures {
        @NotNull
        private final MeasurementManager mMeasurementManager;

        public Api33Ext5JavaImpl(@NotNull MeasurementManager mMeasurementManager) {
            Intrinsics.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
            this.mMeasurementManager = mMeasurementManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @NotNull
        public e<Unit> deleteRegistrationsAsync(@NotNull DeletionRequest deletionRequest) {
            Intrinsics.checkNotNullParameter(deletionRequest, "deletionRequest");
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this, deletionRequest, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @NotNull
        public e<Integer> getMeasurementApiStatusAsync() {
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$getMeasurementApiStatusAsync$1(this, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @NotNull
        public e<Unit> registerSourceAsync(@NotNull Uri attributionSource, @Nullable InputEvent inputEvent) {
            Intrinsics.checkNotNullParameter(attributionSource, "attributionSource");
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$1(this, attributionSource, inputEvent, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @NotNull
        public e<Unit> registerTriggerAsync(@NotNull Uri trigger) {
            Intrinsics.checkNotNullParameter(trigger, "trigger");
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerTriggerAsync$1(this, trigger, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @NotNull
        public e<Unit> registerWebSourceAsync(@NotNull WebSourceRegistrationRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebSourceAsync$1(this, request, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @NotNull
        public e<Unit> registerWebTriggerAsync(@NotNull WebTriggerRegistrationRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerWebTriggerAsync$1(this, request, null), 3, null), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures
        @NotNull
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
        @DoNotInline
        @ExperimentalFeatures.RegisterSourceOptIn
        public e<Unit> registerSourceAsync(@NotNull SourceRegistrationRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return CoroutineAdapterKt.asListenableFuture$default(gt.e.b(i.a(q0.a()), null, null, new MeasurementManagerFutures$Api33Ext5JavaImpl$registerSourceAsync$2(this, request, null), 3, null), null, 1, null);
        }
    }
}
