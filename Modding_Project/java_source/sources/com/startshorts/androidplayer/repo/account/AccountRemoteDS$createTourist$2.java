package com.startshorts.androidplayer.repo.account;

import com.startshorts.androidplayer.bean.account.RegisterTouristAccountResult;
import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS$createTourist$2", f = "AccountRemoteDS.kt", l = {46}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$createTourist$2 extends SuspendLambda implements Function1<rs.c<? super ServerResult<RegisterTouristAccountResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43008h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43009i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43010j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRemoteDS$createTourist$2(String str, String str2, rs.c<? super AccountRemoteDS$createTourist$2> cVar) {
        super(1, cVar);
        this.f43009i = str;
        this.f43010j = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new AccountRemoteDS$createTourist$2(this.f43009i, this.f43010j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43008h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            String d10 = hk.b.f52886a.d();
            k.a j10 = k.f41787a.j();
            String str = this.f43009i;
            String str2 = this.f43010j;
            if (d10 == null) {
                d10 = "";
            }
            this.f43008h = 1;
            obj = j10.W(str, str2, d10, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(rs.c<? super ServerResult<RegisterTouristAccountResult>> cVar) {
        return ((AccountRemoteDS$createTourist$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
