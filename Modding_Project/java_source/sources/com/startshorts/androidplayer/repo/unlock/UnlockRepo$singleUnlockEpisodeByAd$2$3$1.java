package com.startshorts.androidplayer.repo.unlock;

import com.startshorts.androidplayer.R$string;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: UnlockRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo$singleUnlockEpisodeByAd$2$3$1", f = "UnlockRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class UnlockRepo$singleUnlockEpisodeByAd$2$3$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44743h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UnlockRepo$singleUnlockEpisodeByAd$2$3$1(c<? super UnlockRepo$singleUnlockEpisodeByAd$2$3$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new UnlockRepo$singleUnlockEpisodeByAd$2$3$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((UnlockRepo$singleUnlockEpisodeByAd$2$3$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44743h == 0) {
            f.b(obj);
            u.j(u.f51776a, R$string.common_unknown_exception, 0, 2, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
