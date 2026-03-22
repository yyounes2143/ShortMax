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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo", f = "AccountRepo.kt", l = {798}, m = "mergeTourist-IoAF18A")
/* loaded from: classes7.dex */
public final class AccountRepo$mergeTourist$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43071h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AccountRepo f43072i;

    /* renamed from: j  reason: collision with root package name */
    int f43073j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepo$mergeTourist$1(AccountRepo accountRepo, rs.c<? super AccountRepo$mergeTourist$1> cVar) {
        super(cVar);
        this.f43072i = accountRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43071h = obj;
        this.f43073j |= Integer.MIN_VALUE;
        Object U0 = this.f43072i.U0(this);
        if (U0 == kotlin.coroutines.intrinsics.a.f()) {
            return U0;
        }
        return Result.b(U0);
    }
}
