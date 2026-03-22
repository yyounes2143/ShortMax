package com.startshorts.androidplayer.ui.activity.immersion;

import android.widget.Toast;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import uh.m1;
/* compiled from: ImmersionActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1", f = "ImmersionActivity.kt", l = {4236}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45304h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45305i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f45306j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ImmersionActivity f45307k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1(int i10, int i11, ImmersionActivity immersionActivity, c<? super ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1> cVar) {
        super(2, cVar);
        this.f45305i = i10;
        this.f45306j = i11;
        this.f45307k = immersionActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1(this.f45305i, this.f45306j, this.f45307k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ImmersionActivity$createSubtitleFeature$1$1$onSubtitleLoad$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f45304h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            DownloadEpisodeManager downloadEpisodeManager = DownloadEpisodeManager.f45066a;
            int i11 = this.f45305i;
            int i12 = this.f45306j;
            this.f45304h = 1;
            obj = downloadEpisodeManager.I(i11, i12, this);
            if (obj == f10) {
                return f10;
            }
        }
        DownloadTaskInfo downloadTaskInfo = (DownloadTaskInfo) obj;
        if (downloadTaskInfo != null && downloadTaskInfo.getDownloadState() == 4) {
            m1 m1Var = m1.f68462a;
            m1Var.a(downloadTaskInfo);
            if (!m1Var.b()) {
                ImmersionActivity immersionActivity = this.f45307k;
                Toast.makeText(immersionActivity, immersionActivity.getString(R$string.subtittle_load_failed), 0).show();
            }
            return Unit.f60915a;
        }
        return Unit.f60915a;
    }
}
