package com.startshorts.androidplayer.viewmodel.subs;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege2;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.subs.SubsRepo;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.subs.SubsViewModel;
import com.startshorts.androidplayer.viewmodel.subs.a;
import com.startshorts.androidplayer.viewmodel.subs.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.o;
import jk.u;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import le.h;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.g;
/* compiled from: SubsViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n360#2,7:279\n1863#2,2:287\n1863#2,2:289\n1#3:286\n*S KotlinDebug\n*F\n+ 1 SubsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/subs/SubsViewModel\n*L\n91#1:279,7\n197#1:287,2\n213#1:289,2\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f49407i = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f49408e = c.b(new Function0() { // from class: il.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData M;
            M = SubsViewModel.M();
            return M;
        }
    });
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BaseEpisode f49409f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private List<SubsSku> f49410g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private SubsSku f49411h;

    /* compiled from: SubsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void I(List<? extends Object> list) {
        EventManager.Y0(EventManager.f42463a, "subscribe", null, this.f49409f, false, null, 26, null);
        List<SubsSku> list2 = this.f49410g;
        if (list2 != null) {
            for (SubsSku subsSku : list2) {
                u.k(subsSku, list);
            }
        }
        SubsSku subsSku2 = this.f49411h;
        if (subsSku2 != null) {
            u.k(subsSku2, list);
        }
        o.b(H(), new b.g(this.f49410g, this.f49411h));
    }

    private final void J() {
        EventManager.W0(EventManager.f42463a, "subscribe", null, this.f49409f, null, null, null, 58, null);
        BaseViewModel.j(this, "loadSkuList", false, new SubsViewModel$loadSkuList$1(this, null), new Function1() { // from class: il.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit K;
                K = SubsViewModel.K(SubsViewModel.this, (String) obj);
                return K;
            }
        }, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K(SubsViewModel subsViewModel, String str) {
        o.b(subsViewModel.H(), new b.a(subsViewModel.p(subsViewModel.r(str))));
        return Unit.f60915a;
    }

    private final void L(String str, String str2, String str3, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode, int i10) {
        Object obj;
        List<SubsSku> list = this.f49410g;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((SubsSku) obj).getSkuId(), str3)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            SubsSku subsSku = (SubsSku) obj;
            if (subsSku != null) {
                EventManager.U0(EventManager.f42463a, str, subsSku, gPayPriceInfo, str2, baseEpisode, null, null, Integer.valueOf(i10), null, null, TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData M() {
        return new MutableLiveData();
    }

    private final void O() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<SubsSku> list = this.f49410g;
        if (list != null) {
            for (SubsSku subsSku : list) {
                arrayList2.add(subsSku.getSkuId());
            }
        }
        SubsSku subsSku2 = this.f49411h;
        if (subsSku2 != null) {
            arrayList2.add(subsSku2.getSkuId());
        }
        if (!arrayList2.isEmpty()) {
            arrayList.add(new g(h.f62164a.b(), arrayList2));
        }
        o.b(H(), new b.c(arrayList));
    }

    private final void P(Context context, int i10) {
        List<SubsPrivilege> list;
        List<SubsSku> list2 = this.f49410g;
        if (list2 != null && !list2.isEmpty()) {
            list = SubsRepo.f43486a.i(context, this.f49410g).get(i10);
        } else {
            list = null;
        }
        o.b(H(), new b.f(i10, list));
    }

    private final void Q(Context context) {
        List<SubsPrivilege2> list;
        List<SubsSku> list2 = this.f49410g;
        if (list2 != null && !list2.isEmpty()) {
            list = SubsRepo.f43486a.j(context);
        } else {
            list = null;
        }
        o.b(H(), new b.e(list));
    }

    private final void R(Context context, SubsSku subsSku, SubsSku subsSku2) {
        BaseViewModel.i(this, "querySubsUpdateMode", false, new SubsViewModel$querySubsUpdateMode$1(subsSku, context, this, subsSku2, null), 2, null);
    }

    public final int E(@NotNull SubsSku discountSubs) {
        boolean z10;
        int i10;
        Intrinsics.checkNotNullParameter(discountSubs, "discountSubs");
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = -1;
        List<SubsSku> list = this.f49410g;
        if (list != null && !list.isEmpty()) {
            List<SubsSku> list2 = this.f49410g;
            if (list2 != null) {
                Iterator<SubsSku> it = list2.iterator();
                int i11 = 0;
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().getType() == discountSubs.getType()) {
                            break;
                        }
                        i11++;
                    } else {
                        i11 = -1;
                        break;
                    }
                }
                Integer valueOf = Integer.valueOf(i11);
                if (valueOf.intValue() != -1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    i10 = valueOf.intValue();
                } else {
                    i10 = -1;
                }
                intRef.element = i10;
                if (i10 != -1) {
                    list2.set(i10, discountSubs);
                } else {
                    list2.add(0, discountSubs);
                }
            }
        } else {
            this.f49410g = CollectionsKt.t(discountSubs);
            intRef.element = 0;
        }
        return intRef.element;
    }

    public final boolean F() {
        if (this.f49410g != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final List<SubsSku> G() {
        return this.f49410g;
    }

    @NotNull
    public final MutableLiveData<b> H() {
        return (MutableLiveData) this.f49408e.getValue();
    }

    public final void N(@NotNull com.startshorts.androidplayer.viewmodel.subs.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.f) {
            this.f49409f = ((a.f) intent).a();
            J();
        } else if (intent instanceof a.d) {
            a.d dVar = (a.d) intent;
            P(dVar.a(), dVar.b());
        } else if (intent instanceof a.c) {
            Q(((a.c) intent).a());
        } else if (intent instanceof a.e) {
            O();
        } else if (intent instanceof a.C0692a) {
            I(((a.C0692a) intent).a());
        } else if (intent instanceof a.b) {
            a.b bVar = (a.b) intent;
            L(bVar.e(), bVar.b(), bVar.c(), bVar.d(), bVar.a(), bVar.f());
        } else if (intent instanceof a.g) {
            a.g gVar = (a.g) intent;
            R(gVar.b(), gVar.a(), gVar.c());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    public final void S(@Nullable List<SubsSku> list) {
        this.f49410g = list;
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SubsViewModel";
    }
}
