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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo", f = "DiscoverRepo.kt", l = {80}, m = "fetchModuleMorePage-bMdYcbs")
/* loaded from: classes7.dex */
public final class DiscoverRepo$fetchModuleMorePage$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43985h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRepo f43986i;

    /* renamed from: j  reason: collision with root package name */
    int f43987j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$fetchModuleMorePage$1(DiscoverRepo discoverRepo, c<? super DiscoverRepo$fetchModuleMorePage$1> cVar) {
        super(cVar);
        this.f43986i = discoverRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43985h = obj;
        this.f43987j |= Integer.MIN_VALUE;
        Object p10 = this.f43986i.p(null, null, 0, 0, 0, 0, this);
        if (p10 == a.f()) {
            return p10;
        }
        return Result.b(p10);
    }
}
