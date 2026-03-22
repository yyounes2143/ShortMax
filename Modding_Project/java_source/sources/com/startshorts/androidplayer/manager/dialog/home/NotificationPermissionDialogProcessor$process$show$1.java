package com.startshorts.androidplayer.manager.dialog.home;

import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationPermissionDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.NotificationPermissionDialogProcessor$process$show$1", f = "NotificationPermissionDialogProcessor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class NotificationPermissionDialogProcessor$process$show$1 extends SuspendLambda implements Function2<g0, rs.c<? super Boolean>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42403h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f42404i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ NotificationPermissionDialogProcessor f42405j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f42406k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationPermissionDialogProcessor$process$show$1(MainActivity mainActivity, NotificationPermissionDialogProcessor notificationPermissionDialogProcessor, Function0<Unit> function0, rs.c<? super NotificationPermissionDialogProcessor$process$show$1> cVar) {
        super(2, cVar);
        this.f42404i = mainActivity;
        this.f42405j = notificationPermissionDialogProcessor;
        this.f42406k = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(NotificationPermissionDialogProcessor notificationPermissionDialogProcessor, Function0 function0, boolean z10) {
        Logger.f41511a.h(notificationPermissionDialogProcessor.name(), "onDismiss");
        function0.invoke();
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new NotificationPermissionDialogProcessor$process$show$1(this.f42404i, this.f42405j, this.f42406k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Boolean> cVar) {
        return ((NotificationPermissionDialogProcessor$process$show$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42403h == 0) {
            kotlin.f.b(obj);
            mk.a aVar = mk.a.f62518a;
            FragmentManager supportFragmentManager = this.f42404i.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            final NotificationPermissionDialogProcessor notificationPermissionDialogProcessor = this.f42405j;
            final Function0<Unit> function0 = this.f42406k;
            return kotlin.coroutines.jvm.internal.a.a(mk.a.g(aVar, supportFragmentManager, "discover", false, new Function1() { // from class: com.startshorts.androidplayer.manager.dialog.home.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit j10;
                    j10 = NotificationPermissionDialogProcessor$process$show$1.j(NotificationPermissionDialogProcessor.this, function0, ((Boolean) obj2).booleanValue());
                    return j10;
                }
            }, 4, null));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
