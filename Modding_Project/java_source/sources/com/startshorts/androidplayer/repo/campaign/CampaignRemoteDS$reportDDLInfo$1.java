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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {213}, m = "reportDDLInfo-BWLJW6A")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportDDLInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43630h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43631i;

    /* renamed from: j  reason: collision with root package name */
    int f43632j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportDDLInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportDDLInfo$1> cVar) {
        super(cVar);
        this.f43631i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43630h = obj;
        this.f43632j |= Integer.MIN_VALUE;
        Object j10 = this.f43631i.j(null, null, null, this);
        if (j10 == a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
