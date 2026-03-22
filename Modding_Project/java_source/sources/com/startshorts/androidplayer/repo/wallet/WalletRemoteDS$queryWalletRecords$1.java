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
/* compiled from: WalletRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.wallet.WalletRemoteDS", f = "WalletRemoteDS.kt", l = {16}, m = "queryWalletRecords-BWLJW6A")
/* loaded from: classes7.dex */
public final class WalletRemoteDS$queryWalletRecords$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44773h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ WalletRemoteDS f44774i;

    /* renamed from: j  reason: collision with root package name */
    int f44775j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRemoteDS$queryWalletRecords$1(WalletRemoteDS walletRemoteDS, c<? super WalletRemoteDS$queryWalletRecords$1> cVar) {
        super(cVar);
        this.f44774i = walletRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44773h = obj;
        this.f44775j |= Integer.MIN_VALUE;
        Object a10 = this.f44774i.a(0, 0, 0, this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
