package com.startshorts.androidplayer.ui.activity.download.data.episodes;

import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import rs.c;
import xh.f;
import xh.g;
/* compiled from: DEpisodesDB.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB$getEpisodesByShortPlayId$2", f = "DEpisodesDB.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DEpisodesDB$getEpisodesByShortPlayId$2 extends SuspendLambda implements Function2<g0, c<? super f>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45231h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f45232i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DEpisodesDB$getEpisodesByShortPlayId$2(int i10, c<? super DEpisodesDB$getEpisodesByShortPlayId$2> cVar) {
        super(2, cVar);
        this.f45232i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DEpisodesDB$getEpisodesByShortPlayId$2(this.f45232i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super f> cVar) {
        return ((DEpisodesDB$getEpisodesByShortPlayId$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45231h == 0) {
            kotlin.f.b(obj);
            return g.f70473a.a(u.f51776a.b()).e().c(this.f45232i);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
