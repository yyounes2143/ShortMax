package com.startshorts.androidplayer.repo.billing.subs;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {57}, m = "gPayExchangePremium-hUnOzRk")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayExchangePremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43445h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43446i;

    /* renamed from: j  reason: collision with root package name */
    int f43447j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayExchangePremium$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$gPayExchangePremium$1> cVar) {
        super(cVar);
        this.f43446i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43445h = obj;
        this.f43447j |= Integer.MIN_VALUE;
        Object b10 = this.f43446i.b(null, null, null, null, null, this);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
