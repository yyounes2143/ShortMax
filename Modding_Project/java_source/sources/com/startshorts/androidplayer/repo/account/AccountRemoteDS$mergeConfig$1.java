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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS", f = "AccountRemoteDS.kt", l = {79}, m = "mergeConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$mergeConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43019h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRemoteDS f43020i;

    /* renamed from: j  reason: collision with root package name */
    int f43021j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$mergeConfig$1(AccountRemoteDS accountRemoteDS, rs.c<? super AccountRemoteDS$mergeConfig$1> cVar) {
        super(cVar);
        this.f43020i = accountRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43019h = obj;
        this.f43021j |= Integer.MIN_VALUE;
        Object d10 = this.f43020i.d(this);
        if (d10 == kotlin.coroutines.intrinsics.a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
