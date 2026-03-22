package com.startshorts.androidplayer.ui.activity.download;

import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$2", f = "DownloadEpisodeManager.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 270}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDownloadEpisodeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,923:1\n1863#2,2:924\n1863#2,2:926\n*S KotlinDebug\n*F\n+ 1 DownloadEpisodeManager.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager$init$2\n*L\n265#1:924,2\n272#1:926,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$init$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45101h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadEpisodeManager$init$2(rs.c<? super DownloadEpisodeManager$init$2> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$init$2(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$init$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ab  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f45101h
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L25
            if (r1 == r4) goto L21
            if (r1 == r3) goto L1d
            if (r1 != r2) goto L15
            kotlin.f.b(r8)
            goto L85
        L15:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1d:
            kotlin.f.b(r8)
            goto L7a
        L21:
            kotlin.f.b(r8)
            goto L33
        L25:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.ui.activity.download.data.ShortDB r8 = com.startshorts.androidplayer.ui.activity.download.data.ShortDB.f45222a
            r7.f45101h = r4
            java.lang.Object r8 = r8.b(r7)
            if (r8 != r0) goto L33
            return r0
        L33:
            java.util.List r8 = (java.util.List) r8
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r5 = "查询下载数据库:"
            r1.append(r5)
            int r5 = r8.size()
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            uh.s.b(r1)
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
        L53:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r8.next()
            com.startshorts.androidplayer.bean.download.ShortTaskInfo r1 = (com.startshorts.androidplayer.bean.download.ShortTaskInfo) r1
            java.util.HashMap r5 = com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager.l()
            int r6 = r1.getShortPlayId()
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.a.d(r6)
            r5.put(r6, r1)
            goto L53
        L6f:
            com.startshorts.androidplayer.ui.activity.download.data.DownloadDB r8 = com.startshorts.androidplayer.ui.activity.download.data.DownloadDB.f45210a
            r7.f45101h = r3
            java.lang.Object r8 = r8.c(r7)
            if (r8 != r0) goto L7a
            return r0
        L7a:
            com.startshorts.androidplayer.ui.activity.download.data.DownloadDB r8 = com.startshorts.androidplayer.ui.activity.download.data.DownloadDB.f45210a
            r7.f45101h = r2
            java.lang.Object r8 = r8.d(r7)
            if (r8 != r0) goto L85
            return r0
        L85:
            java.util.List r8 = (java.util.List) r8
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "查询数据库:"
            r0.append(r1)
            int r1 = r8.size()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            uh.s.b(r0)
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Iterator r8 = r8.iterator()
        La5:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto Lc0
            java.lang.Object r0 = r8.next()
            com.startshorts.androidplayer.bean.download.DownloadTaskInfo r0 = (com.startshorts.androidplayer.bean.download.DownloadTaskInfo) r0
            int r1 = r0.getDownloadState()
            if (r1 != r3) goto Lba
            r0.setDownloadState(r4)
        Lba:
            com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager r1 = com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager.f45066a
            com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager.f(r1, r0)
            goto La5
        Lc0:
            com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager r8 = com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager.f45066a
            com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager.q(r8)
            com.ss.ttvideoengine.download.Downloader r0 = com.ss.ttvideoengine.download.Downloader.getInstance()
            fk.u r1 = fk.u.f51776a
            android.content.Context r1 = r1.b()
            r0.loadAllTasks(r1)
            r8.f0()
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$init$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
