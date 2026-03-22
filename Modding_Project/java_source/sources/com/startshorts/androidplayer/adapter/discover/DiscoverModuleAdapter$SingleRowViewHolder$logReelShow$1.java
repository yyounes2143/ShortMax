package com.startshorts.androidplayer.adapter.discover;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: DiscoverModuleAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1", f = "DiscoverModuleAdapter.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1872#2,3:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1\n*L\n2017#1:2304,3\n*E\n"})
/* loaded from: classes6.dex */
final class DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37383h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiscoverModuleAdapter.SingleRowViewHolder f37384i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<DiscoverShorts> f37385j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DiscoverModuleAdapter f37386k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1(DiscoverModuleAdapter.SingleRowViewHolder singleRowViewHolder, List<DiscoverShorts> list, DiscoverModuleAdapter discoverModuleAdapter, rs.c<? super DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1> cVar) {
        super(2, cVar);
        this.f37384i = singleRowViewHolder;
        this.f37385j = list;
        this.f37386k = discoverModuleAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1(this.f37384i, this.f37385j, this.f37386k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverModuleAdapter$SingleRowViewHolder$logReelShow$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        LinearLayoutManager linearLayoutManager;
        Pair pair;
        Integer num;
        Integer num2;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f37383h == 0) {
            kotlin.f.b(obj);
            RecyclerView.LayoutManager layoutManager = this.f37384i.c().f40157a.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                linearLayoutManager = (LinearLayoutManager) layoutManager;
            } else {
                linearLayoutManager = null;
            }
            if (linearLayoutManager != null) {
                List<DiscoverShorts> list = this.f37385j;
                DiscoverModuleAdapter discoverModuleAdapter = this.f37386k;
                DiscoverModuleAdapter.SingleRowViewHolder singleRowViewHolder = this.f37384i;
                int size = list.size();
                try {
                    pair = new Pair(kotlin.coroutines.jvm.internal.a.d(linearLayoutManager.findFirstVisibleItemPosition()), kotlin.coroutines.jvm.internal.a.d(linearLayoutManager.findLastVisibleItemPosition()));
                } catch (Exception unused) {
                    pair = new Pair(kotlin.coroutines.jvm.internal.a.d(-1), kotlin.coroutines.jvm.internal.a.d(-1));
                }
                if (((Number) pair.e()).intValue() <= ((Number) pair.f()).intValue() && ((Number) pair.f()).intValue() < size && ((Number) pair.e()).intValue() >= 0) {
                    int i10 = 0;
                    for (Object obj2 : list.subList(((Number) pair.e()).intValue(), ((Number) pair.f()).intValue() + 1)) {
                        int i11 = i10 + 1;
                        if (i10 < 0) {
                            CollectionsKt.y();
                        }
                        DiscoverShorts discoverShorts = (DiscoverShorts) obj2;
                        ag.a aVar = ag.a.f646a;
                        int intValue = ((Number) pair.e()).intValue() + i10;
                        DiscoverTab l02 = discoverModuleAdapter.l0();
                        DiscoverModule discoverModule = (DiscoverModule) singleRowViewHolder.d();
                        if (discoverModule != null) {
                            num = discoverModule.getSort();
                        } else {
                            num = null;
                        }
                        DiscoverModule discoverModule2 = (DiscoverModule) singleRowViewHolder.d();
                        if (discoverModule2 != null) {
                            num2 = discoverModule2.getStatus();
                        } else {
                            num2 = null;
                        }
                        ag.a.c(aVar, discoverShorts, intValue, 0, l02, null, num, num2, null, 148, null);
                        i10 = i11;
                    }
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
