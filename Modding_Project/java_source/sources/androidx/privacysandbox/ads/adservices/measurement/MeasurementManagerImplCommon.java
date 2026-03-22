package androidx.privacysandbox.ads.adservices.measurement;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.view.InputEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MeasurementManagerImplCommon.kt */
@RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 5), @RequiresExtension(extension = 31, version = 9)})
@Metadata
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nMeasurementManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,130:1\n314#2,11:131\n314#2,11:142\n314#2,11:153\n314#2,11:164\n314#2,11:175\n314#2,11:186\n*S KotlinDebug\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon\n*L\n44#1:131,11\n56#1:142,11\n69#1:153,11\n81#1:164,11\n111#1:175,11\n123#1:186,11\n*E\n"})
/* loaded from: classes2.dex */
public class MeasurementManagerImplCommon extends MeasurementManager {
    @NotNull
    private final android.adservices.measurement.MeasurementManager mMeasurementManager;

    public MeasurementManagerImplCommon(@NotNull android.adservices.measurement.MeasurementManager mMeasurementManager) {
        Intrinsics.checkNotNullParameter(mMeasurementManager, "mMeasurementManager");
        this.mMeasurementManager = mMeasurementManager;
    }

    @DoNotInline
    static /* synthetic */ Object deleteRegistrations$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, DeletionRequest deletionRequest, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        measurementManagerImplCommon.getMMeasurementManager().deleteRegistrations(deletionRequest.convertToAdServices$ads_adservices_release(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    static /* synthetic */ Object getMeasurementApiStatus$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, rs.c<? super Integer> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        measurementManagerImplCommon.getMMeasurementManager().getMeasurementApiStatus(new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    @ExperimentalFeatures.RegisterSourceOptIn
    static /* synthetic */ Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, SourceRegistrationRequest sourceRegistrationRequest, rs.c<? super Unit> cVar) {
        Object f10 = kotlinx.coroutines.i.f(new MeasurementManagerImplCommon$registerSource$4(sourceRegistrationRequest, measurementManagerImplCommon, null), cVar);
        return f10 == kotlin.coroutines.intrinsics.a.f() ? f10 : Unit.f60915a;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    static /* synthetic */ Object registerTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        measurementManagerImplCommon.getMMeasurementManager().registerTrigger(uri, new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    static /* synthetic */ Object registerWebSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebSourceRegistrationRequest webSourceRegistrationRequest, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        measurementManagerImplCommon.getMMeasurementManager().registerWebSource(webSourceRegistrationRequest.convertToAdServices$ads_adservices_release(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    static /* synthetic */ Object registerWebTrigger$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, WebTriggerRegistrationRequest webTriggerRegistrationRequest, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        measurementManagerImplCommon.getMMeasurementManager().registerWebTrigger(webTriggerRegistrationRequest.convertToAdServices$ads_adservices_release(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @DoNotInline
    @Nullable
    public Object deleteRegistrations(@NotNull DeletionRequest deletionRequest, @NotNull rs.c<? super Unit> cVar) {
        return deleteRegistrations$suspendImpl(this, deletionRequest, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final android.adservices.measurement.MeasurementManager getMMeasurementManager() {
        return this.mMeasurementManager;
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    @Nullable
    public Object getMeasurementApiStatus(@NotNull rs.c<? super Integer> cVar) {
        return getMeasurementApiStatus$suspendImpl(this, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    @Nullable
    public Object registerSource(@NotNull Uri uri, @Nullable InputEvent inputEvent, @NotNull rs.c<? super Unit> cVar) {
        return registerSource$suspendImpl(this, uri, inputEvent, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    @Nullable
    public Object registerTrigger(@NotNull Uri uri, @NotNull rs.c<? super Unit> cVar) {
        return registerTrigger$suspendImpl(this, uri, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    @Nullable
    public Object registerWebSource(@NotNull WebSourceRegistrationRequest webSourceRegistrationRequest, @NotNull rs.c<? super Unit> cVar) {
        return registerWebSource$suspendImpl(this, webSourceRegistrationRequest, cVar);
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    @Nullable
    public Object registerWebTrigger(@NotNull WebTriggerRegistrationRequest webTriggerRegistrationRequest, @NotNull rs.c<? super Unit> cVar) {
        return registerWebTrigger$suspendImpl(this, webTriggerRegistrationRequest, cVar);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    static /* synthetic */ Object registerSource$suspendImpl(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, InputEvent inputEvent, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        measurementManagerImplCommon.getMMeasurementManager().registerSource(uri, inputEvent, new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B == kotlin.coroutines.intrinsics.a.f() ? B : Unit.f60915a;
    }

    @Override // androidx.privacysandbox.ads.adservices.measurement.MeasurementManager
    @Nullable
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")
    @DoNotInline
    @ExperimentalFeatures.RegisterSourceOptIn
    public Object registerSource(@NotNull SourceRegistrationRequest sourceRegistrationRequest, @NotNull rs.c<? super Unit> cVar) {
        return registerSource$suspendImpl(this, sourceRegistrationRequest, cVar);
    }
}
