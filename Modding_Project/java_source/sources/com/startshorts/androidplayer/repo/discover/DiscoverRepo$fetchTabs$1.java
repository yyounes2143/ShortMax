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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo", f = "DiscoverRepo.kt", l = {85}, m = "fetchTabs-gIAlu-s")
/* loaded from: classes7.dex */
public final class DiscoverRepo$fetchTabs$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f43988h;

    /* renamed from: i  reason: collision with root package name */
    boolean f43989i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f43990j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DiscoverRepo f43991k;

    /* renamed from: l  reason: collision with root package name */
    int f43992l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$fetchTabs$1(DiscoverRepo discoverRepo, c<? super DiscoverRepo$fetchTabs$1> cVar) {
        super(cVar);
        this.f43991k = discoverRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43990j = obj;
        this.f43992l |= Integer.MIN_VALUE;
        Object q10 = this.f43991k.q(false, this);
        if (q10 == a.f()) {
            return q10;
        }
        return Result.b(q10);
    }
}
