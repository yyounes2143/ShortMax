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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo", f = "DiscoverRepo.kt", l = {143}, m = "fetchDiscoverModulesCategoryMore-bMdYcbs")
/* loaded from: classes7.dex */
public final class DiscoverRepo$fetchDiscoverModulesCategoryMore$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43976h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRepo f43977i;

    /* renamed from: j  reason: collision with root package name */
    int f43978j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$fetchDiscoverModulesCategoryMore$1(DiscoverRepo discoverRepo, c<? super DiscoverRepo$fetchDiscoverModulesCategoryMore$1> cVar) {
        super(cVar);
        this.f43977i = discoverRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43976h = obj;
        this.f43978j |= Integer.MIN_VALUE;
        Object m10 = this.f43977i.m(0, 0, null, null, null, 0, this);
        if (m10 == a.f()) {
            return m10;
        }
        return Result.b(m10);
    }
}
