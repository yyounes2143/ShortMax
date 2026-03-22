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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {107}, m = "queryEpisodes-eH_QyT8")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryEpisodes$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44143h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44144i;

    /* renamed from: j  reason: collision with root package name */
    int f44145j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryEpisodes$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryEpisodes$1> cVar) {
        super(cVar);
        this.f44144i = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44143h = obj;
        this.f44145j |= Integer.MIN_VALUE;
        Object s10 = this.f44144i.s(null, null, 0, 0, 0, 0, false, this);
        if (s10 == kotlin.coroutines.intrinsics.a.f()) {
            return s10;
        }
        return Result.b(s10);
    }
}
