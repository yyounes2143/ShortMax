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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {74}, m = "gPayRecoverPremium-gIAlu-s")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$gPayRecoverPremium$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43453h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43454i;

    /* renamed from: j  reason: collision with root package name */
    int f43455j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$gPayRecoverPremium$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$gPayRecoverPremium$1> cVar) {
        super(cVar);
        this.f43454i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43453h = obj;
        this.f43455j |= Integer.MIN_VALUE;
        Object c10 = this.f43454i.c(null, this);
        if (c10 == kotlin.coroutines.intrinsics.a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
