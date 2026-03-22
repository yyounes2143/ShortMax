package com.startshorts.androidplayer.viewmodel.immersion;

import com.startshorts.androidplayer.bean.purchase.CoinSku;
import gt.g0;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$queryUnlockEpisodeProductList$1", f = "UnlockViewModel.kt", l = {299}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nUnlockViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,858:1\n1863#2,2:859\n1863#2,2:861\n1755#2,3:863\n1755#2,3:867\n1010#2,2:870\n1863#2,2:872\n1#3:866\n*S KotlinDebug\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1\n*L\n318#1:859,2\n336#1:861,2\n341#1:863,3\n366#1:867,3\n375#1:870,2\n384#1:872,2\n*E\n"})
/* loaded from: classes7.dex */
public final class UnlockViewModel$queryUnlockEpisodeProductList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48670h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ UnlockViewModel f48671i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f48672j;

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel$queryUnlockEpisodeProductList$1\n*L\n1#1,102:1\n375#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((CoinSku) t10).getSort()), Integer.valueOf(((CoinSku) t11).getSort()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockViewModel$queryUnlockEpisodeProductList$1(UnlockViewModel unlockViewModel, boolean z10, rs.c<? super UnlockViewModel$queryUnlockEpisodeProductList$1> cVar) {
        super(2, cVar);
        this.f48671i = unlockViewModel;
        this.f48672j = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new UnlockViewModel$queryUnlockEpisodeProductList$1(this.f48671i, this.f48672j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((UnlockViewModel$queryUnlockEpisodeProductList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x01b3, code lost:
        r4 = r0.B0(r1.getRetainSkuInfoResponses());
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 741
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel$queryUnlockEpisodeProductList$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
