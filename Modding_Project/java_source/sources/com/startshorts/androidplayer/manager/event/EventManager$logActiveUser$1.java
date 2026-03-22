package com.startshorts.androidplayer.manager.event;

import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import qt.a;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.EventManager$logActiveUser$1", f = "EventManager.kt", l = {1810}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logActiveUser$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,1804:1\n116#2,11:1805\n*S KotlinDebug\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logActiveUser$1\n*L\n281#1:1805,11\n*E\n"})
/* loaded from: classes6.dex */
public final class EventManager$logActiveUser$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42477h;

    /* renamed from: i  reason: collision with root package name */
    int f42478i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventManager$logActiveUser$1(c<? super EventManager$logActiveUser$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EventManager$logActiveUser$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EventManager$logActiveUser$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a aVar;
        a aVar2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42478i;
        if (i10 != 0) {
            if (i10 == 1) {
                aVar2 = (a) this.f42477h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            aVar = EventManager.f42470h;
            this.f42477h = aVar;
            this.f42478i = 1;
            if (aVar.lock(null, this) == f10) {
                return f10;
            }
            aVar2 = aVar;
        }
        try {
            long K = DeviceUtil.f48146a.K();
            b bVar = b.f68412a;
            long Q0 = bVar.Q0();
            if (Q0 == 0 || K - Q0 > 3600000) {
                bVar.c4(K);
                EventManager.s0(EventManager.f42463a, "active_user", null, 0L, 6, null);
            }
            Unit unit = Unit.f60915a;
            aVar2.unlock(null);
            return Unit.f60915a;
        } catch (Throwable th2) {
            aVar2.unlock(null);
            throw th2;
        }
    }
}
