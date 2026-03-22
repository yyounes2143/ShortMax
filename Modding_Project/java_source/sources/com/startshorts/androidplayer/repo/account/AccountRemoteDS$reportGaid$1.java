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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS", f = "AccountRemoteDS.kt", l = {67}, m = "reportGaid-IoAF18A")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$reportGaid$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43043h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRemoteDS f43044i;

    /* renamed from: j  reason: collision with root package name */
    int f43045j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$reportGaid$1(AccountRemoteDS accountRemoteDS, rs.c<? super AccountRemoteDS$reportGaid$1> cVar) {
        super(cVar);
        this.f43044i = accountRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43043h = obj;
        this.f43045j |= Integer.MIN_VALUE;
        Object j10 = this.f43044i.j(this);
        if (j10 == kotlin.coroutines.intrinsics.a.f()) {
            return j10;
        }
        return Result.b(j10);
    }
}
