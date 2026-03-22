package com.startshorts.androidplayer.manager.event;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.startshorts.androidplayer.utils.TimeUtil;
import gt.g0;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.EventManager$logAppActive$1", f = "EventManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class EventManager$logAppActive$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42479h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventManager$logAppActive$1(c<? super EventManager$logAppActive$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EventManager$logAppActive$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EventManager$logAppActive$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f42479h == 0) {
            f.b(obj);
            String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
            b bVar = b.f68412a;
            if (!bVar.A(f10)) {
                bVar.K2(f10, true);
                EventManager.s0(EventManager.f42463a, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, null, 0L, 6, null);
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
