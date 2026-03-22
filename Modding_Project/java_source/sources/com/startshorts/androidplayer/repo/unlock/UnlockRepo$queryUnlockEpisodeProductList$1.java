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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {109, 111, 120}, m = "queryUnlockEpisodeProductList-yxL6bBk")
/* loaded from: classes7.dex */
public final class UnlockRepo$queryUnlockEpisodeProductList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f44715h;

    /* renamed from: i  reason: collision with root package name */
    Object f44716i;

    /* renamed from: j  reason: collision with root package name */
    Object f44717j;

    /* renamed from: k  reason: collision with root package name */
    int f44718k;

    /* renamed from: l  reason: collision with root package name */
    int f44719l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f44720m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44721n;

    /* renamed from: o  reason: collision with root package name */
    int f44722o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$queryUnlockEpisodeProductList$1(UnlockRepo unlockRepo, c<? super UnlockRepo$queryUnlockEpisodeProductList$1> cVar) {
        super(cVar);
        this.f44721n = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44720m = obj;
        this.f44722o |= Integer.MIN_VALUE;
        Object n10 = this.f44721n.n(null, 0, 0, null, this);
        if (n10 == a.f()) {
            return n10;
        }
        return Result.b(n10);
    }
}
