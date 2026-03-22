package com.startshorts.androidplayer.ui.view.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter;
import com.startshorts.androidplayer.adapter.subs.SubsTypeAdapter2;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.subs.SubsTypeView;
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
/* compiled from: SubsTypeView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsTypeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsTypeView.kt\ncom/startshorts/androidplayer/ui/view/subs/SubsTypeView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n1#2:168\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsTypeView extends BannerViewPager<SubsSku> {
    @Nullable

    /* renamed from: v */
    private BaseBannerAdapter<SubsSku> f48000v;

    /* compiled from: SubsTypeView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends BannerViewPager.b {

        /* renamed from: a */
        final /* synthetic */ Ref.IntRef f48001a;

        /* renamed from: b */
        final /* synthetic */ SubsTypeView f48002b;

        /* renamed from: c */
        final /* synthetic */ String f48003c;

        /* renamed from: d */
        final /* synthetic */ String f48004d;

        /* renamed from: e */
        final /* synthetic */ List<SubsSku> f48005e;

        /* renamed from: f */
        final /* synthetic */ BaseEpisode f48006f;

        /* renamed from: g */
        final /* synthetic */ Function1<Integer, Unit> f48007g;

        /* renamed from: h */
        final /* synthetic */ boolean f48008h;

        /* renamed from: i */
        final /* synthetic */ int f48009i;

        /* JADX WARN: Multi-variable type inference failed */
        a(Ref.IntRef intRef, SubsTypeView subsTypeView, String str, String str2, List<SubsSku> list, BaseEpisode baseEpisode, Function1<? super Integer, Unit> function1, boolean z10, int i10) {
            this.f48001a = intRef;
            this.f48002b = subsTypeView;
            this.f48003c = str;
            this.f48004d = str2;
            this.f48005e = list;
            this.f48006f = baseEpisode;
            this.f48007g = function1;
            this.f48008h = z10;
            this.f48009i = i10;
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void a(boolean z10, int i10, int i11) {
            if (!z10) {
                return;
            }
            Ref.IntRef intRef = this.f48001a;
            if (intRef.element == i10) {
                return;
            }
            intRef.element = i10;
            this.f48002b.b0(this.f48003c, this.f48004d, this.f48005e, i10, this.f48006f);
            Function1<Integer, Unit> function1 = this.f48007g;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(this.f48001a.element));
            }
            if (!this.f48008h) {
                if (Intrinsics.areEqual(this.f48004d, "subscribe")) {
                    int i12 = this.f48001a.element;
                    if (i12 == 0) {
                        SubsTypeView subsTypeView = this.f48002b;
                        z zVar = z.f51786a;
                        subsTypeView.y(zVar.b(), zVar.n());
                        return;
                    } else if (i12 == this.f48009i - 1) {
                        SubsTypeView subsTypeView2 = this.f48002b;
                        z zVar2 = z.f51786a;
                        subsTypeView2.y(zVar2.n(), zVar2.m());
                        return;
                    } else {
                        this.f48002b.y(z.f51786a.l(), g.a(28.0f));
                        return;
                    }
                }
                int i13 = this.f48001a.element;
                if (i13 == 0) {
                    SubsTypeView subsTypeView3 = this.f48002b;
                    z zVar3 = z.f51786a;
                    subsTypeView3.y(zVar3.b(), zVar3.b());
                } else if (i13 == this.f48009i - 1) {
                    this.f48002b.y(g.a(22.0f), z.f51786a.m());
                } else {
                    this.f48002b.y(g.a(14.0f), g.a(10.0f));
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsTypeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void Y(SubsSku subsSku) {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (!accountRepo.z0() && subsSku.getInSubscription()) {
            accountRepo.b1(true, new Function1() { // from class: ck.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit Z;
                    Z = SubsTypeView.Z(SubsTypeView.this, ((Boolean) obj).booleanValue());
                    return Z;
                }
            });
        }
    }

    public static final Unit Z(SubsTypeView subsTypeView, boolean z10) {
        BaseBannerAdapter<SubsSku> baseBannerAdapter;
        if (z10 && (baseBannerAdapter = subsTypeView.f48000v) != null) {
            baseBannerAdapter.notifyItemChanged(0);
        }
        return Unit.f60915a;
    }

    public final void b0(String str, String str2, List<SubsSku> list, int i10, BaseEpisode baseEpisode) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public static final void c0(List list, Function2 function2, View view, int i10) {
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

    public static /* synthetic */ void setSubsSkus$default(SubsTypeView subsTypeView, String str, String str2, int i10, List list, BaseEpisode baseEpisode, Function1 function1, Function2 function2, Function0 function0, int i11, Object obj) {
        String str3;
        int i12;
        BaseEpisode baseEpisode2;
        Function1 function12;
        Function2 function22;
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
            function02 = null;
        } else {
            function02 = function0;
        }
        subsTypeView.setSubsSkus(str3, str2, i12, list, baseEpisode2, function12, function22, function02);
    }

    public final boolean a0() {
        List<SubsSku> data = getData();
        if (data != null && !data.isEmpty()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setSubsSkus(@Nullable String str, @NotNull String scene, int i10, @Nullable final List<SubsSku> list, @Nullable BaseEpisode baseEpisode, @Nullable Function1<? super Integer, Unit> function1, @Nullable final Function2<? super SubsSku, ? super SubsSku, Unit> function2, @Nullable Function0<Unit> function0) {
        SubsTypeAdapter subsTypeAdapter;
        int i11;
        boolean z10;
        SubsSku subsSku;
        Intrinsics.checkNotNullParameter(scene, "scene");
        if (str != null && str.length() != 0) {
            SubsTypeAdapter2 subsTypeAdapter2 = new SubsTypeAdapter2();
            subsTypeAdapter2.p(str);
            subsTypeAdapter2.o(baseEpisode);
            subsTypeAdapter2.q(function0);
            subsTypeAdapter = subsTypeAdapter2;
        } else {
            subsTypeAdapter = new SubsTypeAdapter();
        }
        this.f48000v = subsTypeAdapter;
        D(subsTypeAdapter);
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
        if (i11 > 0) {
            I(i11);
            z zVar = z.f51786a;
            M(zVar.m());
            if (z10) {
                Q(zVar.b(), zVar.m());
            } else if (Intrinsics.areEqual(scene, "subscribe")) {
                if (i10 == 0) {
                    Q(zVar.b(), zVar.n());
                } else if (i10 == i11 - 1) {
                    Q(zVar.n(), zVar.m());
                } else {
                    Q(zVar.l(), g.a(28.0f));
                }
            } else if (i10 == 0) {
                Q(zVar.b(), zVar.b());
            } else if (i10 == i11 - 1) {
                Q(g.a(22.0f), zVar.m());
            } else {
                Q(g.a(14.0f), g.a(10.0f));
            }
        }
        F(false);
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = -1;
        B(new a(intRef, this, str, scene, list, baseEpisode, function1, z10, i11));
        J(new BannerViewPager.c() { // from class: ck.j
            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
            public final void a(View view, int i12) {
                SubsTypeView.c0(list, function2, view, i12);
            }
        });
        g(list);
        List<SubsSku> list2 = list;
        if (list2 != null && !list2.isEmpty() && i10 != 0 && i10 < list.size()) {
            setCurrentItem(i10, false);
        }
        b0(str, scene, list, i10, baseEpisode);
        if (list != null && (subsSku = list.get(0)) != null) {
            Y(subsSku);
        }
    }
}
