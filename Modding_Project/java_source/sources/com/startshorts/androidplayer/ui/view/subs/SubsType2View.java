package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import at.n;
import com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter3;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.subs.SubsType2View;
import fk.z;
import java.util.Iterator;
import java.util.List;
import jk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubsType2View.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsType2View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsType2View.kt\ncom/startshorts/androidplayer/ui/view/subs/SubsType2View\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsType2View extends BannerViewPager<SubsSku> {
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private BaseBannerAdapter<SubsSku> f47989v;

    /* compiled from: SubsType2View.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSubsType2View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsType2View.kt\ncom/startshorts/androidplayer/ui/view/subs/SubsType2View$setSubsSkus$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a extends BannerViewPager.b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f47991b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f47992c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f47993d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ List<SubsSku> f47994e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f47995f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Function1<Integer, Unit> f47996g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ n<Integer, SubsSku, SubsSku, Unit> f47997h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ boolean f47998i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f47999j;

        /* JADX WARN: Multi-variable type inference failed */
        a(Ref.IntRef intRef, String str, String str2, List<SubsSku> list, BaseEpisode baseEpisode, Function1<? super Integer, Unit> function1, n<? super Integer, ? super SubsSku, ? super SubsSku, Unit> nVar, boolean z10, int i10) {
            this.f47991b = intRef;
            this.f47992c = str;
            this.f47993d = str2;
            this.f47994e = list;
            this.f47995f = baseEpisode;
            this.f47996g = function1;
            this.f47997h = nVar;
            this.f47998i = z10;
            this.f47999j = i10;
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void a(boolean z10, int i10, int i11) {
            SubsSku subsSku;
            SubsSku subsSku2;
            Object obj;
            BaseBannerAdapter baseBannerAdapter = SubsType2View.this.f47989v;
            Intrinsics.checkNotNull(baseBannerAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter3");
            ((SubsTypeAdapter3) baseBannerAdapter).s(i10);
            if (!z10) {
                return;
            }
            Ref.IntRef intRef = this.f47991b;
            if (intRef.element == i10) {
                return;
            }
            intRef.element = i10;
            SubsType2View.this.c0(this.f47992c, this.f47993d, this.f47994e, i10, this.f47995f);
            Function1<Integer, Unit> function1 = this.f47996g;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(this.f47991b.element));
            }
            List<SubsSku> list = this.f47994e;
            SubsSku subsSku3 = null;
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((SubsSku) obj).getInSubscription()) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                subsSku = (SubsSku) obj;
            } else {
                subsSku = null;
            }
            List<SubsSku> list2 = this.f47994e;
            if (list2 != null && (subsSku2 = list2.get(this.f47991b.element)) != null && !subsSku2.getInSubscription()) {
                subsSku3 = subsSku2;
            }
            n<Integer, SubsSku, SubsSku, Unit> nVar = this.f47997h;
            if (nVar != null) {
                nVar.invoke(Integer.valueOf(this.f47991b.element), subsSku3, subsSku);
            }
            if (!this.f47998i) {
                int i12 = this.f47991b.element;
                if (i12 == 0) {
                    SubsType2View subsType2View = SubsType2View.this;
                    z zVar = z.f51786a;
                    subsType2View.y(zVar.b(), zVar.n());
                } else if (i12 == this.f47999j - 1) {
                    SubsType2View subsType2View2 = SubsType2View.this;
                    z zVar2 = z.f51786a;
                    subsType2View2.y(zVar2.n(), zVar2.m());
                } else {
                    SubsType2View.this.y(z.f51786a.l(), g.a(28.0f));
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsType2View(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void Z(SubsSku subsSku) {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (!accountRepo.z0() && subsSku.getInSubscription()) {
            accountRepo.b1(true, new Function1() { // from class: ck.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit a02;
                    a02 = SubsType2View.a0(SubsType2View.this, ((Boolean) obj).booleanValue());
                    return a02;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(SubsType2View subsType2View, boolean z10) {
        BaseBannerAdapter<SubsSku> baseBannerAdapter;
        if (z10 && (baseBannerAdapter = subsType2View.f47989v) != null) {
            baseBannerAdapter.notifyItemChanged(0);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(String str, String str2, List<SubsSku> list, int i10, BaseEpisode baseEpisode) {
        ActResource actResource;
        List<SubsSku> list2 = list;
        if (list2 != null && !list2.isEmpty() && i10 >= 0 && i10 < list.size()) {
            SubsSku subsSku = list.get(i10);
            EventManager eventManager = EventManager.f42463a;
            eventManager.g1(str2, subsSku);
            if (Intrinsics.areEqual(str, "coin_popup")) {
                actResource = ud.a.f68411a.p();
            } else {
                actResource = null;
            }
            EventManager.P0(eventManager, str2, subsSku, baseEpisode, actResource, null, null, null, 112, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void d0(List list, Function2 function2, View view, int i10) {
        SubsSku subsSku;
        SubsSku subsSku2 = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((SubsSku) next).getInSubscription()) {
                    subsSku2 = next;
                    break;
                }
            }
            subsSku2 = subsSku2;
        }
        if (list != null && (subsSku = (SubsSku) list.get(i10)) != null && !subsSku.getInSubscription() && function2 != null) {
            function2.invoke(subsSku, subsSku2);
        }
    }

    public static /* synthetic */ void setSubsSkus$default(SubsType2View subsType2View, String str, String str2, int i10, List list, BaseEpisode baseEpisode, Function1 function1, Function2 function2, n nVar, Function0 function0, int i11, Object obj) {
        String str3;
        int i12;
        BaseEpisode baseEpisode2;
        Function1 function12;
        Function2 function22;
        n nVar2;
        Function0 function02;
        if ((i11 & 1) != 0) {
            str3 = null;
        } else {
            str3 = str;
        }
        if ((i11 & 4) != 0) {
            i12 = 0;
        } else {
            i12 = i10;
        }
        if ((i11 & 16) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i11 & 32) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        if ((i11 & 64) != 0) {
            function22 = null;
        } else {
            function22 = function2;
        }
        if ((i11 & 128) != 0) {
            nVar2 = null;
        } else {
            nVar2 = nVar;
        }
        if ((i11 & 256) != 0) {
            function02 = null;
        } else {
            function02 = function0;
        }
        subsType2View.setSubsSkus(str3, str2, i12, list, baseEpisode2, function12, function22, nVar2, function02);
    }

    public final boolean b0() {
        List<SubsSku> data = getData();
        if (data != null && !data.isEmpty()) {
            return false;
        }
        return true;
    }

    public final void e0(int i10, int i11) {
        SubsTypeAdapter3 subsTypeAdapter3;
        if (i10 == i11) {
            return;
        }
        BaseBannerAdapter<SubsSku> baseBannerAdapter = this.f47989v;
        if (baseBannerAdapter instanceof SubsTypeAdapter3) {
            subsTypeAdapter3 = (SubsTypeAdapter3) baseBannerAdapter;
        } else {
            subsTypeAdapter3 = null;
        }
        if (subsTypeAdapter3 != null) {
            try {
                subsTypeAdapter3.notifyItemChanged(i11);
                subsTypeAdapter3.notifyItemChanged(i10);
            } catch (Exception unused) {
            }
        }
    }

    public final void setSubsSkus(@Nullable String str, @NotNull String scene, int i10, @Nullable final List<SubsSku> list, @Nullable BaseEpisode baseEpisode, @Nullable Function1<? super Integer, Unit> function1, @Nullable final Function2<? super SubsSku, ? super SubsSku, Unit> function2, @Nullable n<? super Integer, ? super SubsSku, ? super SubsSku, Unit> nVar, @Nullable Function0<Unit> function0) {
        int i11;
        boolean z10;
        int i12;
        SubsSku subsSku;
        SubsSku subsSku2;
        Object obj;
        Intrinsics.checkNotNullParameter(scene, "scene");
        SubsTypeAdapter3 subsTypeAdapter3 = new SubsTypeAdapter3();
        subsTypeAdapter3.r(function0);
        this.f47989v = subsTypeAdapter3;
        D(subsTypeAdapter3);
        if (list != null) {
            i11 = list.size();
        } else {
            i11 = 0;
        }
        if (i11 == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        BaseBannerAdapter<SubsSku> baseBannerAdapter = this.f47989v;
        Intrinsics.checkNotNull(baseBannerAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter3");
        ((SubsTypeAdapter3) baseBannerAdapter).s(i10);
        if (i11 > 0) {
            I(i11);
            z zVar = z.f51786a;
            M(zVar.m());
            if (z10) {
                Q(zVar.b(), zVar.m());
            } else if (i10 == 0) {
                Q(zVar.b(), zVar.n());
            } else if (i10 == i11 - 1) {
                Q(zVar.n(), zVar.m());
            } else {
                Q(zVar.l(), g.a(28.0f));
            }
        }
        F(false);
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = -1;
        B(new a(intRef, str, scene, list, baseEpisode, function1, nVar, z10, i11));
        J(new BannerViewPager.c() { // from class: ck.h
            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
            public final void a(View view, int i13) {
                SubsType2View.d0(list, function2, view, i13);
            }
        });
        g(list);
        List<SubsSku> list2 = list;
        if (list2 != null && !list2.isEmpty() && i10 < list.size()) {
            if (i10 > 0) {
                setCurrentItem(i10, false);
            } else if (i10 == 0) {
                Iterator<T> it = list.iterator();
                while (true) {
                    subsSku2 = null;
                    if (it.hasNext()) {
                        obj = it.next();
                        if (((SubsSku) obj).getInSubscription()) {
                            break;
                        }
                    } else {
                        obj = null;
                        break;
                    }
                }
                SubsSku subsSku3 = (SubsSku) obj;
                SubsSku subsSku4 = list.get(i10);
                if (!subsSku4.getInSubscription()) {
                    subsSku2 = subsSku4;
                }
                SubsSku subsSku5 = subsSku2;
                i12 = 0;
                if (nVar != null) {
                    nVar.invoke(Integer.valueOf(i10), subsSku5, subsSku3);
                }
                c0(str, scene, list, i10, baseEpisode);
                if (list == null && (subsSku = list.get(i12)) != null) {
                    Z(subsSku);
                    return;
                }
            }
        }
        i12 = 0;
        c0(str, scene, list, i10, baseEpisode);
        if (list == null) {
        }
    }
}
