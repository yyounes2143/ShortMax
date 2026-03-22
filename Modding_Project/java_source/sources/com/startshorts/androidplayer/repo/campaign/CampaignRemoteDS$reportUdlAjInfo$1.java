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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {175}, m = "reportUdlAjInfo-hUnOzRk")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportUdlAjInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43669h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43670i;

    /* renamed from: j  reason: collision with root package name */
    int f43671j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportUdlAjInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportUdlAjInfo$1> cVar) {
        super(cVar);
        this.f43670i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43669h = obj;
        this.f43671j |= Integer.MIN_VALUE;
        Object o10 = this.f43670i.o(false, null, null, null, null, this);
        if (o10 == a.f()) {
            return o10;
        }
        return Result.b(o10);
    }
}
