package com.startshorts.androidplayer.adapter.discover;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverMain1Row2ColumnXAdapter.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.adapter.discover.DiscoverMain1Row2ColumnXAdapter$logReelShow$1", f = "DiscoverMain1Row2ColumnXAdapter.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDiscoverMain1Row2ColumnXAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$logReelShow$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,173:1\n1872#2,3:174\n*S KotlinDebug\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$logReelShow$1\n*L\n146#1:174,3\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverMain1Row2ColumnXAdapter$logReelShow$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f37359h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RecyclerView.LayoutManager f37360i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ List<DiscoverShorts> f37361j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f37362k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ Context f37363l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ DiscoverModule f37364m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverMain1Row2ColumnXAdapter$logReelShow$1(RecyclerView.LayoutManager layoutManager, List<DiscoverShorts> list, int i10, Context context, DiscoverModule discoverModule, rs.c<? super DiscoverMain1Row2ColumnXAdapter$logReelShow$1> cVar) {
        super(2, cVar);
        this.f37360i = layoutManager;
        this.f37361j = list;
        this.f37362k = i10;
        this.f37363l = context;
        this.f37364m = discoverModule;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverMain1Row2ColumnXAdapter$logReelShow$1(this.f37360i, this.f37361j, this.f37362k, this.f37363l, this.f37364m, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverMain1Row2ColumnXAdapter$logReelShow$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Pair pair;
        MainActivity mainActivity;
        DiscoverTabFragment f02;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f37359h == 0) {
            kotlin.f.b(obj);
            RecyclerView.LayoutManager layoutManager = this.f37360i;
            List<DiscoverShorts> list = this.f37361j;
            int i10 = this.f37362k;
            Context context = this.f37363l;
            DiscoverModule discoverModule = this.f37364m;
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int size = list.size();
            try {
                pair = new Pair(kotlin.coroutines.jvm.internal.a.d(linearLayoutManager.findFirstVisibleItemPosition()), kotlin.coroutines.jvm.internal.a.d(linearLayoutManager.findLastVisibleItemPosition()));
            } catch (Exception unused) {
                pair = new Pair(kotlin.coroutines.jvm.internal.a.d(-1), kotlin.coroutines.jvm.internal.a.d(-1));
            }
            if (((Number) pair.e()).intValue() <= ((Number) pair.f()).intValue() && ((Number) pair.f()).intValue() < size && ((Number) pair.e()).intValue() >= 0) {
                int i11 = size - 1;
                int min = Math.min(((Number) pair.e()).intValue() * i10, i11);
                int min2 = Math.min((((Number) pair.f()).intValue() * i10) + 1, i11);
                DiscoverTab discoverTab = null;
                if (context instanceof MainActivity) {
                    mainActivity = (MainActivity) context;
                } else {
                    mainActivity = null;
                }
                if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                    discoverTab = f02.H0();
                }
                int i12 = 0;
                for (Object obj2 : list.subList(min, min2)) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        CollectionsKt.y();
                    }
                    ag.a.c(ag.a.f646a, (DiscoverShorts) obj2, ((Number) pair.e()).intValue() + i12 + 1, 0, discoverTab, null, discoverModule.getSort(), discoverModule.getStatus(), null, 148, null);
                    i12 = i13;
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
