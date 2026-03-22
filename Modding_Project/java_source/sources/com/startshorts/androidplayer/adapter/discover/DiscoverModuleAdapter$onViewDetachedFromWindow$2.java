package com.startshorts.androidplayer.adapter.discover;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverModuleAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$onViewDetachedFromWindow$2", f = "DiscoverModuleAdapter.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class DiscoverModuleAdapter$onViewDetachedFromWindow$2 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37446h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverModuleAdapter f37447i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DiscoverModule f37448j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f37449k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverModuleAdapter$onViewDetachedFromWindow$2(DiscoverModuleAdapter discoverModuleAdapter, DiscoverModule discoverModule, String str, rs.c<? super DiscoverModuleAdapter$onViewDetachedFromWindow$2> cVar) {
        super(2, cVar);
        this.f37447i = discoverModuleAdapter;
        this.f37448j = discoverModule;
        this.f37449k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverModuleAdapter$onViewDetachedFromWindow$2(this.f37447i, this.f37448j, this.f37449k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverModuleAdapter$onViewDetachedFromWindow$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        Integer[] numArr;
        ConcurrentHashMap concurrentHashMap;
        ConcurrentHashMap concurrentHashMap2;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f37446h == 0) {
            kotlin.f.b(obj);
            z10 = this.f37447i.f37375y;
            if (z10) {
                return Unit.f60915a;
            }
            StaggeredGridLayoutManager i02 = this.f37447i.i0();
            if (i02 != null) {
                this.f37447i.f37375y = true;
                try {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    i02.findFirstCompletelyVisibleItemPositions(iArr);
                    i02.findLastCompletelyVisibleItemPositions(iArr2);
                    numArr = new Integer[]{kotlin.coroutines.jvm.internal.a.d(Math.min(iArr[0], iArr[1])), kotlin.coroutines.jvm.internal.a.d(Math.max(iArr2[0], iArr2[1]))};
                } catch (Exception unused) {
                    numArr = new Integer[]{kotlin.coroutines.jvm.internal.a.d(-1), kotlin.coroutines.jvm.internal.a.d(-1)};
                }
                Integer[] numArr2 = {kotlin.coroutines.jvm.internal.a.d(this.f37448j.getModuleStartPosition()), kotlin.coroutines.jvm.internal.a.d(this.f37448j.getModuleEndPosition())};
                DiscoverModuleAdapter discoverModuleAdapter = this.f37447i;
                discoverModuleAdapter.r("areaVisible([" + numArr[0].intValue() + ',' + numArr[1].intValue() + "]) areaModule([" + numArr2[0].intValue() + ',' + numArr2[1].intValue() + "])");
                if (kotlin.ranges.e.e(numArr[0].intValue(), numArr2[0].intValue()) > kotlin.ranges.e.j(numArr[1].intValue(), numArr2[1].intValue())) {
                    concurrentHashMap = this.f37447i.f37373w;
                    concurrentHashMap.put(this.f37449k, kotlin.coroutines.jvm.internal.a.a(false));
                    concurrentHashMap2 = this.f37447i.f37374x;
                    concurrentHashMap2.remove(this.f37449k);
                }
                this.f37447i.f37375y = false;
                return Unit.f60915a;
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
