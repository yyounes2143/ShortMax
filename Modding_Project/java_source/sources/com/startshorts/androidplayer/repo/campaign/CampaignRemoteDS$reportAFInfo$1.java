package com.startshorts.androidplayer.repo.campaign;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {79}, m = "reportAFInfo-bMdYcbs")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportAFInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43598h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43599i;

    /* renamed from: j  reason: collision with root package name */
    int f43600j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportAFInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportAFInfo$1> cVar) {
        super(cVar);
        this.f43599i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43598h = obj;
        this.f43600j |= Integer.MIN_VALUE;
        Object f10 = this.f43599i.f(false, null, null, null, null, null, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
