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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS", f = "DiscoverRemoteDS.kt", l = {64}, m = "queryDiscoverModulesMoreForTimeLimitSale-hUnOzRk")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43958h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRemoteDS f43959i;

    /* renamed from: j  reason: collision with root package name */
    int f43960j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1(DiscoverRemoteDS discoverRemoteDS, c<? super DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$1> cVar) {
        super(cVar);
        this.f43959i = discoverRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43958h = obj;
        this.f43960j |= Integer.MIN_VALUE;
        Object g10 = this.f43959i.g(null, null, 0, null, null, this);
        if (g10 == a.f()) {
            return g10;
        }
        return Result.b(g10);
    }
}
