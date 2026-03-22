package ai.turbolink.sdk.device;

import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.content.Context;
import android.os.BatteryManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SystemObserver.kt */
@Metadata
@d(c = "ai.turbolink.sdk.device.SystemObserver$Companion$getCurrentBatteryPct$1", f = "SystemObserver.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SystemObserver$Companion$getCurrentBatteryPct$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemObserver$Companion$getCurrentBatteryPct$1(Context context, c<? super SystemObserver$Companion$getCurrentBatteryPct$1> cVar) {
        super(2, cVar);
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new SystemObserver$Companion$getCurrentBatteryPct$1(this.$context, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((SystemObserver$Companion$getCurrentBatteryPct$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            try {
                Object systemService = this.$context.getSystemService("batterymanager");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.BatteryManager");
                SystemObserver.Companion.setSystemBatteryCapacity(((BatteryManager) systemService).getIntProperty(4));
            } catch (Exception e10) {
                TurboLinkLogger.w("The battery capacity is exception. exception:" + e10.getMessage());
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
