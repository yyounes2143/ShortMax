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
/* compiled from: RFMGuideDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.RFMGuideDialogProcessor$process$2", f = "RFMGuideDialogProcessor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class RFMGuideDialogProcessor$process$2 extends SuspendLambda implements Function2<g0, rs.c<? super ki.a>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42411h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f42412i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ RFMGuideDialogProcessor f42413j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f42414k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RFMGuideDialogProcessor$process$2(MainActivity mainActivity, RFMGuideDialogProcessor rFMGuideDialogProcessor, Function0<Unit> function0, rs.c<? super RFMGuideDialogProcessor$process$2> cVar) {
        super(2, cVar);
        this.f42412i = mainActivity;
        this.f42413j = rFMGuideDialogProcessor;
        this.f42414k = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(RFMGuideDialogProcessor rFMGuideDialogProcessor, Function0 function0, DialogInterface dialogInterface) {
        Logger.f41511a.h(rFMGuideDialogProcessor.name(), "onDismiss");
        function0.invoke();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RFMGuideDialogProcessor$process$2(this.f42412i, this.f42413j, this.f42414k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super ki.a> cVar) {
        return ((RFMGuideDialogProcessor$process$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42411h == 0) {
            kotlin.f.b(obj);
            ki.a aVar = new ki.a(this.f42412i);
            final RFMGuideDialogProcessor rFMGuideDialogProcessor = this.f42413j;
            final Function0<Unit> function0 = this.f42414k;
            aVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.startshorts.androidplayer.manager.dialog.home.g
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    RFMGuideDialogProcessor$process$2.j(RFMGuideDialogProcessor.this, function0, dialogInterface);
                }
            });
            aVar.show();
            return aVar;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
