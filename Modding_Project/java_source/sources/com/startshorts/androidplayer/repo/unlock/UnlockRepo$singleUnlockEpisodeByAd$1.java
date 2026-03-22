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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {222, 249, 258}, m = "singleUnlockEpisodeByAd-yxL6bBk")
/* loaded from: classes7.dex */
public final class UnlockRepo$singleUnlockEpisodeByAd$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44734h;

    /* renamed from: i  reason: collision with root package name */
    Object f44735i;

    /* renamed from: j  reason: collision with root package name */
    Object f44736j;

    /* renamed from: k  reason: collision with root package name */
    Object f44737k;

    /* renamed from: l  reason: collision with root package name */
    Object f44738l;

    /* renamed from: m  reason: collision with root package name */
    boolean f44739m;

    /* renamed from: n  reason: collision with root package name */
    /* synthetic */ Object f44740n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44741o;

    /* renamed from: p  reason: collision with root package name */
    int f44742p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$singleUnlockEpisodeByAd$1(UnlockRepo unlockRepo, c<? super UnlockRepo$singleUnlockEpisodeByAd$1> cVar) {
        super(cVar);
        this.f44741o = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44740n = obj;
        this.f44742p |= Integer.MIN_VALUE;
        Object r10 = this.f44741o.r(null, null, false, null, this);
        if (r10 == a.f()) {
            return r10;
        }
        return Result.b(r10);
    }
}
