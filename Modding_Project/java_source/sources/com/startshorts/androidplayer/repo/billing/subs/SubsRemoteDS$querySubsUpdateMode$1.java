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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {133}, m = "querySubsUpdateMode-BWLJW6A")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$querySubsUpdateMode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43475h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43476i;

    /* renamed from: j  reason: collision with root package name */
    int f43477j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$querySubsUpdateMode$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$querySubsUpdateMode$1> cVar) {
        super(cVar);
        this.f43476i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43475h = obj;
        this.f43477j |= Integer.MIN_VALUE;
        Object g10 = this.f43476i.g(null, null, null, this);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
