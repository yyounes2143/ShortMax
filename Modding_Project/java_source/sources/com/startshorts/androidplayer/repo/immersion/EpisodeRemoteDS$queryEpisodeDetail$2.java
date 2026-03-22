package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
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
@d(c = "com.startshorts.androidplayer.repo.immersion.EpisodeRemoteDS$queryEpisodeDetail$2", f = "EpisodeRemoteDS.kt", l = {28, 30}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class EpisodeRemoteDS$queryEpisodeDetail$2 extends SuspendLambda implements Function1<c<? super ServerResult<BaseEpisode>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44035h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44036i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44037j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44038k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EpisodeRemoteDS$queryEpisodeDetail$2(String str, int i10, int i11, c<? super EpisodeRemoteDS$queryEpisodeDetail$2> cVar) {
        super(1, cVar);
        this.f44036i = str;
        this.f44037j = i10;
        this.f44038k = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new EpisodeRemoteDS$queryEpisodeDetail$2(this.f44036i, this.f44037j, this.f44038k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44035h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return (ServerResult) obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            return (ServerResult) obj;
        }
        f.b(obj);
        if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            k.a j10 = k.f41787a.j();
            String str = this.f44036i;
            int i11 = this.f44037j;
            int i12 = this.f44038k;
            this.f44035h = 1;
            obj = j10.d2(str, i11, i12, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        String str2 = this.f44036i;
        int i13 = this.f44037j;
        int i14 = this.f44038k;
        this.f44035h = 2;
        obj = j11.s0(str2, i13, i14, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<BaseEpisode>> cVar) {
        return ((EpisodeRemoteDS$queryEpisodeDetail$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
