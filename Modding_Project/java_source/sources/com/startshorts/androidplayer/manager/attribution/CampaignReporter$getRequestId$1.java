package com.startshorts.androidplayer.manager.attribution;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignReporter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignReporter", f = "CampaignReporter.kt", l = {704}, m = "getRequestId")
/* loaded from: classes6.dex */
public final class CampaignReporter$getRequestId$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41895h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f41896i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ CampaignReporter f41897j;

    /* renamed from: k  reason: collision with root package name */
    int f41898k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignReporter$getRequestId$1(CampaignReporter campaignReporter, rs.c<? super CampaignReporter$getRequestId$1> cVar) {
        super(cVar);
        this.f41897j = campaignReporter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object p10;
        this.f41896i = obj;
        this.f41898k |= Integer.MIN_VALUE;
        p10 = this.f41897j.p(this);
        return p10;
    }
}
