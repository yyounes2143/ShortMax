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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {67, 82, 91}, m = "queryNextEpisode-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryNextEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44152h;

    /* renamed from: i  reason: collision with root package name */
    int f44153i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f44154j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44155k;

    /* renamed from: l  reason: collision with root package name */
    int f44156l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryNextEpisode$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryNextEpisode$1> cVar) {
        super(cVar);
        this.f44155k = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44154j = obj;
        this.f44156l |= Integer.MIN_VALUE;
        Object v10 = this.f44155k.v(0, this);
        if (v10 == kotlin.coroutines.intrinsics.a.f()) {
            return v10;
        }
        return Result.b(v10);
    }
}
