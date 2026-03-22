package com.startshorts.androidplayer.repo.push;

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
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo$reportPushInfo$1", f = "PushRepo.kt", l = {359}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PushRepo$reportPushInfo$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44431h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44432i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f44433j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushRepo$reportPushInfo$1(int i10, String str, c<? super PushRepo$reportPushInfo$1> cVar) {
        super(2, cVar);
        this.f44432i = i10;
        this.f44433j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PushRepo$reportPushInfo$1(this.f44432i, this.f44433j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PushRepo$reportPushInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        PushRemoteDS q10;
        Object f10 = a.f();
        int i10 = this.f44431h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            q10 = PushRepo.f44374a.q();
            int i11 = this.f44432i;
            String str = this.f44433j;
            this.f44431h = 1;
            if (q10.j(i11, str, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
