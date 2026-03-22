package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.ui.activity.MainActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HomeDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor$showInLoop$showNextProcessor$1$1", f = "HomeDialogProcessor.kt", l = {97}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class HomeDialogProcessor$showInLoop$showNextProcessor$1$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42378h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f42379i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f42380j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeDialogProcessor$showInLoop$showNextProcessor$1$1(MainActivity mainActivity, int i10, rs.c<? super HomeDialogProcessor$showInLoop$showNextProcessor$1$1> cVar) {
        super(2, cVar);
        this.f42379i = mainActivity;
        this.f42380j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new HomeDialogProcessor$showInLoop$showNextProcessor$1$1(this.f42379i, this.f42380j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((HomeDialogProcessor$showInLoop$showNextProcessor$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object j10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42378h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            this.f42378h = 1;
            j10 = HomeDialogProcessor.f42361a.j(this.f42379i, this.f42380j + 1, this);
            if (j10 == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
