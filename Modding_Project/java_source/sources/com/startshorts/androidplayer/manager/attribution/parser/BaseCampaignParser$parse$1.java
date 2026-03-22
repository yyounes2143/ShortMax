package com.startshorts.androidplayer.manager.attribution.parser;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseCampaignParser.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser", f = "BaseCampaignParser.kt", l = {24}, m = "parse$suspendImpl")
/* loaded from: classes6.dex */
public final class BaseCampaignParser$parse$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f41928h;

    /* renamed from: i  reason: collision with root package name */
    boolean f41929i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f41930j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ BaseCampaignParser f41931k;

    /* renamed from: l  reason: collision with root package name */
    int f41932l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseCampaignParser$parse$1(BaseCampaignParser baseCampaignParser, c<? super BaseCampaignParser$parse$1> cVar) {
        super(cVar);
        this.f41931k = baseCampaignParser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41930j = obj;
        this.f41932l |= Integer.MIN_VALUE;
        return BaseCampaignParser.j(this.f41931k, false, this);
    }
}
