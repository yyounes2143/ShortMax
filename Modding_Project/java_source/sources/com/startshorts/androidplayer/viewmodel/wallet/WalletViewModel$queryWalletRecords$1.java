package com.startshorts.androidplayer.viewmodel.wallet;

import com.startshorts.androidplayer.repo.wallet.WalletRepo;
import com.startshorts.androidplayer.viewmodel.wallet.b;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.wallet.WalletViewModel$queryWalletRecords$1", f = "WalletViewModel.kt", l = {68}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class WalletViewModel$queryWalletRecords$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49470h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f49471i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f49472j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f49473k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ WalletViewModel f49474l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletViewModel$queryWalletRecords$1(int i10, int i11, int i12, WalletViewModel walletViewModel, c<? super WalletViewModel$queryWalletRecords$1> cVar) {
        super(2, cVar);
        this.f49471i = i10;
        this.f49472j = i11;
        this.f49473k = i12;
        this.f49474l = walletViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new WalletViewModel$queryWalletRecords$1(this.f49471i, this.f49472j, this.f49473k, this.f49474l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((WalletViewModel$queryWalletRecords$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object i10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f49470h;
        if (i11 != 0) {
            if (i11 == 1) {
                f.b(obj);
                i10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            WalletRepo walletRepo = WalletRepo.f44780a;
            int i12 = this.f49471i;
            int i13 = this.f49472j;
            int i14 = this.f49473k;
            this.f49470h = 1;
            i10 = walletRepo.i(i12, i13, i14, this);
            if (i10 == f10) {
                return f10;
            }
        }
        WalletViewModel walletViewModel = this.f49474l;
        if (Result.j(i10)) {
            o.b(walletViewModel.B(), new b.c((List) i10));
        }
        WalletViewModel walletViewModel2 = this.f49474l;
        Throwable g10 = Result.g(i10);
        if (g10 != null) {
            walletViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
