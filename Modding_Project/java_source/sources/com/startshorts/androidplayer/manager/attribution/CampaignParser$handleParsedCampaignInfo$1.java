package com.startshorts.androidplayer.manager.attribution;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignParser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser", f = "CampaignParser.kt", l = {187, 213}, m = "handleParsedCampaignInfo")
/* loaded from: classes6.dex */
public final class CampaignParser$handleParsedCampaignInfo$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41844h;

    /* renamed from: i  reason: collision with root package name */
    Object f41845i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41846j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ CampaignParser f41847k;

    /* renamed from: l  reason: collision with root package name */
    int f41848l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CampaignParser$handleParsedCampaignInfo$1(CampaignParser campaignParser, rs.c<? super CampaignParser$handleParsedCampaignInfo$1> cVar) {
        super(cVar);
        this.f41847k = campaignParser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object u10;
        this.f41846j = obj;
        this.f41848l |= Integer.MIN_VALUE;
        u10 = this.f41847k.u(null, this);
        return u10;
    }
}
