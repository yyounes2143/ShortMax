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
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRepo", f = "ImmersionRepo.kt", l = {253}, m = "queryImmersionBackShorts-gIAlu-s")
/* loaded from: classes7.dex */
public final class ImmersionRepo$queryImmersionBackShorts$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44149h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionRepo f44150i;

    /* renamed from: j  reason: collision with root package name */
    int f44151j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRepo$queryImmersionBackShorts$1(ImmersionRepo immersionRepo, c<? super ImmersionRepo$queryImmersionBackShorts$1> cVar) {
        super(cVar);
        this.f44150i = immersionRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44149h = obj;
        this.f44151j |= Integer.MIN_VALUE;
        Object u10 = this.f44150i.u(0, this);
        if (u10 == kotlin.coroutines.intrinsics.a.f()) {
            return u10;
        }
        return Result.b(u10);
    }
}
