package com.startshorts.androidplayer.manager.event;

import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SupersetEventLogger.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.event.SupersetEventLogger$startForegroundTimerCheck$1", f = "SupersetEventLogger.kt", l = {247, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class SupersetEventLogger$startForegroundTimerCheck$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42527h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f42528i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ SupersetEventLogger f42529j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupersetEventLogger$startForegroundTimerCheck$1(SupersetEventLogger supersetEventLogger, c<? super SupersetEventLogger$startForegroundTimerCheck$1> cVar) {
        super(2, cVar);
        this.f42529j = supersetEventLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        SupersetEventLogger$startForegroundTimerCheck$1 supersetEventLogger$startForegroundTimerCheck$1 = new SupersetEventLogger$startForegroundTimerCheck$1(this.f42529j, cVar);
        supersetEventLogger$startForegroundTimerCheck$1.f42528i = obj;
        return supersetEventLogger$startForegroundTimerCheck$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SupersetEventLogger$startForegroundTimerCheck$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038 A[Catch: Exception -> 0x0028, TRY_ENTER, TryCatch #0 {Exception -> 0x0028, blocks: (B:17:0x0038, B:20:0x0049, B:22:0x0051, B:24:0x005e, B:10:0x0024), top: B:31:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0051 A[Catch: Exception -> 0x0028, TryCatch #0 {Exception -> 0x0028, blocks: (B:17:0x0038, B:20:0x0049, B:22:0x0051, B:24:0x005e, B:10:0x0024), top: B:31:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x004f -> B:15:0x0032). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x005c -> B:15:0x0032). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005e -> B:15:0x0032). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00ae -> B:15:0x0032). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f42527h
            java.lang.String r2 = "SupersetEventLogger"
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2a
            if (r1 == r4) goto L20
            if (r1 != r3) goto L18
            java.lang.Object r1 = r8.f42528i
            gt.g0 r1 = (gt.g0) r1
            kotlin.f.b(r9)
            goto L32
        L18:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L20:
            java.lang.Object r1 = r8.f42528i
            gt.g0 r1 = (gt.g0) r1
            kotlin.f.b(r9)     // Catch: java.lang.Exception -> L28
            goto L49
        L28:
            r9 = move-exception
            goto L8a
        L2a:
            kotlin.f.b(r9)
            java.lang.Object r9 = r8.f42528i
            gt.g0 r9 = (gt.g0) r9
            r1 = r9
        L32:
            boolean r9 = kotlinx.coroutines.i.h(r1)
            if (r9 == 0) goto Lb1
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r9 = r8.f42529j     // Catch: java.lang.Exception -> L28
            long r5 = com.startshorts.androidplayer.manager.event.SupersetEventLogger.h(r9)     // Catch: java.lang.Exception -> L28
            r8.f42528i = r1     // Catch: java.lang.Exception -> L28
            r8.f42527h = r4     // Catch: java.lang.Exception -> L28
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r5, r8)     // Catch: java.lang.Exception -> L28
            if (r9 != r0) goto L49
            return r0
        L49:
            ud.a r9 = ud.a.f68411a     // Catch: java.lang.Exception -> L28
            boolean r9 = r9.t()     // Catch: java.lang.Exception -> L28
            if (r9 == 0) goto L32
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r9 = r8.f42529j     // Catch: java.lang.Exception -> L28
            com.startshorts.androidplayer.manager.event.SupersetEventLogger.k(r9)     // Catch: java.lang.Exception -> L28
            com.startshorts.androidplayer.db.repository.EventRepository r9 = com.startshorts.androidplayer.db.repository.EventRepository.f41474b     // Catch: java.lang.Exception -> L28
            int r9 = r9.E()     // Catch: java.lang.Exception -> L28
            if (r9 <= 0) goto L32
            com.startshorts.androidplayer.log.Logger r5 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Exception -> L28
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L28
            r6.<init>()     // Catch: java.lang.Exception -> L28
            java.lang.String r7 = "Strategy: Timer trigger ("
            r6.append(r7)     // Catch: java.lang.Exception -> L28
            r6.append(r9)     // Catch: java.lang.Exception -> L28
            r9 = 41
            r6.append(r9)     // Catch: java.lang.Exception -> L28
            java.lang.String r9 = r6.toString()     // Catch: java.lang.Exception -> L28
            r5.h(r2, r9)     // Catch: java.lang.Exception -> L28
            com.startshorts.androidplayer.manager.event.SupersetEventLogger r9 = r8.f42529j     // Catch: java.lang.Exception -> L28
            jt.d r9 = com.startshorts.androidplayer.manager.event.SupersetEventLogger.j(r9)     // Catch: java.lang.Exception -> L28
            com.startshorts.androidplayer.manager.event.SupersetEventLogger$b$a r5 = new com.startshorts.androidplayer.manager.event.SupersetEventLogger$b$a     // Catch: java.lang.Exception -> L28
            java.lang.String r6 = "Timer"
            r5.<init>(r4, r6)     // Catch: java.lang.Exception -> L28
            r9.h(r5)     // Catch: java.lang.Exception -> L28
            goto L32
        L8a:
            com.startshorts.androidplayer.log.Logger r5 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Timer loop error: "
            r6.append(r7)
            java.lang.String r9 = r9.getMessage()
            r6.append(r9)
            java.lang.String r9 = r6.toString()
            r5.e(r2, r9)
            r8.f42528i = r1
            r8.f42527h = r3
            r5 = 10000(0x2710, double:4.9407E-320)
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r5, r8)
            if (r9 != r0) goto L32
            return r0
        Lb1:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.event.SupersetEventLogger$startForegroundTimerCheck$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
