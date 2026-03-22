package com.startshorts.androidplayer.manager.dialog.home;

import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CheckInDialogProcessor.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.dialog.home.CheckInDialogProcessor$process$3", f = "CheckInDialogProcessor.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class CheckInDialogProcessor$process$3 extends SuspendLambda implements Function2<g0, rs.c<? super HomeCheckInDialog>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42357h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f42358i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Function0<Unit> f42359j;

    /* compiled from: CheckInDialogProcessor.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements BaseDialogFragment.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f42360a;

        a(Function0<Unit> function0) {
            this.f42360a = function0;
        }

        @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment.b
        public void onDismiss() {
            this.f42360a.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckInDialogProcessor$process$3(MainActivity mainActivity, Function0<Unit> function0, rs.c<? super CheckInDialogProcessor$process$3> cVar) {
        super(2, cVar);
        this.f42358i = mainActivity;
        this.f42359j = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CheckInDialogProcessor$process$3(this.f42358i, this.f42359j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super HomeCheckInDialog> cVar) {
        return ((CheckInDialogProcessor$process$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42357h == 0) {
            kotlin.f.b(obj);
            HomeCheckInDialog homeCheckInDialog = new HomeCheckInDialog();
            MainActivity mainActivity = this.f42358i;
            homeCheckInDialog.w(new a(this.f42359j));
            homeCheckInDialog.setCancelable(false);
            FragmentManager supportFragmentManager = mainActivity.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            homeCheckInDialog.x(supportFragmentManager);
            return homeCheckInDialog;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
