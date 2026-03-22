package com.startshorts.androidplayer.repo.unlock;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {209}, m = "unlockEpisodeByDiscount-BWLJW6A")
/* loaded from: classes7.dex */
public final class UnlockRepo$unlockEpisodeByDiscount$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44757h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44758i;

    /* renamed from: j  reason: collision with root package name */
    int f44759j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$unlockEpisodeByDiscount$1(UnlockRepo unlockRepo, c<? super UnlockRepo$unlockEpisodeByDiscount$1> cVar) {
        super(cVar);
        this.f44758i = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44757h = obj;
        this.f44759j |= Integer.MIN_VALUE;
        Object t10 = this.f44758i.t(null, 0, null, this);
        if (t10 == a.f()) {
            return t10;
        }
        return Result.b(t10);
    }
}
