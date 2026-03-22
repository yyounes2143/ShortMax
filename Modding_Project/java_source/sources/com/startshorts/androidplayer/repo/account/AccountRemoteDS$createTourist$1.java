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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS", f = "AccountRemoteDS.kt", l = {44}, m = "createTourist-0E7RQCE")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$createTourist$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43005h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRemoteDS f43006i;

    /* renamed from: j  reason: collision with root package name */
    int f43007j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$createTourist$1(AccountRemoteDS accountRemoteDS, rs.c<? super AccountRemoteDS$createTourist$1> cVar) {
        super(cVar);
        this.f43006i = accountRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43005h = obj;
        this.f43007j |= Integer.MIN_VALUE;
        Object a10 = this.f43006i.a(null, null, this);
        if (a10 == kotlin.coroutines.intrinsics.a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
