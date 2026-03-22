package com.startshorts.androidplayer.manager.account;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.account.AccountManager", f = "AccountManager.kt", l = {317}, m = "isAccountReady-IoAF18A")
/* loaded from: classes6.dex */
public final class AccountManager$isAccountReady$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f41547h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountManager f41548i;

    /* renamed from: j  reason: collision with root package name */
    int f41549j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountManager$isAccountReady$1(AccountManager accountManager, c<? super AccountManager$isAccountReady$1> cVar) {
        super(cVar);
        this.f41548i = accountManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f41547h = obj;
        this.f41549j |= Integer.MIN_VALUE;
        Object n10 = this.f41548i.n(this);
        if (n10 == kotlin.coroutines.intrinsics.a.f()) {
            return n10;
        }
        return Result.b(n10);
    }
}
