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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo", f = "UnlockRepo.kt", l = {78, 80, 89, 95}, m = "querySingleUnlockEpisodeMethods-hUnOzRk")
/* loaded from: classes7.dex */
public final class UnlockRepo$querySingleUnlockEpisodeMethods$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    boolean f44700h;

    /* renamed from: i  reason: collision with root package name */
    Object f44701i;

    /* renamed from: j  reason: collision with root package name */
    Object f44702j;

    /* renamed from: k  reason: collision with root package name */
    Object f44703k;

    /* renamed from: l  reason: collision with root package name */
    int f44704l;

    /* renamed from: m  reason: collision with root package name */
    int f44705m;

    /* renamed from: n  reason: collision with root package name */
    /* synthetic */ Object f44706n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ UnlockRepo f44707o;

    /* renamed from: p  reason: collision with root package name */
    int f44708p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$querySingleUnlockEpisodeMethods$1(UnlockRepo unlockRepo, c<? super UnlockRepo$querySingleUnlockEpisodeMethods$1> cVar) {
        super(cVar);
        this.f44707o = unlockRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44706n = obj;
        this.f44708p |= Integer.MIN_VALUE;
        Object l10 = this.f44707o.l(false, null, 0, 0, null, this);
        if (l10 == a.f()) {
            return l10;
        }
        return Result.b(l10);
    }
}
