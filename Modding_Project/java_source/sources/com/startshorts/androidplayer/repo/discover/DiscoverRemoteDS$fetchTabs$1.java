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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS", f = "DiscoverRemoteDS.kt", l = {21}, m = "fetchTabs-hUnOzRk")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchTabs$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43949h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRemoteDS f43950i;

    /* renamed from: j  reason: collision with root package name */
    int f43951j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchTabs$1(DiscoverRemoteDS discoverRemoteDS, c<? super DiscoverRemoteDS$fetchTabs$1> cVar) {
        super(cVar);
        this.f43950i = discoverRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43949h = obj;
        this.f43951j |= Integer.MIN_VALUE;
        Object f10 = this.f43950i.f(0, 0L, false, null, null, this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
