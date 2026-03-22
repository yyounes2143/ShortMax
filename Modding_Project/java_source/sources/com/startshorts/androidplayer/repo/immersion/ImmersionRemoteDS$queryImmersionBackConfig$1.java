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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {138}, m = "queryImmersionBackConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryImmersionBackConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44097h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44098i;

    /* renamed from: j  reason: collision with root package name */
    int f44099j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryImmersionBackConfig$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryImmersionBackConfig$1> cVar) {
        super(cVar);
        this.f44098i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44097h = obj;
        this.f44099j |= Integer.MIN_VALUE;
        Object e10 = this.f44098i.e(this);
        if (e10 == kotlin.coroutines.intrinsics.a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
