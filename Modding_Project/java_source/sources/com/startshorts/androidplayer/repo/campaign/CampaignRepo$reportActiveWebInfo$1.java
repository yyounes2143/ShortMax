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
/* compiled from: CampaignRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo", f = "CampaignRepo.kt", l = {307}, m = "reportActiveWebInfo-BWLJW6A")
/* loaded from: classes7.dex */
public final class CampaignRepo$reportActiveWebInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43706h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ CampaignRepo f43707i;

    /* renamed from: j  reason: collision with root package name */
    int f43708j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignRepo$reportActiveWebInfo$1(CampaignRepo campaignRepo, c<? super CampaignRepo$reportActiveWebInfo$1> cVar) {
        super(cVar);
        this.f43707i = campaignRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43706h = obj;
        this.f43708j |= Integer.MIN_VALUE;
        Object J = this.f43707i.J(null, null, null, this);
        if (J == a.f()) {
            return J;
        }
        return Result.b(J);
    }
}
