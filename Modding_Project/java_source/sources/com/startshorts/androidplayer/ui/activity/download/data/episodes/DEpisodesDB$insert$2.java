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
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB$insert$2", f = "DEpisodesDB.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class DEpisodesDB$insert$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45241h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ f f45242i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DEpisodesDB$insert$2(f fVar, c<? super DEpisodesDB$insert$2> cVar) {
        super(2, cVar);
        this.f45242i = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new DEpisodesDB$insert$2(this.f45242i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((DEpisodesDB$insert$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f45241h == 0) {
            kotlin.f.b(obj);
            g.f70473a.a(u.f51776a.b()).e().b(this.f45242i);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
