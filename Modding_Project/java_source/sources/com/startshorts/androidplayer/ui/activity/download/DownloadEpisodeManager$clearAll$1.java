package com.startshorts.androidplayer.ui.activity.download;

import com.ss.ttvideoengine.download.Downloader;
import com.startshorts.androidplayer.ui.activity.download.b;
import com.startshorts.androidplayer.ui.activity.download.data.DownloadDB;
import com.startshorts.androidplayer.ui.activity.download.data.ShortDB;
import com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB;
import gt.g0;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$clearAll$1", f = "DownloadEpisodeManager.kt", l = {316, 317}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$clearAll$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45079h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadEpisodeManager$clearAll$1(rs.c<? super DownloadEpisodeManager$clearAll$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$clearAll$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$clearAll$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f45079h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    DownloadDB.f45210a.a();
                    au.c.d().l(new b.C0630b(0, 1, null));
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            Downloader.getInstance().invalidateAndCancelAllTasks();
            hashMap = DownloadEpisodeManager.f45077l;
            hashMap.clear();
            hashMap2 = DownloadEpisodeManager.f45068c;
            hashMap2.clear();
            hashMap3 = DownloadEpisodeManager.f45067b;
            hashMap3.clear();
            hashMap4 = DownloadEpisodeManager.f45069d;
            hashMap4.clear();
            DEpisodesDB dEpisodesDB = DEpisodesDB.f45229a;
            this.f45079h = 1;
            if (dEpisodesDB.a(this) == f10) {
                return f10;
            }
        }
        ShortDB shortDB = ShortDB.f45222a;
        this.f45079h = 2;
        if (shortDB.a(this) == f10) {
            return f10;
        }
        DownloadDB.f45210a.a();
        au.c.d().l(new b.C0630b(0, 1, null));
        return Unit.f60915a;
    }
}
