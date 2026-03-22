package com.startshorts.androidplayer.ui.activity.download;

import android.os.SystemClock;
import com.ss.ttvideoengine.utils.TTHelper;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import uh.s;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DownloadEpisodeManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager$updateRemainSize$1", f = "DownloadEpisodeManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DownloadEpisodeManager$updateRemainSize$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45122h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DownloadEpisodeManager$updateRemainSize$1(rs.c<? super DownloadEpisodeManager$updateRemainSize$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DownloadEpisodeManager$updateRemainSize$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DownloadEpisodeManager$updateRemainSize$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f45122h == 0) {
            kotlin.f.b(obj);
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long freeSize = TTHelper.getFreeSize(u.f51776a.b());
                s.b("update file size cost: " + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms size is:" + freeSize);
                DownloadEpisodeManager.f45066a.M().postValue(kotlin.coroutines.jvm.internal.a.e(freeSize));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
