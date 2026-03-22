package com.startshorts.androidplayer.repo.account;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo", f = "AccountRepo.kt", l = {765}, m = "updateAutoUnlockEpisode-0E7RQCE")
/* loaded from: classes7.dex */
public final class AccountRepo$updateAutoUnlockEpisode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    boolean f43092h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f43093i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ AccountRepo f43094j;

    /* renamed from: k  reason: collision with root package name */
    int f43095k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepo$updateAutoUnlockEpisode$1(AccountRepo accountRepo, rs.c<? super AccountRepo$updateAutoUnlockEpisode$1> cVar) {
        super(cVar);
        this.f43094j = accountRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43093i = obj;
        this.f43095k |= Integer.MIN_VALUE;
        Object o12 = this.f43094j.o1(null, false, this);
        if (o12 == kotlin.coroutines.intrinsics.a.f()) {
            return o12;
        }
        return Result.b(o12);
    }
}
