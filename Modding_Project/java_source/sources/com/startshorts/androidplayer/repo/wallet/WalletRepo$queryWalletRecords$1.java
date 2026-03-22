package com.startshorts.androidplayer.repo.wallet;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.wallet.WalletRepo", f = "WalletRepo.kt", l = {27}, m = "queryWalletRecords-BWLJW6A")
/* loaded from: classes7.dex */
public final class WalletRepo$queryWalletRecords$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44783h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WalletRepo f44784i;

    /* renamed from: j  reason: collision with root package name */
    int f44785j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRepo$queryWalletRecords$1(WalletRepo walletRepo, c<? super WalletRepo$queryWalletRecords$1> cVar) {
        super(cVar);
        this.f44784i = walletRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44783h = obj;
        this.f44785j |= Integer.MIN_VALUE;
        Object i10 = this.f44784i.i(0, 0, 0, this);
        if (i10 == a.f()) {
            return i10;
        }
        return Result.b(i10);
    }
}
