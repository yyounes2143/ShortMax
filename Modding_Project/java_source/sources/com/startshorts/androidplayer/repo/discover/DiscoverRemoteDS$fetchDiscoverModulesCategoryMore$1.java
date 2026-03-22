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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS", f = "DiscoverRemoteDS.kt", l = {69}, m = "fetchDiscoverModulesCategoryMore-tZkwj4A")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43899h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRemoteDS f43900i;

    /* renamed from: j  reason: collision with root package name */
    int f43901j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1(DiscoverRemoteDS discoverRemoteDS, c<? super DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$1> cVar) {
        super(cVar);
        this.f43900i = discoverRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43899h = obj;
        this.f43901j |= Integer.MIN_VALUE;
        Object a10 = this.f43900i.a(0, 0, null, null, null, 0, null, null, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
