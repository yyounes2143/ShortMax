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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS", f = "DiscoverRemoteDS.kt", l = {53}, m = "fetchModuleMorePage-tZkwj4A")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchModuleMorePage$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43930h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRemoteDS f43931i;

    /* renamed from: j  reason: collision with root package name */
    int f43932j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchModuleMorePage$1(DiscoverRemoteDS discoverRemoteDS, c<? super DiscoverRemoteDS$fetchModuleMorePage$1> cVar) {
        super(cVar);
        this.f43931i = discoverRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43930h = obj;
        this.f43932j |= Integer.MIN_VALUE;
        Object d10 = this.f43931i.d(null, null, 0, null, null, 0, 0, 0, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
