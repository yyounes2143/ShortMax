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
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByEpisodeNum$1", f = "ImmersionViewModel.kt", l = {300, 304}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nImmersionViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,782:1\n125#2,13:783\n*S KotlinDebug\n*F\n+ 1 ImmersionViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel$queryEpisodesByEpisodeNum$1\n*L\n313#1:783,13\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionViewModel$queryEpisodesByEpisodeNum$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f48608h;

    /* renamed from: i  reason: collision with root package name */
    int f48609i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ ImmersionViewModel f48610j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f48611k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48612l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ boolean f48613m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f48614n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionViewModel$queryEpisodesByEpisodeNum$1(ImmersionViewModel immersionViewModel, int i10, int i11, boolean z10, int i12, rs.c<? super ImmersionViewModel$queryEpisodesByEpisodeNum$1> cVar) {
        super(2, cVar);
        this.f48610j = immersionViewModel;
        this.f48611k = i10;
        this.f48612l = i11;
        this.f48613m = z10;
        this.f48614n = i12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ImmersionViewModel$queryEpisodesByEpisodeNum$1(this.f48610j, this.f48611k, this.f48612l, this.f48613m, this.f48614n, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ImmersionViewModel$queryEpisodesByEpisodeNum$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00bb  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel$queryEpisodesByEpisodeNum$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
