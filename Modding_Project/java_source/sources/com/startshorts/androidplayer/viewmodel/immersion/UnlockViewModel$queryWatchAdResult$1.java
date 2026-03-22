package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.QuerySingleUnlockEpisodeMethodsResult;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.repo.unlock.UnlockRepo;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$queryWatchAdResult$1", f = "UnlockViewModel.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockViewModel$queryWatchAdResult$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48674h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockViewModel f48675i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f48676j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockViewModel$queryWatchAdResult$1(UnlockViewModel unlockViewModel, Context context, rs.c<? super UnlockViewModel$queryWatchAdResult$1> cVar) {
        super(2, cVar);
        this.f48675i = unlockViewModel;
        this.f48676j = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UnlockViewModel$queryWatchAdResult$1(this.f48675i, this.f48676j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((UnlockViewModel$queryWatchAdResult$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BaseEpisode baseEpisode;
        BaseEpisode baseEpisode2;
        Object m10;
        String str;
        boolean z10;
        String str2;
        UnlockEpisodeAdMethod watchAdResultResponse;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48674h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                m10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            baseEpisode = this.f48675i.f48655k;
            if (baseEpisode != null) {
                int shortPlayId = baseEpisode.getShortPlayId();
                baseEpisode2 = this.f48675i.f48655k;
                if (baseEpisode2 != null) {
                    int id2 = baseEpisode2.getId();
                    UnlockRepo unlockRepo = UnlockRepo.f44686a;
                    Context context = this.f48676j;
                    String q10 = ud.a.f68411a.q();
                    if (q10 == null) {
                        q10 = "";
                    }
                    this.f48674h = 1;
                    m10 = UnlockRepo.m(unlockRepo, false, context, shortPlayId, id2, q10, this, 1, null);
                    if (m10 == f10) {
                        return f10;
                    }
                } else {
                    return Unit.f60915a;
                }
            } else {
                return Unit.f60915a;
            }
        }
        UnlockViewModel unlockViewModel = this.f48675i;
        String str3 = "other";
        if (Result.j(m10)) {
            QuerySingleUnlockEpisodeMethodsResult querySingleUnlockEpisodeMethodsResult = (QuerySingleUnlockEpisodeMethodsResult) m10;
            if (querySingleUnlockEpisodeMethodsResult != null && (watchAdResultResponse = querySingleUnlockEpisodeMethodsResult.getWatchAdResultResponse()) != null) {
                z10 = watchAdResultResponse.enable();
            } else {
                z10 = false;
            }
            MutableLiveData<f> a02 = unlockViewModel.a0();
            str2 = unlockViewModel.f48651g;
            if (str2 == null) {
                str2 = "other";
            }
            o.b(a02, new f.a(z10, str2));
        }
        UnlockViewModel unlockViewModel2 = this.f48675i;
        Throwable g10 = Result.g(m10);
        if (g10 != null) {
            unlockViewModel2.z(g10);
            MutableLiveData<f> a03 = unlockViewModel2.a0();
            str = unlockViewModel2.f48651g;
            if (str != null) {
                str3 = str;
            }
            o.b(a03, new f.a(false, str3));
        }
        return Unit.f60915a;
    }
}
