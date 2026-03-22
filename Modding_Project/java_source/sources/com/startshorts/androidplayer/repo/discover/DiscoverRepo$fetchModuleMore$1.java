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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo", f = "DiscoverRepo.kt", l = {78}, m = "fetchModuleMore-BWLJW6A")
/* loaded from: classes7.dex */
public final class DiscoverRepo$fetchModuleMore$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43982h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRepo f43983i;

    /* renamed from: j  reason: collision with root package name */
    int f43984j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$fetchModuleMore$1(DiscoverRepo discoverRepo, c<? super DiscoverRepo$fetchModuleMore$1> cVar) {
        super(cVar);
        this.f43983i = discoverRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43982h = obj;
        this.f43984j |= Integer.MIN_VALUE;
        Object o10 = this.f43983i.o(null, null, 0, this);
        if (o10 == a.f()) {
            return o10;
        }
        return Result.b(o10);
    }
}
