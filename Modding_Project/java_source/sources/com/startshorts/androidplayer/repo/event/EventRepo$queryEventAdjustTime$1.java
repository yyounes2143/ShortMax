package com.startshorts.androidplayer.repo.event;

import com.startshorts.androidplayer.bean.event.EventAdjustTime;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.event.EventRepo$queryEventAdjustTime$1", f = "EventRepo.kt", l = {40}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EventRepo$queryEventAdjustTime$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44013h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventRepo$queryEventAdjustTime$1(c<? super EventRepo$queryEventAdjustTime$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new EventRepo$queryEventAdjustTime$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((EventRepo$queryEventAdjustTime$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        EventRemoteDS eventRemoteDS;
        Object a10;
        Object f10 = a.f();
        int i10 = this.f44013h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            eventRemoteDS = EventRepo.f44012b;
            this.f44013h = 1;
            a10 = eventRemoteDS.a(this);
            if (a10 == f10) {
                return f10;
            }
        }
        if (Result.j(a10)) {
            EventAdjustTime eventAdjustTime = (EventAdjustTime) a10;
            if (eventAdjustTime == null) {
                return Unit.f60915a;
            }
            EventManager.f42463a.l1(eventAdjustTime.getDiffTimeLong());
            if (ud.a.f68411a.t() && !fk.a.f51702a.b() && !DeviceUtil.f48146a.b0()) {
                fk.c.f51707a.b(true);
            }
        }
        return Unit.f60915a;
    }
}
