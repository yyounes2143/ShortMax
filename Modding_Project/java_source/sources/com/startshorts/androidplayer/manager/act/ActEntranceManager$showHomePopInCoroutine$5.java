package com.startshorts.androidplayer.manager.act;

import android.content.Context;
import com.startshorts.androidplayer.bean.act.ActResource;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActEntranceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActEntranceManager$showHomePopInCoroutine$5", f = "ActEntranceManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ActEntranceManager$showHomePopInCoroutine$5 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41578h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<ActResource> f41579i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f41580j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f41581k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActEntranceManager$showHomePopInCoroutine$5(List<ActResource> list, Context context, Function0<Unit> function0, c<? super ActEntranceManager$showHomePopInCoroutine$5> cVar) {
        super(2, cVar);
        this.f41579i = list;
        this.f41580j = context;
        this.f41581k = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ActEntranceManager$showHomePopInCoroutine$5(this.f41579i, this.f41580j, this.f41581k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ActEntranceManager$showHomePopInCoroutine$5) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f41578h == 0) {
            f.b(obj);
            ActEntranceManager.f41563a.n(this.f41579i, this.f41580j, this.f41581k);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
