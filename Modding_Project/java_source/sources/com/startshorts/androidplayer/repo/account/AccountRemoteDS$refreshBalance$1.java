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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS", f = "AccountRemoteDS.kt", l = {25}, m = "refreshBalance-gIAlu-s")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$refreshBalance$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43035h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRemoteDS f43036i;

    /* renamed from: j  reason: collision with root package name */
    int f43037j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$refreshBalance$1(AccountRemoteDS accountRemoteDS, rs.c<? super AccountRemoteDS$refreshBalance$1> cVar) {
        super(cVar);
        this.f43036i = accountRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43035h = obj;
        this.f43037j |= Integer.MIN_VALUE;
        Object h10 = this.f43036i.h(null, this);
        if (h10 == kotlin.coroutines.intrinsics.a.f()) {
            return h10;
        }
        return Result.b(h10);
    }
}
