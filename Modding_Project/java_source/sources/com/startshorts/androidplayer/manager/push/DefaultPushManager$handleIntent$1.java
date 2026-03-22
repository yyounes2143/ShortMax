package com.startshorts.androidplayer.manager.push;

import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.event.EventRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager$handleIntent$1", f = "DefaultPushManager.kt", l = {202}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class DefaultPushManager$handleIntent$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42781h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42782i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42783j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$handleIntent$1(String str, DefaultPushManager defaultPushManager, c<? super DefaultPushManager$handleIntent$1> cVar) {
        super(2, cVar);
        this.f42782i = str;
        this.f42783j = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DefaultPushManager$handleIntent$1(this.f42782i, this.f42783j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DefaultPushManager$handleIntent$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean F;
        Object S;
        Object f10 = a.f();
        int i10 = this.f42781h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (Intrinsics.areEqual(this.f42782i, "android.intent.action.TIME_SET")) {
                EventRepo.f44011a.b();
            }
            EventManager eventManager = EventManager.f42463a;
            eventManager.U();
            eventManager.Y();
            EventManager.s(eventManager, false, 1, null);
            PushRepo.f44374a.w();
            F = this.f42783j.F();
            if (F) {
                DefaultPushManager defaultPushManager = this.f42783j;
                this.f42781h = 1;
                S = defaultPushManager.S(this);
                if (S == f10) {
                    return f10;
                }
            }
        }
        this.f42783j.Q();
        return Unit.f60915a;
    }
}
