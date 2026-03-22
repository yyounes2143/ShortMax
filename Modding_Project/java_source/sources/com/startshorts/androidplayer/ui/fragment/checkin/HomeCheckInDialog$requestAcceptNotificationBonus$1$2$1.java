package com.startshorts.androidplayer.ui.fragment.checkin;

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
@d(c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1", f = "HomeCheckInDialog.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45834h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HomeCheckInDialog f45835i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1(HomeCheckInDialog homeCheckInDialog, c<? super HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1> cVar) {
        super(2, cVar);
        this.f45835i = homeCheckInDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1(this.f45835i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45834h == 0) {
            f.b(obj);
            b0.d(HomeCheckInDialog.b0(this.f45835i).f38652e);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
