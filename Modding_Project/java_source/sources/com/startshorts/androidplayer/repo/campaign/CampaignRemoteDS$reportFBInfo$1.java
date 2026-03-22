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
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS", f = "CampaignRemoteDS.kt", l = {59}, m = "reportFBInfo-hUnOzRk")
/* loaded from: classes7.dex */
public final class CampaignRemoteDS$reportFBInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43637h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRemoteDS f43638i;

    /* renamed from: j  reason: collision with root package name */
    int f43639j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRemoteDS$reportFBInfo$1(CampaignRemoteDS campaignRemoteDS, c<? super CampaignRemoteDS$reportFBInfo$1> cVar) {
        super(cVar);
        this.f43638i = campaignRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43637h = obj;
        this.f43639j |= Integer.MIN_VALUE;
        Object k10 = this.f43638i.k(false, null, null, null, 0, this);
        if (k10 == a.f()) {
            return k10;
        }
        return Result.b(k10);
    }
}
