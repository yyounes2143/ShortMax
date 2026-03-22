package com.startshorts.androidplayer.manager.act;

import com.startshorts.androidplayer.bean.act.ActResource;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ActResourceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActResourceManager$getValidResourceListSuspend$2", f = "ActResourceManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class ActResourceManager$getValidResourceListSuspend$2 extends SuspendLambda implements Function2<g0, c<? super List<? extends ActResource>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41583h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ List<ActResource> f41584i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Integer f41585j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActResourceManager$getValidResourceListSuspend$2(List<ActResource> list, Integer num, c<? super ActResourceManager$getValidResourceListSuspend$2> cVar) {
        super(2, cVar);
        this.f41584i = list;
        this.f41585j = num;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ActResourceManager$getValidResourceListSuspend$2(this.f41584i, this.f41585j, cVar);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(g0 g0Var, c<? super List<ActResource>> cVar) {
        return ((ActResourceManager$getValidResourceListSuspend$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List g10;
        a.f();
        if (this.f41583h == 0) {
            f.b(obj);
            g10 = ActResourceManager.f41582a.g(this.f41584i, this.f41585j);
            return g10;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super List<? extends ActResource>> cVar) {
        return invoke2(g0Var, (c<? super List<ActResource>>) cVar);
    }
}
