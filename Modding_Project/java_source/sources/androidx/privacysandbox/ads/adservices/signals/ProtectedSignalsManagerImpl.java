package androidx.privacysandbox.ads.adservices.signals;

import android.annotation.SuppressLint;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.annotation.RestrictTo;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProtectedSignalsManagerImpl.kt */
@Metadata
@SuppressLint({"NewApi", "ClassVerificationFailure"})
@ExperimentalFeatures.Ext12OptIn
@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 12)
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nProtectedSignalsManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,55:1\n314#2,11:56\n*S KotlinDebug\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n*L\n40#1:56,11\n*E\n"})
/* loaded from: classes2.dex */
public class ProtectedSignalsManagerImpl extends ProtectedSignalsManager {
    @NotNull
    private final android.adservices.signals.ProtectedSignalsManager protectedSignalsManager;

    public ProtectedSignalsManagerImpl(@NotNull android.adservices.signals.ProtectedSignalsManager protectedSignalsManager) {
        Intrinsics.checkNotNullParameter(protectedSignalsManager, "protectedSignalsManager");
        this.protectedSignalsManager = protectedSignalsManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final android.adservices.signals.UpdateSignalsRequest convertUpdateRequest(UpdateSignalsRequest updateSignalsRequest) {
        android.adservices.signals.UpdateSignalsRequest build;
        e.a();
        build = d.a(updateSignalsRequest.getUpdateUri()).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(request.updateUri).build()");
        return build;
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS")
    @DoNotInline
    static /* synthetic */ Object updateSignals$suspendImpl(ProtectedSignalsManagerImpl protectedSignalsManagerImpl, UpdateSignalsRequest updateSignalsRequest, rs.c<? super Unit> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        protectedSignalsManagerImpl.protectedSignalsManager.updateSignals(protectedSignalsManagerImpl.convertUpdateRequest(updateSignalsRequest), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            f.c(cVar);
        }
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            return B;
        }
        return Unit.f60915a;
    }

    @Override // androidx.privacysandbox.ads.adservices.signals.ProtectedSignalsManager
    @RequiresPermission("android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS")
    @DoNotInline
    @Nullable
    public Object updateSignals(@NotNull UpdateSignalsRequest updateSignalsRequest, @NotNull rs.c<? super Unit> cVar) {
        return updateSignals$suspendImpl(this, updateSignalsRequest, cVar);
    }
}
