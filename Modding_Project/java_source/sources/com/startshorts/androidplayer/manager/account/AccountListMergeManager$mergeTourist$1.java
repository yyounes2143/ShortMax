package com.startshorts.androidplayer.manager.account;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.account.MergeUserInfo;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.a;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AccountListMergeManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.account.AccountListMergeManager$mergeTourist$1", f = "AccountListMergeManager.kt", l = {153}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAccountListMergeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountListMergeManager.kt\ncom/startshorts/androidplayer/manager/account/AccountListMergeManager$mergeTourist$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,161:1\n125#2,13:162\n*S KotlinDebug\n*F\n+ 1 AccountListMergeManager.kt\ncom/startshorts/androidplayer/manager/account/AccountListMergeManager$mergeTourist$1\n*L\n155#1:162,13\n*E\n"})
/* loaded from: classes6.dex */
public final class AccountListMergeManager$mergeTourist$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41532h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccountListMergeManager$mergeTourist$1(c<? super AccountListMergeManager$mergeTourist$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AccountListMergeManager$mergeTourist$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AccountListMergeManager$mergeTourist$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object U0;
        ResponseException responseException;
        MutableLiveData mutableLiveData;
        MutableLiveData mutableLiveData2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41532h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                U0 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AccountRepo accountRepo = AccountRepo.f43052a;
            this.f41532h = 1;
            U0 = accountRepo.U0(this);
            if (U0 == f10) {
                return f10;
            }
        }
        if (Result.j(U0)) {
            mutableLiveData2 = AccountListMergeManager.f41528b;
            o.b(mutableLiveData2, new a.f((MergeUserInfo) U0));
        }
        Throwable g10 = Result.g(U0);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            if (responseException != null) {
                mutableLiveData = AccountListMergeManager.f41528b;
                o.b(mutableLiveData, new a.c(responseException.getMessage()));
            } else {
                Logger logger = Logger.f41511a;
                logger.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            }
        }
        return Unit.f60915a;
    }
}
