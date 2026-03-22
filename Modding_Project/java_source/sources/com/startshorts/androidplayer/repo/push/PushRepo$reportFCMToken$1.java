package com.startshorts.androidplayer.repo.push;

import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.push.PushRepo$reportFCMToken$1", f = "PushRepo.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DEMUX_TIME, 371}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class PushRepo$reportFCMToken$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f44428h;

    /* renamed from: i  reason: collision with root package name */
    Object f44429i;

    /* renamed from: j  reason: collision with root package name */
    int f44430j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PushRepo$reportFCMToken$1(c<? super PushRepo$reportFCMToken$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PushRepo$reportFCMToken$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PushRepo$reportFCMToken$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00aa  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f44430j
            java.lang.String r2 = "PushRepo"
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L34
            if (r1 == r4) goto L29
            if (r1 != r3) goto L21
            java.lang.Object r0 = r7.f44429i
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Object r1 = r7.f44428h
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.n()
            goto L99
        L21:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L29:
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.n()
        L32:
            r1 = r8
            goto L42
        L34:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.push.PushHelper r8 = com.startshorts.androidplayer.manager.push.PushHelper.f42831a
            r7.f44430j = r4
            java.lang.Object r8 = r8.a(r7)
            if (r8 != r0) goto L32
            return r0
        L42:
            boolean r8 = kotlin.Result.j(r1)
            if (r8 == 0) goto La4
            r8 = r1
            java.lang.String r8 = (java.lang.String) r8
            com.startshorts.androidplayer.log.Logger r4 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "queryFCMToken success -> "
            r5.append(r6)
            r5.append(r8)
            java.lang.String r5 = r5.toString()
            r4.e(r2, r5)
            if (r8 == 0) goto La4
            int r4 = r8.length()
            if (r4 != 0) goto L6a
            goto La4
        L6a:
            ud.b r4 = ud.b.f68412a
            java.lang.String r4 = r4.w0()
            if (r4 == 0) goto L7f
            int r5 = r4.length()
            if (r5 != 0) goto L79
            goto L7f
        L79:
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r8)
            if (r4 != 0) goto La4
        L7f:
            com.startshorts.androidplayer.utils.campaign.MatchEventUtil r4 = com.startshorts.androidplayer.utils.campaign.MatchEventUtil.f48183a
            r4.n(r8)
            com.startshorts.androidplayer.repo.push.PushRepo r4 = com.startshorts.androidplayer.repo.push.PushRepo.f44374a
            com.startshorts.androidplayer.repo.push.PushRemoteDS r4 = com.startshorts.androidplayer.repo.push.PushRepo.e(r4)
            r7.f44428h = r1
            r7.f44429i = r8
            r7.f44430j = r3
            java.lang.Object r3 = r4.i(r8, r7)
            if (r3 != r0) goto L97
            return r0
        L97:
            r0 = r8
            r8 = r3
        L99:
            boolean r8 = kotlin.Result.j(r8)
            if (r8 == 0) goto La4
            ud.b r8 = ud.b.f68412a
            r8.H3(r0)
        La4:
            java.lang.Throwable r8 = kotlin.Result.g(r1)
            if (r8 == 0) goto Lc4
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "queryFCMToken failed -> "
            r1.append(r3)
            java.lang.String r8 = r8.getMessage()
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            r0.e(r2, r8)
        Lc4:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.push.PushRepo$reportFCMToken$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
