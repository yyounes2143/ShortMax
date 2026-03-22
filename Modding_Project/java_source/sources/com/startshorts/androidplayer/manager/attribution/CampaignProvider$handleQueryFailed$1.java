package com.startshorts.androidplayer.manager.attribution;

import com.startshorts.androidplayer.repo.config.ConfigRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignProvider$handleQueryFailed$1", f = "CampaignProvider.kt", l = {105}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CampaignProvider$handleQueryFailed$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41872h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignProvider$handleQueryFailed$1(rs.c<? super CampaignProvider$handleQueryFailed$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignProvider$handleQueryFailed$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignProvider$handleQueryFailed$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41872h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ConfigRepo configRepo = ConfigRepo.f43771a;
            this.f41872h = 1;
            if (configRepo.l(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
