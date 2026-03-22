package com.startshorts.androidplayer.repo.campaign;

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
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportInstallInfo$1", f = "CampaignRepo.kt", l = {187}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportInstallInfo$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43719h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignRepo$reportInstallInfo$1(c<? super CampaignRepo$reportInstallInfo$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new CampaignRepo$reportInstallInfo$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((CampaignRepo$reportInstallInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CampaignRemoteDS s10;
        Object l10;
        Object f10 = a.f();
        int i10 = this.f43719h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                l10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            s10 = CampaignRepo.f43678a.s();
            this.f43719h = 1;
            l10 = s10.l(this);
            if (l10 == f10) {
                return f10;
            }
        }
        if (Result.j(l10)) {
            b.f68412a.X3(true);
        }
        CampaignRepo.f43684g = false;
        return Unit.f60915a;
    }
}
