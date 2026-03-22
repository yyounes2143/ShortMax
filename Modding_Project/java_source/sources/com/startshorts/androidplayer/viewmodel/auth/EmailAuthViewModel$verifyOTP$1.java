package com.startshorts.androidplayer.viewmodel.auth;

import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.bean.eventbus.BindSuccessEvent;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo;
import com.startshorts.androidplayer.viewmodel.auth.d;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EmailAuthViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.EmailAuthViewModel$verifyOTP$1", f = "EmailAuthViewModel.kt", l = {80}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EmailAuthViewModel$verifyOTP$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48222h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EmailAuthViewModel f48223i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48224j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f48225k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAuthViewModel$verifyOTP$1(EmailAuthViewModel emailAuthViewModel, String str, String str2, rs.c<? super EmailAuthViewModel$verifyOTP$1> cVar) {
        super(2, cVar);
        this.f48223i = emailAuthViewModel;
        this.f48224j = str;
        this.f48225k = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new EmailAuthViewModel$verifyOTP$1(this.f48223i, this.f48224j, this.f48225k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((EmailAuthViewModel$verifyOTP$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object e10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48222h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                e10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            EmailAuthViewModel emailAuthViewModel = this.f48223i;
            emailAuthViewModel.v("verifyOTP start -> email=" + this.f48224j + ",otp=" + this.f48225k);
            EmailAuthRepo emailAuthRepo = EmailAuthRepo.f43149a;
            String str = this.f48224j;
            String str2 = this.f48225k;
            this.f48222h = 1;
            e10 = emailAuthRepo.e(null, str, str2, this);
            if (e10 == f10) {
                return f10;
            }
        }
        EmailAuthViewModel emailAuthViewModel2 = this.f48223i;
        if (Result.j(e10)) {
            o.b(emailAuthViewModel2.A(), new d.f(AuthType.EMAIL_VERIFY));
            au.c.d().l(new BindSuccessEvent(2));
            AccountRepo.f43052a.V0();
        }
        EmailAuthViewModel emailAuthViewModel3 = this.f48223i;
        Throwable g10 = Result.g(e10);
        if (g10 != null && (g10 instanceof ResponseException)) {
            ResponseException responseException = (ResponseException) g10;
            if (!responseException.isNetworkError()) {
                o.b(emailAuthViewModel3.A(), new d.e(responseException.getMessage(), AuthType.EMAIL_VERIFY));
            }
        }
        return Unit.f60915a;
    }
}
