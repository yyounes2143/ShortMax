package com.startshorts.androidplayer.manager.attribution.provider;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignParser;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.repo.config.ConfigRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetaInstallReferrerProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider$handleQueryFailed$1", f = "MetaInstallReferrerProvider.kt", l = {106}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class MetaInstallReferrerProvider$handleQueryFailed$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42043h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42044i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ MetaInstallReferrerProvider f42045j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetaInstallReferrerProvider$handleQueryFailed$1(String str, MetaInstallReferrerProvider metaInstallReferrerProvider, rs.c<? super MetaInstallReferrerProvider$handleQueryFailed$1> cVar) {
        super(2, cVar);
        this.f42044i = str;
        this.f42045j = metaInstallReferrerProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MetaInstallReferrerProvider$handleQueryFailed$1(this.f42044i, this.f42045j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MetaInstallReferrerProvider$handleQueryFailed$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42043h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "handleQueryFailed -> " + this.f42044i);
            this.f42045j.g(this.f42044i);
            this.f42045j.o();
            this.f42045j.n("");
            ud.b.f68412a.U2(true);
            CampaignReporter campaignReporter = CampaignReporter.f41888a;
            if (!campaignReporter.u() && campaignReporter.s()) {
                logger.e("CampaignNewTag", "MetaInstallReferrerProvider handleQueryFailed isAllAttributionHandleNotCampaign");
                CampaignParser.f41836a.x();
            }
            ConfigRepo configRepo = ConfigRepo.f43771a;
            this.f42043h = 1;
            if (configRepo.l(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
