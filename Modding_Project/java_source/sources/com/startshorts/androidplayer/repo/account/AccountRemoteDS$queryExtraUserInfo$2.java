package com.startshorts.androidplayer.repo.account;

import com.startshorts.androidplayer.bean.account.ExtraUserInfo;
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
@d(c = "com.startshorts.androidplayer.repo.account.AccountRemoteDS$queryExtraUserInfo$2", f = "AccountRemoteDS.kt", l = {39}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRemoteDS$queryExtraUserInfo$2 extends SuspendLambda implements Function1<rs.c<? super ServerResult<ExtraUserInfo>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43030h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountRemoteDS$queryExtraUserInfo$2(rs.c<? super AccountRemoteDS$queryExtraUserInfo$2> cVar) {
        super(1, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(rs.c<?> cVar) {
        return new AccountRemoteDS$queryExtraUserInfo$2(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43030h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            this.f43030h = 1;
            obj = j10.Y0(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(rs.c<? super ServerResult<ExtraUserInfo>> cVar) {
        return ((AccountRemoteDS$queryExtraUserInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
