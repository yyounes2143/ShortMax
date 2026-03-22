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
@d(c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS", f = "SubsRemoteDS.kt", l = {29}, m = "querySkuList-IoAF18A")
/* loaded from: classes7.dex */
public final class SubsRemoteDS$querySkuList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43471h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SubsRemoteDS f43472i;

    /* renamed from: j  reason: collision with root package name */
    int f43473j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsRemoteDS$querySkuList$1(SubsRemoteDS subsRemoteDS, c<? super SubsRemoteDS$querySkuList$1> cVar) {
        super(cVar);
        this.f43472i = subsRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43471h = obj;
        this.f43473j |= Integer.MIN_VALUE;
        Object f10 = this.f43472i.f(this);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
