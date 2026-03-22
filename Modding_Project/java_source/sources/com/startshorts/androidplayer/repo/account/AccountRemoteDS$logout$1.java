package com.startshorts.androidplayer.repo.account;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS", f = "AccountRemoteDS.kt", l = {57}, m = "logout-gIAlu-s")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$logout$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43015h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRemoteDS f43016i;

    /* renamed from: j  reason: collision with root package name */
    int f43017j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$logout$1(AccountRemoteDS accountRemoteDS, rs.c<? super AccountRemoteDS$logout$1> cVar) {
        super(cVar);
        this.f43016i = accountRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43015h = obj;
        this.f43017j |= Integer.MIN_VALUE;
        Object c10 = this.f43016i.c(null, this);
        if (c10 == kotlin.coroutines.intrinsics.a.f()) {
            return c10;
        }
        return Result.b(c10);
    }
}
