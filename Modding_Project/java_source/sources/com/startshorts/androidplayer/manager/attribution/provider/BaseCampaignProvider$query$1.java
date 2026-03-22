package com.startshorts.androidplayer.manager.attribution.provider;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseCampaignProvider.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider", f = "BaseCampaignProvider.kt", l = {65}, m = "query$suspendImpl")
/* loaded from: classes6.dex */
public final class BaseCampaignProvider$query$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42013h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42014i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BaseCampaignProvider f42015j;

    /* renamed from: k  reason: collision with root package name */
    int f42016k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseCampaignProvider$query$1(BaseCampaignProvider baseCampaignProvider, rs.c<? super BaseCampaignProvider$query$1> cVar) {
        super(cVar);
        this.f42015j = baseCampaignProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42014i = obj;
        this.f42016k |= Integer.MIN_VALUE;
        return BaseCampaignProvider.k(this.f42015j, null, this);
    }
}
