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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo", f = "DiscoverRepo.kt", l = {150}, m = "fetchDiscoverRankingBanner-yxL6bBk")
/* loaded from: classes7.dex */
public final class DiscoverRepo$fetchDiscoverRankingBanner$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43979h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRepo f43980i;

    /* renamed from: j  reason: collision with root package name */
    int f43981j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$fetchDiscoverRankingBanner$1(DiscoverRepo discoverRepo, c<? super DiscoverRepo$fetchDiscoverRankingBanner$1> cVar) {
        super(cVar);
        this.f43980i = discoverRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43979h = obj;
        this.f43981j |= Integer.MIN_VALUE;
        Object n10 = this.f43980i.n(null, 0, 0, 0, this);
        if (n10 == a.f()) {
            return n10;
        }
        return Result.b(n10);
    }
}
