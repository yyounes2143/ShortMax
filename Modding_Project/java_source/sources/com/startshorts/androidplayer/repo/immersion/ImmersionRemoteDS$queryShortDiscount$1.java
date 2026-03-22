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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS", f = "ImmersionRemoteDS.kt", l = {130}, m = "queryShortDiscount-BWLJW6A")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryShortDiscount$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44116h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRemoteDS f44117i;

    /* renamed from: j  reason: collision with root package name */
    int f44118j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryShortDiscount$1(ImmersionRemoteDS immersionRemoteDS, c<? super ImmersionRemoteDS$queryShortDiscount$1> cVar) {
        super(cVar);
        this.f44117i = immersionRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44116h = obj;
        this.f44118j |= Integer.MIN_VALUE;
        Object i10 = this.f44117i.i(0, null, null, this);
        if (i10 == kotlin.coroutines.intrinsics.a.f()) {
            return i10;
        }
        return Result.b(i10);
    }
}
