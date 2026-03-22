package com.startshorts.androidplayer.manager.attribution.pullup;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseCampaignPullUp.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp", f = "BaseCampaignPullUp.kt", l = {14}, m = "query$suspendImpl")
/* loaded from: classes6.dex */
public final class BaseCampaignPullUp$query$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f42078h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f42079i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ BaseCampaignPullUp f42080j;

    /* renamed from: k  reason: collision with root package name */
    int f42081k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseCampaignPullUp$query$1(BaseCampaignPullUp baseCampaignPullUp, rs.c<? super BaseCampaignPullUp$query$1> cVar) {
        super(cVar);
        this.f42080j = baseCampaignPullUp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f42079i = obj;
        this.f42081k |= Integer.MIN_VALUE;
        return BaseCampaignPullUp.b(this.f42080j, null, null, null, this);
    }
}
