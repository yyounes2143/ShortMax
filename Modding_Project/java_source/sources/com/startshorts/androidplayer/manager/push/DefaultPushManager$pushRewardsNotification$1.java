package com.startshorts.androidplayer.manager.push;

import com.startshorts.androidplayer.manager.push.util.PushUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager$pushRewardsNotification$1", f = "DefaultPushManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
final class DefaultPushManager$pushRewardsNotification$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42808h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultPushManager$pushRewardsNotification$1(c<? super DefaultPushManager$pushRewardsNotification$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DefaultPushManager$pushRewardsNotification$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DefaultPushManager$pushRewardsNotification$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f42808h == 0) {
            f.b(obj);
            PushUtil.f42895a.T();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
