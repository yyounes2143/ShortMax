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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS", f = "AccountRemoteDS.kt", l = {62}, m = "delete-gIAlu-s")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$delete$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43011h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRemoteDS f43012i;

    /* renamed from: j  reason: collision with root package name */
    int f43013j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$delete$1(AccountRemoteDS accountRemoteDS, rs.c<? super AccountRemoteDS$delete$1> cVar) {
        super(cVar);
        this.f43012i = accountRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43011h = obj;
        this.f43013j |= Integer.MIN_VALUE;
        Object b10 = this.f43012i.b(null, this);
        if (b10 == kotlin.coroutines.intrinsics.a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
