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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {177}, m = "queryFirstEpisode-BWLJW6A")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryFirstEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44146h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44147i;

    /* renamed from: j  reason: collision with root package name */
    int f44148j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryFirstEpisode$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryFirstEpisode$1> cVar) {
        super(cVar);
        this.f44147i = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44146h = obj;
        this.f44148j |= Integer.MIN_VALUE;
        Object t10 = this.f44147i.t(null, null, false, this);
        if (t10 == kotlin.coroutines.intrinsics.a.f()) {
            return t10;
        }
        return Result.b(t10);
    }
}
