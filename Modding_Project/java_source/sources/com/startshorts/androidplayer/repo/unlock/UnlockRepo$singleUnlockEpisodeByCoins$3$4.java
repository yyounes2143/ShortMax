package com.startshorts.androidplayer.repo.unlock;

import com.startshorts.androidplayer.bean.exception.ResponseException;
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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo$singleUnlockEpisodeByCoins$3$4", f = "UnlockRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class UnlockRepo$singleUnlockEpisodeByCoins$3$4 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44755h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ResponseException f44756i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$singleUnlockEpisodeByCoins$3$4(ResponseException responseException, c<? super UnlockRepo$singleUnlockEpisodeByCoins$3$4> cVar) {
        super(2, cVar);
        this.f44756i = responseException;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new UnlockRepo$singleUnlockEpisodeByCoins$3$4(this.f44756i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((UnlockRepo$singleUnlockEpisodeByCoins$3$4) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44755h == 0) {
            f.b(obj);
            u.k(u.f51776a, this.f44756i.getMessage(), 0, 2, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
