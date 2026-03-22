package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EpisodeRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$reportEpisodeWatched$2", f = "EpisodeRemoteDS.kt", l = {20}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$reportEpisodeWatched$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44053h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44054i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44055j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRemoteDS$reportEpisodeWatched$2(int i10, int i11, c<? super EpisodeRemoteDS$reportEpisodeWatched$2> cVar) {
        super(1, cVar);
        this.f44054i = i10;
        this.f44055j = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new EpisodeRemoteDS$reportEpisodeWatched$2(this.f44054i, this.f44055j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44053h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44054i;
            int i12 = this.f44055j;
            this.f44053h = 1;
            obj = j10.i0(i11, i12, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((EpisodeRemoteDS$reportEpisodeWatched$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
