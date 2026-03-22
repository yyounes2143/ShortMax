package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.ShortsListNewBean;
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
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeList$2", f = "EpisodeRemoteDS.kt", l = {50}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$queryEpisodeList$2 extends SuspendLambda implements Function1<c<? super ServerResult<ShortsListNewBean>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44042h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44043i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44044j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44045k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRemoteDS$queryEpisodeList$2(int i10, int i11, int i12, c<? super EpisodeRemoteDS$queryEpisodeList$2> cVar) {
        super(1, cVar);
        this.f44043i = i10;
        this.f44044j = i11;
        this.f44045k = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new EpisodeRemoteDS$queryEpisodeList$2(this.f44043i, this.f44044j, this.f44045k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44042h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44043i;
            int i12 = this.f44044j;
            int i13 = this.f44045k;
            this.f44042h = 1;
            obj = j10.s(i11, i12, i13, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<ShortsListNewBean>> cVar) {
        return ((EpisodeRemoteDS$queryEpisodeList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
