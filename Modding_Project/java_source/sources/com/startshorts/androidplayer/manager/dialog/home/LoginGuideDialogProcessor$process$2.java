package com.startshorts.androidplayer.manager.dialog.home;

import android.content.DialogInterface;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LoginGuideDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.LoginGuideDialogProcessor$process$2", f = "LoginGuideDialogProcessor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class LoginGuideDialogProcessor$process$2 extends SuspendLambda implements Function2<g0, rs.c<? super ii.a>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42387h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f42388i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ LoginGuideDialogProcessor f42389j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f42390k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginGuideDialogProcessor$process$2(MainActivity mainActivity, LoginGuideDialogProcessor loginGuideDialogProcessor, Function0<Unit> function0, rs.c<? super LoginGuideDialogProcessor$process$2> cVar) {
        super(2, cVar);
        this.f42388i = mainActivity;
        this.f42389j = loginGuideDialogProcessor;
        this.f42390k = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(LoginGuideDialogProcessor loginGuideDialogProcessor, Function0 function0, DialogInterface dialogInterface) {
        Logger.f41511a.h(loginGuideDialogProcessor.name(), "onDismiss");
        function0.invoke();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new LoginGuideDialogProcessor$process$2(this.f42388i, this.f42389j, this.f42390k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super ii.a> cVar) {
        return ((LoginGuideDialogProcessor$process$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42387h == 0) {
            kotlin.f.b(obj);
            ii.a aVar = new ii.a(this.f42388i);
            final LoginGuideDialogProcessor loginGuideDialogProcessor = this.f42389j;
            final Function0<Unit> function0 = this.f42390k;
            aVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.startshorts.androidplayer.manager.dialog.home.d
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    LoginGuideDialogProcessor$process$2.j(LoginGuideDialogProcessor.this, function0, dialogInterface);
                }
            });
            aVar.show();
            return aVar;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
