package com.startshorts.androidplayer.ui.fragment.checkin;

import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import gt.g0;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: HomeCheckInDialog.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$2$1", f = "HomeCheckInDialog.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class HomeCheckInDialog$requestCheckIn$1$2$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45843h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HomeCheckInDialog f45844i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Throwable f45845j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeCheckInDialog$requestCheckIn$1$2$2$1(HomeCheckInDialog homeCheckInDialog, Throwable th2, c<? super HomeCheckInDialog$requestCheckIn$1$2$2$1> cVar) {
        super(2, cVar);
        this.f45844i = homeCheckInDialog;
        this.f45845j = th2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HomeCheckInDialog$requestCheckIn$1$2$2$1(this.f45844i, this.f45845j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HomeCheckInDialog$requestCheckIn$1$2$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45843h == 0) {
            f.b(obj);
            b0.d(HomeCheckInDialog.b0(this.f45844i).f38652e);
            BaseDialogFragment.B(this.f45844i, this.f45845j.getMessage(), 0, 2, null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
