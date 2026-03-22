package com.startshorts.androidplayer.manager.dialog.home;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountMergeManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MergeTouristDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.MergeTouristDialogProcessor$process$2", f = "MergeTouristDialogProcessor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class MergeTouristDialogProcessor$process$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42394h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f42395i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ MergeTouristDialogProcessor f42396j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f42397k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MergeTouristDialogProcessor$process$2(MainActivity mainActivity, MergeTouristDialogProcessor mergeTouristDialogProcessor, Function0<Unit> function0, rs.c<? super MergeTouristDialogProcessor$process$2> cVar) {
        super(2, cVar);
        this.f42395i = mainActivity;
        this.f42396j = mergeTouristDialogProcessor;
        this.f42397k = function0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(MergeTouristDialogProcessor mergeTouristDialogProcessor, Function0 function0) {
        Logger.f41511a.h(mergeTouristDialogProcessor.name(), "onDismiss");
        function0.invoke();
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MergeTouristDialogProcessor$process$2(this.f42395i, this.f42396j, this.f42397k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MergeTouristDialogProcessor$process$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42394h == 0) {
            kotlin.f.b(obj);
            AccountMergeManager accountMergeManager = AccountMergeManager.f41550a;
            MainActivity mainActivity = this.f42395i;
            final MergeTouristDialogProcessor mergeTouristDialogProcessor = this.f42396j;
            final Function0<Unit> function0 = this.f42397k;
            accountMergeManager.s(mainActivity, new Function0() { // from class: com.startshorts.androidplayer.manager.dialog.home.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit j10;
                    j10 = MergeTouristDialogProcessor$process$2.j(MergeTouristDialogProcessor.this, function0);
                    return j10;
                }
            });
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
