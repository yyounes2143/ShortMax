package com.startshorts.androidplayer.viewmodel.auth;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.repo.auth.email.EmailAuthRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.auth.d;
import fk.u;
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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.auth.EmailAuthViewModel$sendOTP$1", f = "EmailAuthViewModel.kt", l = {63}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EmailAuthViewModel$sendOTP$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48219h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f48220i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ EmailAuthViewModel f48221j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAuthViewModel$sendOTP$1(String str, EmailAuthViewModel emailAuthViewModel, rs.c<? super EmailAuthViewModel$sendOTP$1> cVar) {
        super(2, cVar);
        this.f48220i = str;
        this.f48221j = emailAuthViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new EmailAuthViewModel$sendOTP$1(this.f48220i, this.f48221j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((EmailAuthViewModel$sendOTP$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object d10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48219h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                d10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            EmailAuthRepo emailAuthRepo = EmailAuthRepo.f43149a;
            String str = this.f48220i;
            this.f48219h = 1;
            d10 = emailAuthRepo.d(null, str, this);
            if (d10 == f10) {
                return f10;
            }
        }
        EmailAuthViewModel emailAuthViewModel = this.f48221j;
        if (Result.j(d10)) {
            ud.b.f68412a.Y2(DeviceUtil.f48146a.K());
            o.b(emailAuthViewModel.A(), d.c.f48278a);
        }
        EmailAuthViewModel emailAuthViewModel2 = this.f48221j;
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                ResponseException responseException = (ResponseException) g10;
                if (!responseException.isNetworkError()) {
                    o.b(emailAuthViewModel2.A(), new d.b(responseException.getMessage()));
                }
            }
            o.b(emailAuthViewModel2.A(), new d.b(u.f51776a.d(R$string.common_unknown_exception)));
        }
        return Unit.f60915a;
    }
}
