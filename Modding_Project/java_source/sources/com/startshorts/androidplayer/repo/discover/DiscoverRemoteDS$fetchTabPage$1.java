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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS", f = "DiscoverRemoteDS.kt", l = {32}, m = "fetchTabPage-BWLJW6A")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchTabPage$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43942h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRemoteDS f43943i;

    /* renamed from: j  reason: collision with root package name */
    int f43944j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchTabPage$1(DiscoverRemoteDS discoverRemoteDS, c<? super DiscoverRemoteDS$fetchTabPage$1> cVar) {
        super(cVar);
        this.f43943i = discoverRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43942h = obj;
        this.f43944j |= Integer.MIN_VALUE;
        Object e10 = this.f43943i.e(0, null, null, this);
        if (e10 == a.f()) {
            return e10;
        }
        return Result.b(e10);
    }
}
