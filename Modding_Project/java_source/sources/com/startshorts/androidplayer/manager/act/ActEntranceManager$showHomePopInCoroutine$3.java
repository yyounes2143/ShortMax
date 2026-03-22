package com.startshorts.androidplayer.manager.act;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActEntranceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActEntranceManager$showHomePopInCoroutine$3", f = "ActEntranceManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ActEntranceManager$showHomePopInCoroutine$3 extends SuspendLambda implements Function2<g0, c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41577h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActEntranceManager$showHomePopInCoroutine$3(c<? super ActEntranceManager$showHomePopInCoroutine$3> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ActEntranceManager$showHomePopInCoroutine$3(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Boolean> cVar) {
        return ((ActEntranceManager$showHomePopInCoroutine$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ei.c cVar;
        a.f();
        if (this.f41577h == 0) {
            f.b(obj);
            cVar = ActEntranceManager.f41564b;
            boolean z10 = false;
            if (cVar != null && cVar.isShowing()) {
                z10 = true;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
