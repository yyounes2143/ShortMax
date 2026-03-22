package com.startshorts.androidplayer.viewmodel.immersion;

import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryShortsDetail$1", f = "ImmersionViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryShortsDetail$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48645h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48646i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48647j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryShortsDetail$1(ImmersionViewModel immersionViewModel, int i10, rs.c<? super ImmersionViewModel$queryShortsDetail$1> cVar) {
        super(2, cVar);
        this.f48646i = immersionViewModel;
        this.f48647j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryShortsDetail$1(this.f48646i, this.f48647j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryShortsDetail$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object y10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48645h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                y10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ImmersionRepo immersionRepo = ImmersionRepo.f44129a;
            str = this.f48646i.f48548f;
            if (str == null) {
                str = "";
            }
            int i11 = this.f48647j;
            this.f48645h = 1;
            y10 = immersionRepo.y(str, i11, this);
            if (y10 == f10) {
                return f10;
            }
        }
        ImmersionViewModel immersionViewModel = this.f48646i;
        if (Result.j(y10)) {
            ShortsDetail shortsDetail = (ShortsDetail) y10;
            if (shortsDetail == null) {
                return Unit.f60915a;
            }
            if (shortsDetail.getEpisodeNum() <= 0) {
                shortsDetail.setEpisodeNum(1);
            }
            o.b(immersionViewModel.Q(), new d.h(shortsDetail));
        }
        ImmersionViewModel immersionViewModel2 = this.f48646i;
        Throwable g10 = Result.g(y10);
        if (g10 != null) {
            immersionViewModel2.z(g10);
        }
        return Unit.f60915a;
    }
}
