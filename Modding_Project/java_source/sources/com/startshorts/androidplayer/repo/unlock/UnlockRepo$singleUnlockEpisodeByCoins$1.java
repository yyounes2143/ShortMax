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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {143, 173, 182, 200}, m = "singleUnlockEpisodeByCoins-hUnOzRk")
/* loaded from: classes7.dex */
public final class UnlockRepo$singleUnlockEpisodeByCoins$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44744h;

    /* renamed from: i  reason: collision with root package name */
    Object f44745i;

    /* renamed from: j  reason: collision with root package name */
    Object f44746j;

    /* renamed from: k  reason: collision with root package name */
    Object f44747k;

    /* renamed from: l  reason: collision with root package name */
    Object f44748l;

    /* renamed from: m  reason: collision with root package name */
    boolean f44749m;

    /* renamed from: n  reason: collision with root package name */
    boolean f44750n;

    /* renamed from: o  reason: collision with root package name */
    /* synthetic */ Object f44751o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44752p;

    /* renamed from: q  reason: collision with root package name */
    int f44753q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$singleUnlockEpisodeByCoins$1(UnlockRepo unlockRepo, c<? super UnlockRepo$singleUnlockEpisodeByCoins$1> cVar) {
        super(cVar);
        this.f44752p = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44751o = obj;
        this.f44753q |= Integer.MIN_VALUE;
        Object s10 = this.f44752p.s(null, null, false, false, null, this);
        if (s10 == a.f()) {
            return s10;
        }
        return Result.b(s10);
    }
}
