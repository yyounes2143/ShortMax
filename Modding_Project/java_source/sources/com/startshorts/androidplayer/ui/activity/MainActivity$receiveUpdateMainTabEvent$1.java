package com.startshorts.androidplayer.ui.activity;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.manager.dialog.home.HomeDialogProcessor;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MainActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.MainActivity$receiveUpdateMainTabEvent$1", f = "MainActivity.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_SEEK_CLK}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class MainActivity$receiveUpdateMainTabEvent$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44907h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ MainActivity f44908i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$receiveUpdateMainTabEvent$1(MainActivity mainActivity, c<? super MainActivity$receiveUpdateMainTabEvent$1> cVar) {
        super(2, cVar);
        this.f44908i = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MainActivity$receiveUpdateMainTabEvent$1(this.f44908i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MainActivity$receiveUpdateMainTabEvent$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44907h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            HomeDialogProcessor homeDialogProcessor = HomeDialogProcessor.f42361a;
            MainActivity mainActivity = this.f44908i;
            this.f44907h = 1;
            if (homeDialogProcessor.i(mainActivity, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
