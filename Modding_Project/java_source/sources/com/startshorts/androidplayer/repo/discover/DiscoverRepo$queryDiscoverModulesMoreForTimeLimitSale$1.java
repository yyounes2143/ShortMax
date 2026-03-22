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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRepo", f = "DiscoverRepo.kt", l = {82}, m = "queryDiscoverModulesMoreForTimeLimitSale-BWLJW6A")
/* loaded from: classes7.dex */
public final class DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43999h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverRepo f44000i;

    /* renamed from: j  reason: collision with root package name */
    int f44001j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1(DiscoverRepo discoverRepo, c<? super DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1> cVar) {
        super(cVar);
        this.f44000i = discoverRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43999h = obj;
        this.f44001j |= Integer.MIN_VALUE;
        Object J = this.f44000i.J(null, null, 0, this);
        if (J == a.f()) {
            return J;
        }
        return Result.b(J);
    }
}
