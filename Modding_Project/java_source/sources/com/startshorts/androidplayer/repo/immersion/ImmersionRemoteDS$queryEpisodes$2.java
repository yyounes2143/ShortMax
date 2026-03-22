package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult;
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
/* compiled from: ImmersionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryEpisodes$2", f = "ImmersionRemoteDS.kt", l = {73, 78}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryEpisodes$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryEpisodesResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44086h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44087i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44088j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44089k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f44090l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f44091m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryEpisodes$2(String str, int i10, int i11, int i12, int i13, c<? super ImmersionRemoteDS$queryEpisodes$2> cVar) {
        super(1, cVar);
        this.f44087i = str;
        this.f44088j = i10;
        this.f44089k = i11;
        this.f44090l = i12;
        this.f44091m = i13;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ImmersionRemoteDS$queryEpisodes$2(this.f44087i, this.f44088j, this.f44089k, this.f44090l, this.f44091m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44086h;
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
            k.a i11 = k.f41787a.i();
            String str = this.f44087i;
            int i12 = this.f44088j;
            int i13 = this.f44089k;
            int i14 = this.f44090l;
            this.f44086h = 1;
            obj = i11.P(str, i12, i13, i14, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a i15 = k.f41787a.i();
        String str2 = this.f44087i;
        int i16 = this.f44088j;
        int i17 = this.f44089k;
        int i18 = this.f44090l;
        int i19 = this.f44091m;
        this.f44086h = 2;
        obj = i15.E1(str2, i16, i17, i18, i19, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryEpisodesResult>> cVar) {
        return ((ImmersionRemoteDS$queryEpisodes$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
