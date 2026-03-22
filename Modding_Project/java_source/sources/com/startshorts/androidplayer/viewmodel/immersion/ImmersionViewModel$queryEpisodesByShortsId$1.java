package com.startshorts.androidplayer.viewmodel.immersion;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByShortsId$1", f = "ImmersionViewModel.kt", l = {341, 349}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByShortsId$1\n*L\n358#1:783,13\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodesByShortsId$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48621h;

    /* renamed from: i  reason: collision with root package name */
    int f48622i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48623j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48624k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48625l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodesByShortsId$1(ImmersionViewModel immersionViewModel, int i10, int i11, rs.c<? super ImmersionViewModel$queryEpisodesByShortsId$1> cVar) {
        super(2, cVar);
        this.f48623j = immersionViewModel;
        this.f48624k = i10;
        this.f48625l = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryEpisodesByShortsId$1(this.f48623j, this.f48624k, this.f48625l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryEpisodesByShortsId$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0174  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByShortsId$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
