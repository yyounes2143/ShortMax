package com.startshorts.androidplayer.repo.discover;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo", f = "DiscoverRepo.kt", l = {103}, m = "fetch-gIAlu-s")
/* loaded from: classes7.dex */
public final class DiscoverRepo$fetch$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43972h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f43973i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverRepo f43974j;

    /* renamed from: k  reason: collision with root package name */
    int f43975k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$fetch$1(DiscoverRepo discoverRepo, c<? super DiscoverRepo$fetch$1> cVar) {
        super(cVar);
        this.f43974j = discoverRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43973i = obj;
        this.f43975k |= Integer.MIN_VALUE;
        Object l10 = this.f43974j.l(0, this);
        if (l10 == a.f()) {
            return l10;
        }
        return Result.b(l10);
    }
}
