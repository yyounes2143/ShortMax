package com.startshorts.androidplayer.ui.fragment.checkin;

import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HomeCheckInDialog.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1", f = "HomeCheckInDialog.kt", l = {253, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class HomeCheckInDialog$requestAcceptNotificationBonus$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f45827h;

    /* renamed from: i  reason: collision with root package name */
    Object f45828i;

    /* renamed from: j  reason: collision with root package name */
    int f45829j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HomeCheckInDialog f45830k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HomeCheckInDialog$requestAcceptNotificationBonus$1(HomeCheckInDialog homeCheckInDialog, c<? super HomeCheckInDialog$requestAcceptNotificationBonus$1> cVar) {
        super(2, cVar);
        this.f45830k = homeCheckInDialog;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new HomeCheckInDialog$requestAcceptNotificationBonus$1(this.f45830k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((HomeCheckInDialog$requestAcceptNotificationBonus$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0092  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r9.f45829j
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L34
            if (r1 == r4) goto L29
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            kotlin.f.b(r10)
            goto La8
        L17:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1f:
            java.lang.Object r1 = r9.f45828i
            com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult r1 = (com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult) r1
            java.lang.Object r1 = r9.f45827h
            kotlin.f.b(r10)
            goto L8a
        L29:
            kotlin.f.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r10 = r10.n()
        L32:
            r1 = r10
            goto L60
        L34:
            kotlin.f.b(r10)
            com.startshorts.androidplayer.repo.rewards.RewardsRepo r10 = com.startshorts.androidplayer.repo.rewards.RewardsRepo.f44515a
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r1 = r9.f45830k
            android.content.Context r1 = r1.requireContext()
            java.lang.String r6 = "requireContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r6)
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r6 = r9.f45830k
            com.startshorts.androidplayer.bean.checkin.CheckInInfoResult r6 = com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.c0(r6)
            if (r6 == 0) goto L51
            java.lang.Integer r6 = r6.getNotificationTaskId()
            goto L52
        L51:
            r6 = r5
        L52:
            java.lang.String r6 = java.lang.String.valueOf(r6)
            r9.f45829j = r4
            r4 = 0
            java.lang.Object r10 = r10.c(r1, r6, r4, r9)
            if (r10 != r0) goto L32
            return r0
        L60:
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r10 = r9.f45830k
            boolean r4 = kotlin.Result.j(r1)
            if (r4 == 0) goto L8a
            r4 = r1
            com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult r4 = (com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult) r4
            if (r4 == 0) goto L8a
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog.k0(r10)
            int r6 = r4.getTaskBonus()
            gt.j1 r7 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1 r8 = new com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1$1$1$1
            r8.<init>(r10, r6, r5)
            r9.f45827h = r1
            r9.f45828i = r4
            r9.f45829j = r3
            java.lang.Object r10 = gt.e.g(r7, r8, r9)
            if (r10 != r0) goto L8a
            return r0
        L8a:
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog r10 = r9.f45830k
            java.lang.Throwable r3 = kotlin.Result.g(r1)
            if (r3 == 0) goto La8
            gt.j1 r3 = gt.q0.c()
            com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1 r4 = new com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1$2$1
            r4.<init>(r10, r5)
            r9.f45827h = r1
            r9.f45828i = r5
            r9.f45829j = r2
            java.lang.Object r10 = gt.e.g(r3, r4, r9)
            if (r10 != r0) goto La8
            return r0
        La8:
            kotlin.Unit r10 = kotlin.Unit.f60915a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestAcceptNotificationBonus$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
