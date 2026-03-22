package com.startshorts.androidplayer.viewmodel.shorts;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShortsViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$loadEpisodes$2", f = "ShortsViewModel.kt", l = {107, 110, 111}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nShortsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/shorts/ShortsViewModel$loadEpisodes$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"})
/* loaded from: classes7.dex */
public final class ShortsViewModel$loadEpisodes$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f49377h;

    /* renamed from: i  reason: collision with root package name */
    Object f49378i;

    /* renamed from: j  reason: collision with root package name */
    boolean f49379j;

    /* renamed from: k  reason: collision with root package name */
    int f49380k;

    /* renamed from: l  reason: collision with root package name */
    int f49381l;

    /* renamed from: m  reason: collision with root package name */
    int f49382m;

    /* renamed from: n  reason: collision with root package name */
    private /* synthetic */ Object f49383n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ Ref.IntRef f49384o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ ShortsViewModel f49385p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ boolean f49386q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ int f49387r;

    /* renamed from: s  reason: collision with root package name */
    final /* synthetic */ int f49388s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsViewModel$loadEpisodes$2(Ref.IntRef intRef, ShortsViewModel shortsViewModel, boolean z10, int i10, int i11, c<? super ShortsViewModel$loadEpisodes$2> cVar) {
        super(2, cVar);
        this.f49384o = intRef;
        this.f49385p = shortsViewModel;
        this.f49386q = z10;
        this.f49387r = i10;
        this.f49388s = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        ShortsViewModel$loadEpisodes$2 shortsViewModel$loadEpisodes$2 = new ShortsViewModel$loadEpisodes$2(this.f49384o, this.f49385p, this.f49386q, this.f49387r, this.f49388s, cVar);
        shortsViewModel$loadEpisodes$2.f49383n = obj;
        return shortsViewModel$loadEpisodes$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ShortsViewModel$loadEpisodes$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00e3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.shorts.ShortsViewModel$loadEpisodes$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
