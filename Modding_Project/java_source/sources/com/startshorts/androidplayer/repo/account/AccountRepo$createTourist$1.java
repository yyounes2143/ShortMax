package com.startshorts.androidplayer.repo.account;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.account.RegisterTouristAccountResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import gt.g0;
import java.util.UUID;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.account.AccountRepo$createTourist$1", f = "AccountRepo.kt", l = {503}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AccountRepo$createTourist$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f43061h;

    /* renamed from: i  reason: collision with root package name */
    Object f43062i;

    /* renamed from: j  reason: collision with root package name */
    int f43063j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43064k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepo$createTourist$1(String str, rs.c<? super AccountRepo$createTourist$1> cVar) {
        super(2, cVar);
        this.f43064k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AccountRepo$createTourist$1(this.f43064k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AccountRepo$createTourist$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String n10;
        String uuid;
        AccountRemoteDS m02;
        String str;
        Object obj2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f43063j;
        if (i10 != 0) {
            if (i10 == 1) {
                str = (String) this.f43062i;
                n10 = (String) this.f43061h;
                f.b(obj);
                obj2 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Logger.f41511a.h("DeviceUtil", "createTourist getDeviceId()");
            n10 = DeviceUtil.f48146a.n();
            String str2 = this.f43064k;
            if (str2 != null && str2.length() != 0) {
                uuid = this.f43064k;
            } else {
                uuid = UUID.randomUUID().toString();
            }
            Intrinsics.checkNotNull(uuid);
            m02 = AccountRepo.f43052a.m0();
            this.f43061h = n10;
            this.f43062i = uuid;
            this.f43063j = 1;
            Object a10 = m02.a(n10, uuid, this);
            if (a10 == f10) {
                return f10;
            }
            str = uuid;
            obj2 = a10;
        }
        AccountRepo.f43056e = false;
        AccountManager accountManager = AccountManager.f41533a;
        accountManager.t(false);
        accountManager.s(false);
        if (Result.j(obj2)) {
            RegisterTouristAccountResult registerTouristAccountResult = (RegisterTouristAccountResult) obj2;
            AccountRepo accountRepo = AccountRepo.f43052a;
            accountRepo.v0(registerTouristAccountResult);
            MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
            matchEventUtil.k(accountRepo.t0());
            matchEventUtil.l(accountRepo.t0());
            if (registerTouristAccountResult != null && !registerTouristAccountResult.getUserResponse().isRegisterCodeInitialized()) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("custom_device_id", n10);
                bundle.putString("seq", str);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "register_code_null", bundle, 0L, 4, null);
            }
        }
        Throwable g10 = Result.g(obj2);
        if (g10 != null) {
            AccountRepo.f43052a.u0(z.a(g10));
        }
        return Unit.f60915a;
    }
}
