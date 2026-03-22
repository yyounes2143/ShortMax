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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {115}, m = "queryImmersionBackShorts-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryImmersionBackShorts$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44101h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44102i;

    /* renamed from: j  reason: collision with root package name */
    int f44103j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryImmersionBackShorts$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryImmersionBackShorts$1> cVar) {
        super(cVar);
        this.f44102i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44101h = obj;
        this.f44103j |= Integer.MIN_VALUE;
        Object f10 = this.f44102i.f(0, this);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
