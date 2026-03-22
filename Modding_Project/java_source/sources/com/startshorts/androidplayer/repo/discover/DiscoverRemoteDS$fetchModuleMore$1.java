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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS", f = "DiscoverRemoteDS.kt", l = {48}, m = "fetchModuleMore-hUnOzRk")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchModuleMore$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43921h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRemoteDS f43922i;

    /* renamed from: j  reason: collision with root package name */
    int f43923j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchModuleMore$1(DiscoverRemoteDS discoverRemoteDS, c<? super DiscoverRemoteDS$fetchModuleMore$1> cVar) {
        super(cVar);
        this.f43922i = discoverRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43921h = obj;
        this.f43923j |= Integer.MIN_VALUE;
        Object c10 = this.f43922i.c(null, null, 0, null, null, this);
        if (c10 == a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
