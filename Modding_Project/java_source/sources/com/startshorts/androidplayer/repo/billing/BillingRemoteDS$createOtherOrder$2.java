package com.startshorts.androidplayer.repo.billing;

import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.order.OtherOrderBodyRequest;
import com.startshorts.androidplayer.bean.order.OtherOrderResult;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BillingRemoteDS.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.repo.billing.BillingRemoteDS$createOtherOrder$2", f = "BillingRemoteDS.kt", l = {610}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class BillingRemoteDS$createOtherOrder$2 extends SuspendLambda implements Function1<rs.c<? super ServerResult<OtherOrderResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43222h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f43223i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43224j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43225k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43226l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43227m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f43228n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f43229o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ String f43230p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BillingRemoteDS$createOtherOrder$2(int i10, String str, String str2, String str3, String str4, String str5, String str6, String str7, rs.c<? super BillingRemoteDS$createOtherOrder$2> cVar) {
        super(1, cVar);
        this.f43223i = i10;
        this.f43224j = str;
        this.f43225k = str2;
        this.f43226l = str3;
        this.f43227m = str4;
        this.f43228n = str5;
        this.f43229o = str6;
        this.f43230p = str7;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new BillingRemoteDS$createOtherOrder$2(this.f43223i, this.f43224j, this.f43225k, this.f43226l, this.f43227m, this.f43228n, this.f43229o, this.f43230p, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43222h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        k.a j10 = k.f41787a.j();
        Account a02 = AccountRepo.f43052a.a0();
        if (a02 != null) {
            str = a02.getUserCode();
        } else {
            str = null;
        }
        OtherOrderBodyRequest otherOrderBodyRequest = new OtherOrderBodyRequest(this.f43223i, this.f43224j, this.f43225k, this.f43226l, this.f43227m, this.f43228n, str, this.f43229o, null, this.f43230p, 256, null);
        this.f43222h = 1;
        Object q10 = j10.q(otherOrderBodyRequest, this);
        if (q10 == f10) {
            return f10;
        }
        return q10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(rs.c<? super ServerResult<OtherOrderResult>> cVar) {
        return ((BillingRemoteDS$createOtherOrder$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
