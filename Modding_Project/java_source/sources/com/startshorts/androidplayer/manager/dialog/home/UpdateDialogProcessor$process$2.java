package com.startshorts.androidplayer.manager.dialog.home;

import android.content.DialogInterface;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.update.UpdateManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.UpdateDialogProcessor$process$2", f = "UpdateDialogProcessor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class UpdateDialogProcessor$process$2 extends SuspendLambda implements Function2<g0, rs.c<? super mi.d>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42418h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f42419i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ UpdateDialogProcessor f42420j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f42421k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateDialogProcessor$process$2(MainActivity mainActivity, UpdateDialogProcessor updateDialogProcessor, Function0<Unit> function0, rs.c<? super UpdateDialogProcessor$process$2> cVar) {
        super(2, cVar);
        this.f42419i = mainActivity;
        this.f42420j = updateDialogProcessor;
        this.f42421k = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(UpdateDialogProcessor updateDialogProcessor, Function0 function0, DialogInterface dialogInterface) {
        Logger.f41511a.h(updateDialogProcessor.name(), "onDismiss");
        function0.invoke();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UpdateDialogProcessor$process$2(this.f42419i, this.f42420j, this.f42421k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super mi.d> cVar) {
        return ((UpdateDialogProcessor$process$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42418h == 0) {
            kotlin.f.b(obj);
            mi.d o10 = UpdateManager.f42992a.o(this.f42419i);
            if (o10 != null) {
                final UpdateDialogProcessor updateDialogProcessor = this.f42420j;
                final Function0<Unit> function0 = this.f42421k;
                o10.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.startshorts.androidplayer.manager.dialog.home.j
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        UpdateDialogProcessor$process$2.j(UpdateDialogProcessor.this, function0, dialogInterface);
                    }
                });
                o10.show();
                return o10;
            }
            return null;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
