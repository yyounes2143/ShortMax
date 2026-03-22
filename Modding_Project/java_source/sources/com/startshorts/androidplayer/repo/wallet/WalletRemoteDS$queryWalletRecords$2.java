package com.startshorts.androidplayer.repo.wallet;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.record.WalletRecord;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.wallet.WalletRemoteDS$queryWalletRecords$2", f = "WalletRemoteDS.kt", l = {16}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class WalletRemoteDS$queryWalletRecords$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<WalletRecord>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44776h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44777i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44778j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44779k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRemoteDS$queryWalletRecords$2(int i10, int i11, int i12, c<? super WalletRemoteDS$queryWalletRecords$2> cVar) {
        super(1, cVar);
        this.f44777i = i10;
        this.f44778j = i11;
        this.f44779k = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new WalletRemoteDS$queryWalletRecords$2(this.f44777i, this.f44778j, this.f44779k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44776h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44777i;
            int i12 = this.f44778j;
            int i13 = this.f44779k;
            this.f44776h = 1;
            obj = j10.W0(i11, i12, i13, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<WalletRecord>>> cVar) {
        return ((WalletRemoteDS$queryWalletRecords$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
