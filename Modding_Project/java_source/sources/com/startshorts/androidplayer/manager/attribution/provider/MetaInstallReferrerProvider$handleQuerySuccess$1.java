package com.startshorts.androidplayer.manager.attribution.provider;

import com.startshorts.androidplayer.log.Logger;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider$handleQuerySuccess$1", f = "MetaInstallReferrerProvider.kt", l = {93}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class MetaInstallReferrerProvider$handleQuerySuccess$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42046h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42047i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ MetaInstallReferrerProvider f42048j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetaInstallReferrerProvider$handleQuerySuccess$1(String str, MetaInstallReferrerProvider metaInstallReferrerProvider, rs.c<? super MetaInstallReferrerProvider$handleQuerySuccess$1> cVar) {
        super(2, cVar);
        this.f42047i = str;
        this.f42048j = metaInstallReferrerProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MetaInstallReferrerProvider$handleQuerySuccess$1(this.f42047i, this.f42048j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MetaInstallReferrerProvider$handleQuerySuccess$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f42046h;
        if (i11 != 0) {
            if (i11 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "MetaInstall Provider handleQuerySuccess -> " + this.f42047i);
            MetaInstallReferrerProvider metaInstallReferrerProvider = this.f42048j;
            i10 = metaInstallReferrerProvider.f42041g;
            metaInstallReferrerProvider.h(i10);
            this.f42048j.o();
            this.f42048j.n(this.f42047i);
            ConfigRepo configRepo = ConfigRepo.f43771a;
            this.f42046h = 1;
            if (configRepo.l(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
