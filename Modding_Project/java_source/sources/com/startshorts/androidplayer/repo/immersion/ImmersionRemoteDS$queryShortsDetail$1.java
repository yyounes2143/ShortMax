package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {26}, m = "queryShortsDetail-0E7RQCE")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryShortsDetail$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44123h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44124i;

    /* renamed from: j  reason: collision with root package name */
    int f44125j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryShortsDetail$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryShortsDetail$1> cVar) {
        super(cVar);
        this.f44124i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44123h = obj;
        this.f44125j |= Integer.MIN_VALUE;
        Object j10 = this.f44124i.j(null, 0, this);
        if (j10 == kotlin.coroutines.intrinsics.a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
