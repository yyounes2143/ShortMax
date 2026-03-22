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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {148}, m = "queryEpisodeIdByEpisodeNum-0E7RQCE")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryEpisodeIdByEpisodeNum$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    int f44135h;

    /* renamed from: i  reason: collision with root package name */
    Object f44136i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f44137j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44138k;

    /* renamed from: l  reason: collision with root package name */
    int f44139l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryEpisodeIdByEpisodeNum$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryEpisodeIdByEpisodeNum$1> cVar) {
        super(cVar);
        this.f44138k = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44137j = obj;
        this.f44139l |= Integer.MIN_VALUE;
        Object q10 = this.f44138k.q(0, 0, this);
        if (q10 == kotlin.coroutines.intrinsics.a.f()) {
            return q10;
        }
        return Result.b(q10);
    }
}
