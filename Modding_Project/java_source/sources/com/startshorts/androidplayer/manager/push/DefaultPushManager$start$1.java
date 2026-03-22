package com.startshorts.androidplayer.manager.push;

import com.startshorts.androidplayer.log.Logger;
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
/* compiled from: DefaultPushManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.DefaultPushManager$start$1", f = "DefaultPushManager.kt", l = {531}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDefaultPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultPushManager.kt\ncom/startshorts/androidplayer/manager/push/DefaultPushManager$start$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,525:1\n116#2,11:526\n*S KotlinDebug\n*F\n+ 1 DefaultPushManager.kt\ncom/startshorts/androidplayer/manager/push/DefaultPushManager$start$1\n*L\n74#1:526,11\n*E\n"})
/* loaded from: classes6.dex */
final class DefaultPushManager$start$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42819h;

    /* renamed from: i  reason: collision with root package name */
    Object f42820i;

    /* renamed from: j  reason: collision with root package name */
    int f42821j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DefaultPushManager f42822k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultPushManager$start$1(DefaultPushManager defaultPushManager, c<? super DefaultPushManager$start$1> cVar) {
        super(2, cVar);
        this.f42822k = defaultPushManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DefaultPushManager$start$1(this.f42822k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DefaultPushManager$start$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a aVar;
        DefaultPushManager defaultPushManager;
        boolean z10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42821j;
        if (i10 != 0) {
            if (i10 == 1) {
                defaultPushManager = (DefaultPushManager) this.f42820i;
                aVar = (a) this.f42819h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            aVar = this.f42822k.f42764b;
            DefaultPushManager defaultPushManager2 = this.f42822k;
            this.f42819h = aVar;
            this.f42820i = defaultPushManager2;
            this.f42821j = 1;
            if (aVar.lock(null, this) == f10) {
                return f10;
            }
            defaultPushManager = defaultPushManager2;
        }
        try {
            z10 = defaultPushManager.f42763a;
            if (z10) {
                return Unit.f60915a;
            }
            Logger.f41511a.h("DefaultPushManager", "start");
            defaultPushManager.f42763a = true;
            defaultPushManager.O();
            defaultPushManager.Q();
            Unit unit = Unit.f60915a;
            aVar.unlock(null);
            return Unit.f60915a;
        } finally {
            aVar.unlock(null);
        }
    }
}
