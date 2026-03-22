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
/* compiled from: DiscoverRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS", f = "DiscoverRemoteDS.kt", l = {43}, m = "fetchDiscoverRankingBanner-bMdYcbs")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchDiscoverRankingBanner$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43911h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRemoteDS f43912i;

    /* renamed from: j  reason: collision with root package name */
    int f43913j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchDiscoverRankingBanner$1(DiscoverRemoteDS discoverRemoteDS, c<? super DiscoverRemoteDS$fetchDiscoverRankingBanner$1> cVar) {
        super(cVar);
        this.f43912i = discoverRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43911h = obj;
        this.f43913j |= Integer.MIN_VALUE;
        Object b10 = this.f43912i.b(null, 0, 0, 0, null, null, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
