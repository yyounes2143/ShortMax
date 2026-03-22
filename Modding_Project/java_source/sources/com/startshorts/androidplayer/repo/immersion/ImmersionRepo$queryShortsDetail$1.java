package com.startshorts.androidplayer.repo.immersion;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {38}, m = "queryShortsDetail-0E7RQCE")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryShortsDetail$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    int f44164h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f44165i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44166j;

    /* renamed from: k  reason: collision with root package name */
    int f44167k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryShortsDetail$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryShortsDetail$1> cVar) {
        super(cVar);
        this.f44166j = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44165i = obj;
        this.f44167k |= Integer.MIN_VALUE;
        Object y10 = this.f44166j.y(null, 0, this);
        if (y10 == kotlin.coroutines.intrinsics.a.f()) {
            return y10;
        }
        return Result.b(y10);
    }
}
