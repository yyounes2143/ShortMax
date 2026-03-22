package com.startshorts.androidplayer.repo.billing.subs;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.api.base.p;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function1;
import rs.c;
import zc.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$gPayRecoverPremium$2", f = "SubsRemoteDS.kt", l = {75}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayRecoverPremium$2 extends SuspendLambda implements Function1<c<? super ServerResult<GPayExchangePremiumResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43456h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ f f43457i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayRecoverPremium$2(f fVar, c<? super SubsRemoteDS$gPayRecoverPremium$2> cVar) {
        super(1, cVar);
        this.f43457i = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new SubsRemoteDS$gPayRecoverPremium$2(this.f43457i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43456h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43457i.d().get(0);
            String f11 = this.f43457i.f();
            String h10 = this.f43457i.h();
            if (h10 == null) {
                h10 = "";
            }
            String f12 = p.f41802a.f();
            this.f43456h = 1;
            obj = k.a.C0617a.g(j10, false, str, f11, h10, f12, this, 1, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<GPayExchangePremiumResult>> cVar) {
        return ((SubsRemoteDS$gPayRecoverPremium$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
