package com.startshorts.androidplayer.repo.event;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.event.EventAdjustTime;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EventRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.event.EventRemoteDS$queryEventAdjustTime$2", f = "EventRemoteDS.kt", l = {26}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EventRemoteDS$queryEventAdjustTime$2 extends SuspendLambda implements Function1<c<? super ServerResult<EventAdjustTime>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44005h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EventRemoteDS$queryEventAdjustTime$2(c<? super EventRemoteDS$queryEventAdjustTime$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new EventRemoteDS$queryEventAdjustTime$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44005h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            long currentTimeMillis = System.currentTimeMillis();
            this.f44005h = 1;
            obj = j10.u1(currentTimeMillis, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<EventAdjustTime>> cVar) {
        return ((EventRemoteDS$queryEventAdjustTime$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
