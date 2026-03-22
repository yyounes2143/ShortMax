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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS", f = "AccountRemoteDS.kt", l = {52}, m = "updateAutoUnlockEpisode-0E7RQCE")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$updateAutoUnlockEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43047h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRemoteDS f43048i;

    /* renamed from: j  reason: collision with root package name */
    int f43049j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$updateAutoUnlockEpisode$1(AccountRemoteDS accountRemoteDS, rs.c<? super AccountRemoteDS$updateAutoUnlockEpisode$1> cVar) {
        super(cVar);
        this.f43048i = accountRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43047h = obj;
        this.f43049j |= Integer.MIN_VALUE;
        Object k10 = this.f43048i.k(null, false, this);
        if (k10 == kotlin.coroutines.intrinsics.a.f()) {
            return k10;
        }
        return Result.b(k10);
    }
}
