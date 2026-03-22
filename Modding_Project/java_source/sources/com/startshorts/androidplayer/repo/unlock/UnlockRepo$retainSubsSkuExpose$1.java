package com.startshorts.androidplayer.repo.unlock;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {314}, m = "retainSubsSkuExpose")
/* loaded from: classes7.dex */
public final class UnlockRepo$retainSubsSkuExpose$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44731h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44732i;

    /* renamed from: j  reason: collision with root package name */
    int f44733j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$retainSubsSkuExpose$1(UnlockRepo unlockRepo, c<? super UnlockRepo$retainSubsSkuExpose$1> cVar) {
        super(cVar);
        this.f44732i = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44731h = obj;
        this.f44733j |= Integer.MIN_VALUE;
        return this.f44732i.q(0, null, this);
    }
}
