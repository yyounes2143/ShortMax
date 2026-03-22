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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {206}, m = "queryNextEpisodeId-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryNextEpisodeId$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    int f44157h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f44158i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44159j;

    /* renamed from: k  reason: collision with root package name */
    int f44160k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryNextEpisodeId$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryNextEpisodeId$1> cVar) {
        super(cVar);
        this.f44159j = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44158i = obj;
        this.f44160k |= Integer.MIN_VALUE;
        Object w10 = this.f44159j.w(0, this);
        if (w10 == kotlin.coroutines.intrinsics.a.f()) {
            return w10;
        }
        return Result.b(w10);
    }
}
