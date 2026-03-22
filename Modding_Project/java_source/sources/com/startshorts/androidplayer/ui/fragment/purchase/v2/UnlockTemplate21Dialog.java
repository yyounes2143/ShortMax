package com.startshorts.androidplayer.ui.fragment.purchase.v2;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import at.n;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.TTPResultEvent;
import com.startshorts.androidplayer.bean.order.OtherOrderResult;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentCoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeMethod;
import com.startshorts.androidplayer.databinding.DialogFragmentUnlockTemplate21Binding;
import com.startshorts.androidplayer.databinding.ViewCoinSkuBigCardBinding;
import com.startshorts.androidplayer.databinding.ViewCoinSkuSmallCardBinding;
import com.startshorts.androidplayer.databinding.ViewSubSkuBigCardBinding;
import com.startshorts.androidplayer.databinding.ViewSubSkuSmallCardBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.dialog.immersion.a;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate21Dialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.AutoUnlockEpisodeView;
import com.startshorts.androidplayer.ui.view.purchase.CoinSkuCardView;
import com.startshorts.androidplayer.ui.view.purchase.RechargeTipView;
import com.startshorts.androidplayer.ui.view.purchase.SubSkuCardView;
import com.startshorts.androidplayer.ui.view.purchase.SubSkuRenewTipView;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.a;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import com.tencent.wcdb.FileUtils;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import fk.j0;
import fk.q;
import fk.s;
import fk.u;
import fk.v;
import gi.d;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tj.a;
/* compiled from: UnlockTemplate21Dialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnlockTemplate21Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1523:1\n53#2,4:1524\n53#2,4:1534\n53#2,4:1538\n53#2,4:1556\n1#3:1528\n1863#4,2:1529\n1872#4,3:1531\n774#4:1542\n865#4,2:1543\n1557#4:1545\n1628#4,3:1546\n774#4:1549\n865#4,2:1550\n1557#4:1552\n1628#4,3:1553\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog\n*L\n697#1:1524,4\n1263#1:1534,4\n1327#1:1538,4\n1500#1:1556,4\n1071#1:1529,2\n1139#1:1531,3\n1427#1:1542\n1427#1:1543,2\n1429#1:1545\n1429#1:1546,3\n1435#1:1549\n1435#1:1550,2\n1437#1:1552\n1437#1:1553,3\n*E\n"})
/* loaded from: classes7.dex */
public final class UnlockTemplate21Dialog extends BottomSheetPageStateFragment<DialogFragmentUnlockTemplate21Binding> {
    private boolean A;
    @Nullable
    private CoinSku C;
    @Nullable
    private SubsSku D;
    @Nullable
    private Integer E;
    @Nullable
    private String F;
    private boolean G;
    private boolean H;
    @Nullable
    private hi.b N;
    private boolean O;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private BaseUnlockEpisodeDialog.a f46586o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private BaseEpisode f46587p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f46588q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f46589r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private String f46590s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f46591t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f46592u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f46593v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f46594w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private Integer f46595x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private Object f46596y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private tj.a f46597z;
    private boolean B = true;
    @NotNull
    private final ms.i I = kotlin.c.b(new Function0() { // from class: ti.h0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider r12;
            r12 = UnlockTemplate21Dialog.r1(UnlockTemplate21Dialog.this);
            return r12;
        }
    });
    @NotNull
    private final ms.i J = kotlin.c.b(new Function0() { // from class: ti.i0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel n12;
            n12 = UnlockTemplate21Dialog.n1(UnlockTemplate21Dialog.this);
            return n12;
        }
    });
    @NotNull
    private final ms.i K = kotlin.c.b(new Function0() { // from class: ti.j0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel i12;
            i12 = UnlockTemplate21Dialog.i1(UnlockTemplate21Dialog.this);
            return i12;
        }
    });
    @NotNull
    private final ms.i L = kotlin.c.b(new Function0() { // from class: ti.k0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseViewModel l12;
            l12 = UnlockTemplate21Dialog.l1(UnlockTemplate21Dialog.this);
            return l12;
        }
    });
    @NotNull
    private final UnlockTemplate21Dialog$mPropertyObserver$1 M = new UnlockTemplate21Dialog$mPropertyObserver$1(this);
    @NotNull
    private final String P = "SubscribeEasyUnlockEpisodeDialog";

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends yd.d {
        a() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            UnlockTemplate21Dialog.this.G = true;
            BaseUnlockEpisodeDialog.a aVar = UnlockTemplate21Dialog.this.f46586o;
            if (aVar != null) {
                aVar.a(UnlockTemplate21Dialog.this.c1());
            }
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            UnlockTemplate21Dialog.this.J1();
            AdManager.f41600a.a0(AdScene.MEDIA_VIDEO);
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog\n*L\n1#1,102:1\n1131#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d<T> implements Comparator {
        public d() {
        }

        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            boolean z10;
            Integer itemStyle = ((SelectableItem) t10).getItemStyle();
            int U = UnlockTemplate21Dialog.this.L0().U();
            boolean z11 = false;
            if (itemStyle == null || itemStyle.intValue() != U) {
                z10 = true;
            } else {
                z10 = false;
            }
            Boolean valueOf = Boolean.valueOf(z10);
            Integer itemStyle2 = ((SelectableItem) t11).getItemStyle();
            int U2 = UnlockTemplate21Dialog.this.L0().U();
            if (itemStyle2 == null || itemStyle2.intValue() != U2) {
                z11 = true;
            }
            return ps.a.a(valueOf, Boolean.valueOf(z11));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenBy$1\n+ 2 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog\n*L\n1#1,145:1\n1131#2:146\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class e<T> implements Comparator {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f46602a;

        public e(Comparator comparator) {
            this.f46602a = comparator;
        }

        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            int compare = this.f46602a.compare(t10, t11);
            if (compare == 0) {
                return ps.a.a(Integer.valueOf(((SelectableItem) t10).getSort()), Integer.valueOf(((SelectableItem) t11).getSort()));
            }
            return compare;
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements CoinSkuCardView.b {
        f() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.CoinSkuCardView.b
        public void onExpired() {
            UnlockTemplate21Dialog.this.z1();
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nUnlockTemplate21Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$2\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,1523:1\n53#2,4:1524\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$2\n*L\n1174#1:1524,4\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ CoinSku f46605f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(CoinSku coinSku) {
            super(0L, 1, null);
            this.f46605f = coinSku;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (!UnlockTemplate21Dialog.this.c1()) {
                UnlockTemplate21Dialog.this.f46596y = null;
                UnlockTemplate21Dialog.this.t1(this.f46605f);
            } else {
                UnlockTemplate21Dialog.this.f46596y = this.f46605f;
                UnlockTemplate21Dialog.this.R1();
                FlexboxLayout flexboxLayout = UnlockTemplate21Dialog.h0(UnlockTemplate21Dialog.this).f39098h;
                Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
                UnlockTemplate21Dialog unlockTemplate21Dialog = UnlockTemplate21Dialog.this;
                int childCount = flexboxLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = flexboxLayout.getChildAt(i10);
                    if (childAt instanceof SubSkuRenewTipView) {
                        UnlockTemplate21Dialog.h0(unlockTemplate21Dialog).f39098h.removeView(childAt);
                    }
                }
            }
            EventManager eventManager = EventManager.f42463a;
            String O0 = UnlockTemplate21Dialog.this.O0();
            CoinSku coinSku = this.f46605f;
            BaseEpisode baseEpisode = UnlockTemplate21Dialog.this.f46587p;
            Integer valueOf = Integer.valueOf(UnlockTemplate21Dialog.this.N0());
            String str = UnlockTemplate21Dialog.this.f46589r;
            if (str == null) {
                str = "";
            }
            EventManager.B0(eventManager, O0, coinSku, baseEpisode, null, valueOf, null, str, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s, 40, null);
            UnlockTemplate21Dialog.this.D1(this.f46605f);
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nUnlockTemplate21Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$5\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,1523:1\n53#2,4:1524\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$5\n*L\n1233#1:1524,4\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ SubsSku f46607f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ List<SelectableItem> f46608g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SelectableItem f46609h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubSkuCardView f46610i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(SubsSku subsSku, List<SelectableItem> list, SelectableItem selectableItem, SubSkuCardView subSkuCardView) {
            super(0L, 1, null);
            this.f46607f = subsSku;
            this.f46608g = list;
            this.f46609h = selectableItem;
            this.f46610i = subSkuCardView;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (!UnlockTemplate21Dialog.this.c1()) {
                UnlockTemplate21Dialog.this.f46596y = null;
                UnlockTemplate21Dialog.this.u1(this.f46607f);
            } else {
                UnlockTemplate21Dialog.this.f46596y = this.f46607f;
                UnlockTemplate21Dialog.this.R1();
                FlexboxLayout flexboxLayout = UnlockTemplate21Dialog.h0(UnlockTemplate21Dialog.this).f39098h;
                Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
                UnlockTemplate21Dialog unlockTemplate21Dialog = UnlockTemplate21Dialog.this;
                int childCount = flexboxLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = flexboxLayout.getChildAt(i10);
                    if (childAt instanceof SubSkuRenewTipView) {
                        UnlockTemplate21Dialog.h0(unlockTemplate21Dialog).f39098h.removeView(childAt);
                    }
                }
                if (!this.f46607f.isBigCard()) {
                    UnlockTemplate21Dialog.this.D0(this.f46608g, this.f46609h, this.f46610i.y());
                }
            }
            EventManager eventManager = EventManager.f42463a;
            String O0 = UnlockTemplate21Dialog.this.O0();
            SubsSku subsSku = this.f46607f;
            BaseEpisode baseEpisode = UnlockTemplate21Dialog.this.f46587p;
            Integer valueOf = Integer.valueOf(UnlockTemplate21Dialog.this.N0());
            String str = UnlockTemplate21Dialog.this.f46589r;
            if (str == null) {
                str = "";
            }
            EventManager.C0(eventManager, O0, subsSku, baseEpisode, null, 0, valueOf, null, str, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s, 88, null);
            UnlockTemplate21Dialog.this.D1(this.f46607f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46611a;

        i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46611a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f46611a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46611a.invoke(obj);
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j implements com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a {
        j() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void a(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            UnlockTemplate21Dialog.this.f46595x = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    EventManager.i0(EventManager.f42463a, 1, subsSku, UnlockTemplate21Dialog.this.f46587p, aVar.p(), 0, 99, UnlockTemplate21Dialog.this.f46589r, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s, 16, null);
                    return;
                }
                return;
            }
            EventManager.f42463a.f0(1, coinSku, UnlockTemplate21Dialog.this.f46587p, aVar.p(), 99, UnlockTemplate21Dialog.this.f46589r, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void b(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            UnlockTemplate21Dialog.this.f46595x = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    EventManager.i0(EventManager.f42463a, 4, subsSku, UnlockTemplate21Dialog.this.f46587p, aVar.p(), 0, 99, UnlockTemplate21Dialog.this.f46589r, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s, 16, null);
                    return;
                }
                return;
            }
            EventManager.f42463a.f0(4, coinSku, UnlockTemplate21Dialog.this.f46587p, aVar.p(), 99, UnlockTemplate21Dialog.this.f46589r, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void c(int i10, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(false);
            UnlockTemplate21Dialog.this.f46595x = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    if (subsSku != null) {
                        UnlockTemplate21Dialog.this.u1(subsSku);
                    }
                    EventManager.i0(EventManager.f42463a, 3, subsSku, UnlockTemplate21Dialog.this.f46587p, aVar.p(), 0, Integer.valueOf(qf.e.f65327a.a()), UnlockTemplate21Dialog.this.f46589r, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s, 16, null);
                    return;
                }
                return;
            }
            if (coinSku != null) {
                UnlockTemplate21Dialog.this.t1(coinSku);
            }
            EventManager.f42463a.f0(3, coinSku, UnlockTemplate21Dialog.this.f46587p, aVar.p(), Integer.valueOf(qf.e.f65327a.a()), UnlockTemplate21Dialog.this.f46589r, UnlockTemplate21Dialog.this.f46592u, UnlockTemplate21Dialog.this.f46590s);
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k implements d.b {
        k() {
        }

        @Override // gi.d.b
        public void a() {
            UnlockTemplate21Dialog.this.N1("retry_pop");
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l implements RechargeTipView.b {
        l() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.RechargeTipView.b
        public void a() {
            UnlockTemplate21Dialog.O1(UnlockTemplate21Dialog.this, null, 1, null);
        }
    }

    private final void A1(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        SubSkuCardView subSkuCardView;
        CoinSkuCardView coinSkuCardView;
        ((DialogFragmentUnlockTemplate21Binding) n()).f39098h.removeAllViews();
        int size = list.size() + list2.size();
        D();
        if (size <= 0) {
            K();
        } else {
            C();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        arrayList.addAll(list2);
        CollectionsKt.D(arrayList, new e(new d()));
        if (this.f46596y == null && c1()) {
            this.f46596y = CollectionsKt.firstOrNull(arrayList);
        }
        LayoutInflater from = LayoutInflater.from(getContext());
        int i10 = 0;
        for (Object obj : arrayList) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            SelectableItem selectableItem = (SelectableItem) obj;
            int dataType = selectableItem.getDataType();
            if (dataType == selectableItem.getTYPE_COIN()) {
                Intrinsics.checkNotNull(selectableItem, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.purchase.CoinSku");
                CoinSku coinSku = (CoinSku) selectableItem;
                if (coinSku.isBigCard()) {
                    ViewCoinSkuBigCardBinding b10 = ViewCoinSkuBigCardBinding.b(from, ((DialogFragmentUnlockTemplate21Binding) n()).f39098h, true);
                    Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                    ViewGroup.LayoutParams layoutParams = b10.f41198h.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                    ((FlexboxLayout.LayoutParams) layoutParams).a(1.0f);
                    coinSkuCardView = b10.f41198h;
                    Intrinsics.checkNotNull(coinSkuCardView);
                } else {
                    ViewCoinSkuSmallCardBinding b11 = ViewCoinSkuSmallCardBinding.b(from, ((DialogFragmentUnlockTemplate21Binding) n()).f39098h, true);
                    Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
                    ViewGroup.LayoutParams layoutParams2 = b11.f41209h.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                    ((FlexboxLayout.LayoutParams) layoutParams2).a(0.5f);
                    coinSkuCardView = b11.f41209h;
                    Intrinsics.checkNotNull(coinSkuCardView);
                }
                coinSkuCardView.setSku(coinSku);
                coinSkuCardView.v();
                coinSkuCardView.setListener(new f());
                coinSkuCardView.setOnClickListener(new g(coinSku));
            } else if (dataType == selectableItem.getTYPE_SUB()) {
                Intrinsics.checkNotNull(selectableItem, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.subs.SubsSku");
                SubsSku subsSku = (SubsSku) selectableItem;
                if (subsSku.isSmallCard()) {
                    ViewSubSkuSmallCardBinding b12 = ViewSubSkuSmallCardBinding.b(from, ((DialogFragmentUnlockTemplate21Binding) n()).f39098h, true);
                    Intrinsics.checkNotNullExpressionValue(b12, "inflate(...)");
                    ViewGroup.LayoutParams layoutParams3 = b12.f41417g.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                    ((FlexboxLayout.LayoutParams) layoutParams3).a(0.5f);
                    subSkuCardView = b12.f41417g;
                    Intrinsics.checkNotNull(subSkuCardView);
                } else {
                    ViewSubSkuBigCardBinding b13 = ViewSubSkuBigCardBinding.b(from, ((DialogFragmentUnlockTemplate21Binding) n()).f39098h, true);
                    Intrinsics.checkNotNullExpressionValue(b13, "inflate(...)");
                    ViewGroup.LayoutParams layoutParams4 = b13.f41406j.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams4, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                    ((FlexboxLayout.LayoutParams) layoutParams4).a(1.0f);
                    subSkuCardView = b13.f41406j;
                    Intrinsics.checkNotNull(subSkuCardView);
                }
                final SubSkuCardView subSkuCardView2 = subSkuCardView;
                subSkuCardView2.setSku(subsSku);
                subSkuCardView2.setOnExpired(new Function0() { // from class: ti.d0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit B1;
                        B1 = UnlockTemplate21Dialog.B1(UnlockTemplate21Dialog.this);
                        return B1;
                    }
                });
                subSkuCardView2.post(new Runnable() { // from class: ti.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnlockTemplate21Dialog.C1(SubSkuCardView.this);
                    }
                });
                subSkuCardView2.setOnClickListener(new h(subsSku, arrayList, selectableItem, subSkuCardView2));
            }
            i10 = i11;
        }
        try {
            FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate21Binding) n()).f39098h;
            Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
            int childCount = flexboxLayout.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = flexboxLayout.getChildAt(i12);
                if (((DialogFragmentUnlockTemplate21Binding) n()).f39098h.indexOfChild(childAt) == 0 && c1() && (childAt instanceof SubSkuCardView)) {
                    childAt.performClick();
                } else if ((childAt instanceof SubSkuCardView) && !c1() && !this.H) {
                    SubSkuCardView subSkuCardView3 = (SubSkuCardView) childAt;
                    SubsSku sku = subSkuCardView3.getSku();
                    if (!sku.isBigCard()) {
                        D0(arrayList, sku, subSkuCardView3.y());
                        this.H = true;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B1(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        unlockTemplate21Dialog.z1();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C1(SubSkuCardView subSkuCardView) {
        boolean z10;
        if (v.f51778a.b()) {
            z10 = j0.f51740a.a(subSkuCardView);
        } else if (!j0.f51740a.a(subSkuCardView)) {
            z10 = true;
        } else {
            z10 = false;
        }
        subSkuCardView.setOnRight(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D0(List<SelectableItem> list, SelectableItem selectableItem, boolean z10) {
        boolean z11;
        int indexOf = list.indexOf(selectableItem);
        Intrinsics.checkNotNull(selectableItem, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.subs.SubsSku");
        SubsSku subsSku = (SubsSku) selectableItem;
        int i10 = indexOf + 1;
        if (list.size() > i10) {
            z11 = !list.get(i10).isBigCard();
        } else {
            z11 = false;
        }
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        SubSkuRenewTipView subSkuRenewTipView = new SubSkuRenewTipView(requireContext, null, 2, null);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, -2);
        layoutParams.a(1.0f);
        subSkuRenewTipView.setLayoutParams(layoutParams);
        String formatRenewPrice = subsSku.formatRenewPrice();
        String d10 = u.f51776a.d(R$string.subs_type_view_new_style_desc);
        if (formatRenewPrice.length() != 0) {
            d10 = formatRenewPrice + " · " + d10;
        }
        subSkuRenewTipView.v(d10, Boolean.valueOf(z10));
        if (z10) {
            ((DialogFragmentUnlockTemplate21Binding) n()).f39098h.addView(subSkuRenewTipView, i10);
            return;
        }
        FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate21Binding) n()).f39098h;
        if (z11 && list.size() > i10) {
            i10 = indexOf + 2;
        }
        flexboxLayout.addView(subSkuRenewTipView, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D1(SelectableItem selectableItem) {
        tj.a aVar;
        boolean z10;
        j jVar = new j();
        if (selectableItem instanceof CoinSku) {
            tj.a aVar2 = this.f46597z;
            if (aVar2 != null) {
                aVar2.l(O0(), (CoinSku) selectableItem, P0(), null, jVar, this.f46592u);
            }
        } else if ((selectableItem instanceof SubsSku) && (aVar = this.f46597z) != null) {
            a.C0931a.a(aVar, O0(), (SubsSku) selectableItem, P0(), null, jVar, this.f46592u, null, 64, null);
        }
        tj.a aVar3 = this.f46597z;
        if (aVar3 != null) {
            z10 = aVar3.p();
        } else {
            z10 = false;
        }
        ViewGroup.LayoutParams layoutParams = null;
        final View view = null;
        if (z10) {
            tj.a aVar4 = this.f46597z;
            if (aVar4 instanceof View) {
                view = (View) aVar4;
            }
            if (view != null) {
                view.post(new Runnable() { // from class: ti.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnlockTemplate21Dialog.E1(view, this);
                    }
                });
                return;
            }
            return;
        }
        ((DialogFragmentUnlockTemplate21Binding) n()).f39093c.setVisibility(8);
        Space space = ((DialogFragmentUnlockTemplate21Binding) n()).f39113w;
        ViewGroup.LayoutParams layoutParams2 = ((DialogFragmentUnlockTemplate21Binding) n()).f39113w.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = jk.g.a(20.0f);
            layoutParams = layoutParams2;
        }
        space.setLayoutParams(layoutParams);
        ((DialogFragmentUnlockTemplate21Binding) n()).f39113w.requestLayout();
    }

    private final void E0(OtherOrderResult otherOrderResult) {
        List<SkuPaymentMethod> productExtendList;
        String currency;
        Float payAmount;
        List<SkuPaymentMethod> productExtendList2;
        String currency2;
        Float payAmount2;
        if (otherOrderResult != null && !TextUtils.isEmpty(otherOrderResult.getOrderNo())) {
            CoinSku coinSku = this.C;
            if (coinSku != null) {
                if (coinSku != null && (productExtendList2 = coinSku.getProductExtendList()) != null) {
                    ArrayList<SkuPaymentMethod> arrayList = new ArrayList();
                    for (Object obj : productExtendList2) {
                        if (Intrinsics.areEqual(((SkuPaymentMethod) obj).getPayType(), this.E)) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
                    for (SkuPaymentMethod skuPaymentMethod : arrayList) {
                        String currencyUnit = skuPaymentMethod.getCurrencyUnit();
                        if (currencyUnit != null && currencyUnit.length() != 0) {
                            currency2 = skuPaymentMethod.getCurrencyUnit();
                        } else {
                            currency2 = skuPaymentMethod.getCurrency();
                        }
                        if (Intrinsics.areEqual(skuPaymentMethod.isFirstBuy(), Boolean.TRUE)) {
                            payAmount2 = skuPaymentMethod.getFirstAmount();
                        } else {
                            payAmount2 = skuPaymentMethod.getPayAmount();
                        }
                        MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
                        if (currency2 == null) {
                            currency2 = "";
                        }
                        String valueOf = String.valueOf(payAmount2);
                        String orderNo = otherOrderResult.getOrderNo();
                        if (orderNo == null) {
                            orderNo = "";
                        }
                        matchEventUtil.g(currency2, valueOf, orderNo);
                        arrayList2.add(Unit.f60915a);
                    }
                    return;
                }
                return;
            }
            SubsSku subsSku = this.D;
            if (subsSku != null && subsSku != null && (productExtendList = subsSku.getProductExtendList()) != null) {
                ArrayList<SkuPaymentMethod> arrayList3 = new ArrayList();
                for (Object obj2 : productExtendList) {
                    if (Intrinsics.areEqual(((SkuPaymentMethod) obj2).getPayType(), this.E)) {
                        arrayList3.add(obj2);
                    }
                }
                ArrayList arrayList4 = new ArrayList(CollectionsKt.z(arrayList3, 10));
                for (SkuPaymentMethod skuPaymentMethod2 : arrayList3) {
                    String currencyUnit2 = skuPaymentMethod2.getCurrencyUnit();
                    if (currencyUnit2 != null && currencyUnit2.length() != 0) {
                        currency = skuPaymentMethod2.getCurrencyUnit();
                    } else {
                        currency = skuPaymentMethod2.getCurrency();
                    }
                    if (Intrinsics.areEqual(skuPaymentMethod2.isFirstBuy(), Boolean.TRUE)) {
                        payAmount = skuPaymentMethod2.getFirstAmount();
                    } else {
                        payAmount = skuPaymentMethod2.getPayAmount();
                    }
                    MatchEventUtil matchEventUtil2 = MatchEventUtil.f48183a;
                    if (currency == null) {
                        currency = "";
                    }
                    String valueOf2 = String.valueOf(payAmount);
                    String orderNo2 = otherOrderResult.getOrderNo();
                    if (orderNo2 == null) {
                        orderNo2 = "";
                    }
                    matchEventUtil2.h(currency, valueOf2, orderNo2);
                    arrayList4.add(Unit.f60915a);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E1(View view, UnlockTemplate21Dialog unlockTemplate21Dialog) {
        int measuredHeight = view.getMeasuredHeight();
        int a10 = jk.g.a(20.0f) + measuredHeight;
        int a11 = measuredHeight + jk.g.a(15.0f);
        Space space = ((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39113w;
        ViewGroup.LayoutParams layoutParams = ((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39113w.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = null;
        if (layoutParams != null) {
            layoutParams.height = a10;
        } else {
            layoutParams = null;
        }
        space.setLayoutParams(layoutParams);
        View view2 = ((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39093c;
        ViewGroup.LayoutParams layoutParams3 = ((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39093c.getLayoutParams();
        if (layoutParams3 != null) {
            layoutParams3.height = a11;
            layoutParams2 = layoutParams3;
        }
        view2.setLayoutParams(layoutParams2);
        ((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39113w.requestLayout();
        ((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39093c.requestLayout();
    }

    private final void F0() {
        J0().W(new a.c("subscribe_simple_unlock"));
    }

    private final void F1() {
        AutoUnlockEpisodeView.x(((DialogFragmentUnlockTemplate21Binding) n()).f39091a, O0(), null, 2, null);
    }

    private final void G0(String str, String str2, int i10, int i11, String str3, String str4, String str5, String str6, String str7, String str8) {
        boolean z10;
        Boolean supportOneTouchPayment;
        Account a02 = AccountRepo.f43052a.a0();
        int i12 = 0;
        if (a02 != null && (supportOneTouchPayment = a02.getSupportOneTouchPayment()) != null) {
            z10 = supportOneTouchPayment.booleanValue();
        } else {
            z10 = false;
        }
        if (i11 == 4 && z10) {
            if (i10 == 2) {
                i12 = 1;
            }
            this.E = Integer.valueOf(i11);
            BillingViewModel J0 = J0();
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            J0.W(new a.d(requireContext, str6, i12, str, str2, str4, null, null, null, FileUtils.S_IRWXU, null));
            f1(i11, this.B ? 1 : 0);
            return;
        }
        S1(str, str2, i10, i11, str6, str4, str5, str3, str7, str8);
    }

    private final void G1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        gi.d dVar = new gi.d(requireContext);
        dVar.x(new k());
        dVar.show();
    }

    static /* synthetic */ void H0(UnlockTemplate21Dialog unlockTemplate21Dialog, String str, String str2, int i10, int i11, String str3, String str4, String str5, String str6, String str7, String str8, int i12, Object obj) {
        unlockTemplate21Dialog.G0(str, str2, i10, i11, (i12 & 16) != 0 ? null : str3, (i12 & 32) != 0 ? null : str4, (i12 & 64) != 0 ? null : str5, (i12 & 128) != 0 ? null : str6, (i12 & 256) != 0 ? null : str7, (i12 & 512) != 0 ? null : str8);
    }

    private final void H1() {
        ((DialogFragmentUnlockTemplate21Binding) n()).f39101k.setMListener(new l());
        if (ABTestFactory.f42224a.K0().isEnable().invoke().booleanValue()) {
            ((DialogFragmentUnlockTemplate21Binding) n()).f39101k.B();
        }
        ((DialogFragmentUnlockTemplate21Binding) n()).f39101k.z();
        ((DialogFragmentUnlockTemplate21Binding) n()).f39101k.setVisibility(0);
    }

    private final void I0(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        boolean p10 = qf.h.f65328a.p(list, list2);
        this.A = p10;
        if (!p10) {
            if (list == null) {
                list = CollectionsKt.n();
            }
            if (list2 == null) {
                list2 = CollectionsKt.n();
            }
            A1(list, list2);
            b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39113w);
            b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39093c);
            tj.a aVar = this.f46597z;
            if (aVar != null) {
                aVar.setBtnVisibility(8);
            }
            this.f46597z = null;
        } else {
            if (this.f46597z == null) {
                tj.b bVar = tj.b.f67381a;
                ViewStubProxy stubPaymentMethod = ((DialogFragmentUnlockTemplate21Binding) n()).f39103m;
                Intrinsics.checkNotNullExpressionValue(stubPaymentMethod, "stubPaymentMethod");
                this.f46597z = bVar.a(stubPaymentMethod);
            }
            if (list == null) {
                list = CollectionsKt.n();
            }
            if (list2 == null) {
                list2 = CollectionsKt.n();
            }
            A1(list, list2);
            tj.a aVar2 = this.f46597z;
            if (aVar2 != null) {
                aVar2.setBtnVisibility(0);
            }
        }
        Object obj = this.f46596y;
        if (obj != null && (obj instanceof SelectableItem)) {
            D1((SelectableItem) obj);
        }
        R1();
    }

    private final void I1() {
        T0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        hi.b bVar = new hi.b(requireContext);
        bVar.setCancelable(false);
        bVar.show();
        this.N = bVar;
    }

    private final BillingViewModel J0() {
        return (BillingViewModel) this.K.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J1() {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(this.f46587p);
        C.putString("ad_active", "unlock_pop");
        C.putString("type", "1");
        C.putString("style_id", ve.h.f68906a.m());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager.f41600a.p0(this.f46589r, getActivity(), "unlock_pop", this.f46587p, new Function1() { // from class: ti.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit K1;
                K1 = UnlockTemplate21Dialog.K1(UnlockTemplate21Dialog.this, ((Boolean) obj).booleanValue());
                return K1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurchaseViewModel K0() {
        return (PurchaseViewModel) this.L.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K1(UnlockTemplate21Dialog unlockTemplate21Dialog, boolean z10) {
        if (z10) {
            unlockTemplate21Dialog.L0().j0(new e.l(unlockTemplate21Dialog.getContext(), true, null, 4, null));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UnlockViewModel L0() {
        return (UnlockViewModel) this.J.getValue();
    }

    private final ViewModelProvider M0() {
        return (ViewModelProvider) this.I.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M1(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        b0.d(((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39095e);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int N0() {
        return qf.e.f65327a.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N1(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle x10 = EventManager.x(eventManager, ud.a.f68411a.p(), false, 2, null);
        x10.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", x10, 0L, 4, null);
        I1();
        J0().W(new a.f(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String O0() {
        return L0().S();
    }

    static /* synthetic */ void O1(UnlockTemplate21Dialog unlockTemplate21Dialog, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "immersion_bottom";
        }
        unlockTemplate21Dialog.N1(str);
    }

    private final String P0() {
        return ve.h.f68906a.m();
    }

    private final void P1() {
        L0().j0(new e.m(getContext(), ((DialogFragmentUnlockTemplate21Binding) n()).f39091a.getMAutoUnlockEpisode(), true, null, 8, null));
    }

    private final void Q0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        this.f46593v = true;
        if (AccountRepo.f43052a.H0()) {
            SubsExpansionManager.x(SubsExpansionManager.f42751a, L0().X(), false, 2, null);
        }
        w(R$string.top_up_fragment_recharge_success);
        L0().j0(new e.C0664e(str, str2, gPayPriceInfo));
        P1();
        ((DialogFragmentUnlockTemplate21Binding) n()).f39091a.v();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().c();
        bf.e.f2616a.i().i();
    }

    private final void Q1(Object obj) {
        FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate21Binding) n()).f39098h;
        Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
        int childCount = flexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = flexboxLayout.getChildAt(i10);
            if (childAt instanceof com.startshorts.androidplayer.ui.view.purchase.i) {
                ((com.startshorts.androidplayer.ui.view.purchase.i) childAt).i(obj);
            }
        }
    }

    private final void R0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        this.f46593v = true;
        w(R$string.subscription_detail_activity_subs_success);
        L0().j0(new e.f(str, str2, gPayPriceInfo));
        P1();
        ((DialogFragmentUnlockTemplate21Binding) n()).f39091a.v();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().c();
        bf.e.f2616a.i().i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void R1() {
        Object obj = this.f46596y;
        if (obj != null) {
            Q1(obj);
        }
    }

    private final void S0(List<? extends Object> list) {
        L0().j0(new e.c(list));
    }

    private final void S1(String str, String str2, int i10, int i11, String str3, String str4, String str5, String str6, String str7, String str8) {
        Integer num;
        Integer num2;
        Integer num3;
        this.F = str;
        ud.a aVar = ud.a.f68411a;
        aVar.p0(true);
        s sVar = s.f51749a;
        String m10 = ve.h.f68906a.m();
        BaseEpisode baseEpisode = this.f46587p;
        if (baseEpisode != null) {
            num = Integer.valueOf(baseEpisode.getShortPlayId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f46587p;
        if (baseEpisode2 != null) {
            num2 = Integer.valueOf(baseEpisode2.getId());
        } else {
            num2 = null;
        }
        BaseEpisode baseEpisode3 = this.f46587p;
        if (baseEpisode3 != null) {
            num3 = Integer.valueOf(baseEpisode3.getEpisodeNum());
        } else {
            num3 = null;
        }
        String q10 = aVar.q();
        q qVar = q.f51745a;
        sVar.e(i10, (r51 & 2) != 0 ? null : Integer.valueOf(i11), str, str2, (r51 & 16) != 0 ? null : str3, (r51 & 32) != 0 ? null : m10, (r51 & 64) != 0 ? null : str4, (r51 & 128) != 0 ? null : num, (r51 & 256) != 0 ? null : num2, (r51 & 512) != 0 ? null : num3, (r51 & 1024) != 0 ? null : q10, (r51 & 2048) != 0 ? null : qVar.c(qVar.b()).getString("upack"), (r51 & 4096) != 0 ? Boolean.FALSE : Boolean.valueOf(this.B), (r51 & 8192) != 0 ? null : str5, (r51 & 16384) != 0 ? null : str6, (32768 & r51) != 0 ? null : O0(), (65536 & r51) != 0 ? null : null, (131072 & r51) != 0 ? null : null, (262144 & r51) != 0 ? null : null, (524288 & r51) != 0 ? null : null, (1048576 & r51) != 0 ? "other" : this.f46592u, (2097152 & r51) != 0 ? "" : str7, (r51 & 4194304) != 0 ? "" : str8);
    }

    private final void T0() {
        hi.b bVar = this.N;
        if (bVar != null) {
            bVar.cancel();
        }
        this.N = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V0() {
        String str;
        BaseEpisode baseEpisode = this.f46587p;
        if (baseEpisode != null && baseEpisode.isMembersOnly()) {
            return;
        }
        BaseTextView baseTextView = ((DialogFragmentUnlockTemplate21Binding) n()).f39105o;
        Context context = getContext();
        if (context != null) {
            str = context.getString(R$string.common_bonus, String.valueOf(AccountRepo.f43052a.e0()));
        } else {
            str = null;
        }
        baseTextView.setText(str);
    }

    private final void W0() {
        if (d1()) {
            b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39096f);
            return;
        }
        b0.l(((DialogFragmentUnlockTemplate21Binding) n()).f39096f);
        ((DialogFragmentUnlockTemplate21Binding) n()).f39096f.setOnClickListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0() {
        String str;
        BaseEpisode baseEpisode = this.f46587p;
        if (baseEpisode != null && baseEpisode.isMembersOnly()) {
            return;
        }
        BaseTextView baseTextView = ((DialogFragmentUnlockTemplate21Binding) n()).f39107q;
        Context context = getContext();
        if (context != null) {
            str = context.getString(R$string.common_coins, String.valueOf(AccountRepo.f43052a.g0()));
        } else {
            str = null;
        }
        baseTextView.setText(str);
    }

    private final void Y0() {
        int i10;
        if (d1()) {
            b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39109s);
            b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39110t);
            return;
        }
        b0.l(((DialogFragmentUnlockTemplate21Binding) n()).f39109s);
        b0.l(((DialogFragmentUnlockTemplate21Binding) n()).f39110t);
        BaseEpisode baseEpisode = this.f46587p;
        if (baseEpisode != null) {
            BaseTextView baseTextView = ((DialogFragmentUnlockTemplate21Binding) n()).f39110t;
            int i11 = R$string.common_coins;
            if (baseEpisode.getPrice() > 0) {
                i10 = baseEpisode.getPrice();
            } else {
                i10 = 0;
            }
            baseTextView.setText(getString(i11, String.valueOf(i10)));
            return;
        }
        new Function0() { // from class: ti.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit Z0;
                Z0 = UnlockTemplate21Dialog.Z0(UnlockTemplate21Dialog.this);
                return Z0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z0(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        ((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39110t.setText(unlockTemplate21Dialog.getString(R$string.common_coins, MBridgeConstans.ENDCARD_URL_TYPE_PL));
        return Unit.f60915a;
    }

    private final void a1() {
        BaseEpisode baseEpisode = this.f46587p;
        if (baseEpisode != null && baseEpisode.isMembersOnly()) {
            b0.l(((DialogFragmentUnlockTemplate21Binding) n()).f39111u);
            b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39094d);
        } else {
            b0.l(((DialogFragmentUnlockTemplate21Binding) n()).f39094d);
            b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39111u);
            Y0();
            X0();
            V0();
            W0();
        }
        b1();
    }

    private final void b1() {
        ((DialogFragmentUnlockTemplate21Binding) n()).f39095e.setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean c1() {
        if (this.A && this.f46597z != null) {
            return true;
        }
        return false;
    }

    private final boolean d1() {
        if (!Intrinsics.areEqual(this.f46592u, NativeAdPresenter.DOWNLOAD) && !Intrinsics.areEqual(this.f46592u, "1080P") && !Intrinsics.areEqual(this.f46592u, "unlock_view_entrance") && !Intrinsics.areEqual(this.f46592u, "sale_banner_entrance")) {
            return false;
        }
        return true;
    }

    private final void e1(List<UnlockEpisodeMethod> list) {
        List<SubsSku> Y = L0().Y();
        if (Y == null) {
            Y = new ArrayList<>();
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        int size = Y.size() + list.size();
        D();
        if (size == 0) {
            K();
            return;
        }
        C();
        ArrayList arrayList = new ArrayList();
        for (UnlockEpisodeMethod unlockEpisodeMethod : list) {
            if (unlockEpisodeMethod.getType() == 1) {
                Object extra = unlockEpisodeMethod.getExtra();
                Intrinsics.checkNotNull(extra, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.purchase.CoinSku");
                CoinSku coinSku = (CoinSku) extra;
                coinSku.setDataType(coinSku.getTYPE_COIN());
                arrayList.add(coinSku);
            }
        }
        I0(Y, arrayList);
    }

    private final void f1(int i10, int i11) {
        if (this.C != null) {
            EventManager eventManager = EventManager.f42463a;
            String O0 = O0();
            CoinSku coinSku = this.C;
            String str = this.f46592u;
            EventManager.F0(eventManager, O0, coinSku, null, null, Integer.valueOf(i10), Integer.valueOf(i11), this.f46590s, null, str, null, 652, null);
        } else if (this.D != null) {
            EventManager eventManager2 = EventManager.f42463a;
            String O02 = O0();
            SubsSku subsSku = this.D;
            String str2 = this.f46592u;
            EventManager.G0(eventManager2, O02, subsSku, null, null, 0, Integer.valueOf(i10), Integer.valueOf(i11), this.f46590s, null, str2, null, 1308, null);
        }
    }

    private final void g1(String str) {
        EventManager.f42463a.h1(this.F, str, Integer.valueOf(N0()), this.B ? 1 : 0);
    }

    public static final /* synthetic */ DialogFragmentUnlockTemplate21Binding h0(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        return (DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n();
    }

    private final void h1(Integer num, int i10) {
        if (this.C != null) {
            EventManager.T0(EventManager.f42463a, O0(), this.C, null, null, null, null, null, num, Integer.valueOf(i10), 124, null);
        } else if (this.D != null) {
            EventManager.U0(EventManager.f42463a, O0(), this.D, null, null, null, null, null, null, num, Integer.valueOf(i10), 252, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel i1(final UnlockTemplate21Dialog unlockTemplate21Dialog) {
        final BillingViewModel billingViewModel = (BillingViewModel) unlockTemplate21Dialog.M0().get(BillingViewModel.class);
        billingViewModel.Q().observe(unlockTemplate21Dialog, new i(new Function1() { // from class: ti.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j12;
                j12 = UnlockTemplate21Dialog.j1(UnlockTemplate21Dialog.this, billingViewModel, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return j12;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j1(final UnlockTemplate21Dialog unlockTemplate21Dialog, BillingViewModel billingViewModel, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            unlockTemplate21Dialog.x1();
        } else if (bVar instanceof b.m) {
            if (((DialogFragmentUnlockTemplate21Binding) unlockTemplate21Dialog.n()).f39098h.getChildCount() == 0) {
                unlockTemplate21Dialog.S0(((b.m) bVar).a());
            }
        } else if (bVar instanceof b.u) {
            unlockTemplate21Dialog.w(R$string.common_user_canceled);
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            unlockTemplate21Dialog.Q0(cVar.a(), cVar.b(), cVar.c());
        } else if (bVar instanceof b.C0654b) {
            unlockTemplate21Dialog.G1();
        } else if (bVar instanceof b.e) {
            b.e eVar = (b.e) bVar;
            unlockTemplate21Dialog.R0(eVar.a(), eVar.b(), eVar.c());
        } else if (bVar instanceof b.d) {
            unlockTemplate21Dialog.G1();
        } else if (bVar instanceof b.g) {
            unlockTemplate21Dialog.T0();
            if (((b.g) bVar).a().hasAcknowledged() && !unlockTemplate21Dialog.f46594w) {
                unlockTemplate21Dialog.f46594w = true;
                unlockTemplate21Dialog.P1();
            }
        } else if (bVar instanceof b.i) {
            unlockTemplate21Dialog.T0();
            unlockTemplate21Dialog.w(R$string.top_up_fragment_not_find_lost_order_tip);
        } else if (bVar instanceof b.p) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RefreshBalanceSucceed -> needUnlock(");
            b.p pVar = (b.p) bVar;
            sb2.append(pVar.a());
            sb2.append(')');
            billingViewModel.v(sb2.toString());
            if (pVar.a()) {
                AccountRepo.f43052a.j1(unlockTemplate21Dialog.f46587p, new Function0() { // from class: ti.z
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit k12;
                        k12 = UnlockTemplate21Dialog.k1(UnlockTemplate21Dialog.this);
                        return k12;
                    }
                });
            }
        } else if (bVar instanceof b.k) {
            Context requireContext = unlockTemplate21Dialog.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.f(requireContext, ((b.k) bVar).a()).show();
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.a()) {
                unlockTemplate21Dialog.w(R$string.top_up_fragment_recharge_success);
                AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                unlockTemplate21Dialog.h1(unlockTemplate21Dialog.E, unlockTemplate21Dialog.B ? 1 : 0);
                unlockTemplate21Dialog.P1();
                unlockTemplate21Dialog.E0(aVar.b());
            } else {
                unlockTemplate21Dialog.w(R$string.payment_failure);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k1(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        unlockTemplate21Dialog.P1();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PurchaseViewModel l1(final UnlockTemplate21Dialog unlockTemplate21Dialog) {
        PurchaseViewModel purchaseViewModel = (PurchaseViewModel) unlockTemplate21Dialog.M0().get(PurchaseViewModel.class);
        purchaseViewModel.R().observe(unlockTemplate21Dialog, new i(new Function1() { // from class: ti.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m12;
                m12 = UnlockTemplate21Dialog.m1(UnlockTemplate21Dialog.this, (com.startshorts.androidplayer.viewmodel.purchase.b) obj);
                return m12;
            }
        }));
        return purchaseViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(UnlockTemplate21Dialog unlockTemplate21Dialog, com.startshorts.androidplayer.viewmodel.purchase.b bVar) {
        if (bVar instanceof b.g) {
            b.g gVar = (b.g) bVar;
            Integer orderStatus = gVar.a().getOrderStatus();
            Integer num = unlockTemplate21Dialog.f46595x;
            if (num != null) {
                int intValue = num.intValue();
                String str = "";
                if (intValue != 1) {
                    if (intValue == 2) {
                        if (orderStatus != null && orderStatus.intValue() == 1) {
                            unlockTemplate21Dialog.f46593v = true;
                            unlockTemplate21Dialog.w(R$string.subscription_detail_activity_subs_success);
                            unlockTemplate21Dialog.P1();
                            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                            unlockTemplate21Dialog.g1("success");
                            bf.e.f2616a.i().i();
                            MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
                            String currencyCode = gVar.a().getCurrencyCode();
                            if (currencyCode == null) {
                                currencyCode = "";
                            }
                            String price = gVar.a().getPrice();
                            if (price == null) {
                                price = "";
                            }
                            String orderNo = gVar.a().getOrderNo();
                            if (orderNo != null) {
                                str = orderNo;
                            }
                            matchEventUtil.h(currencyCode, price, str);
                        } else {
                            unlockTemplate21Dialog.w(R$string.payment_failure);
                            unlockTemplate21Dialog.g1("failure");
                        }
                    }
                } else if (orderStatus != null && orderStatus.intValue() == 2) {
                    unlockTemplate21Dialog.f46593v = true;
                    AccountRepo accountRepo = AccountRepo.f43052a;
                    if (accountRepo.H0()) {
                        SubsExpansionManager.x(SubsExpansionManager.f42751a, unlockTemplate21Dialog.L0().X(), false, 2, null);
                    }
                    unlockTemplate21Dialog.w(R$string.top_up_fragment_recharge_success);
                    unlockTemplate21Dialog.P1();
                    AccountRepo.c1(accountRepo, false, null, 3, null);
                    unlockTemplate21Dialog.g1("success");
                    bf.e.f2616a.i().i();
                    MatchEventUtil matchEventUtil2 = MatchEventUtil.f48183a;
                    String currencyCode2 = gVar.a().getCurrencyCode();
                    if (currencyCode2 == null) {
                        currencyCode2 = "";
                    }
                    String price2 = gVar.a().getPrice();
                    if (price2 == null) {
                        price2 = "";
                    }
                    String orderNo2 = gVar.a().getOrderNo();
                    if (orderNo2 != null) {
                        str = orderNo2;
                    }
                    matchEventUtil2.g(currencyCode2, price2, str);
                } else {
                    unlockTemplate21Dialog.w(R$string.payment_failure);
                    unlockTemplate21Dialog.g1("failure");
                }
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel n1(final UnlockTemplate21Dialog unlockTemplate21Dialog) {
        final UnlockViewModel unlockViewModel = (UnlockViewModel) unlockTemplate21Dialog.M0().get(UnlockViewModel.class);
        unlockViewModel.o().observe(unlockTemplate21Dialog, new i(new Function1() { // from class: ti.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit o12;
                o12 = UnlockTemplate21Dialog.o1(UnlockTemplate21Dialog.this, (ApiErrorState) obj);
                return o12;
            }
        }));
        unlockViewModel.a0().observe(unlockTemplate21Dialog, new i(new Function1() { // from class: ti.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit p12;
                p12 = UnlockTemplate21Dialog.p1(UnlockViewModel.this, unlockTemplate21Dialog, (com.startshorts.androidplayer.viewmodel.immersion.f) obj);
                return p12;
            }
        }));
        return unlockViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o1(UnlockTemplate21Dialog unlockTemplate21Dialog, ApiErrorState apiErrorState) {
        if (apiErrorState.getState() == 1) {
            unlockTemplate21Dialog.M();
            unlockTemplate21Dialog.F();
        } else {
            unlockTemplate21Dialog.N(apiErrorState.getMsg());
            unlockTemplate21Dialog.H();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(final UnlockViewModel unlockViewModel, final UnlockTemplate21Dialog unlockTemplate21Dialog, com.startshorts.androidplayer.viewmodel.immersion.f fVar) {
        if (fVar instanceof f.C0665f) {
            SubsExpansionManager.f42751a.u(true, unlockViewModel.Y(), new n() { // from class: ti.a0
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit q12;
                    q12 = UnlockTemplate21Dialog.q1(UnlockViewModel.this, unlockTemplate21Dialog, ((Integer) obj).intValue(), (SubsSku) obj2, (List) obj3);
                    return q12;
                }
            });
            if (((f.C0665f) fVar).a()) {
                unlockTemplate21Dialog.K();
            } else {
                unlockTemplate21Dialog.F0();
            }
        } else if (fVar instanceof f.b) {
            unlockTemplate21Dialog.w1(((f.b) fVar).a());
        } else if (fVar instanceof f.c) {
            unlockTemplate21Dialog.e1(((f.c) fVar).a());
            unlockTemplate21Dialog.L1();
            if (!AccountRepo.f43052a.D0()) {
                unlockTemplate21Dialog.H1();
            }
            unlockTemplate21Dialog.F1();
        } else if (fVar instanceof f.d) {
            unlockTemplate21Dialog.f46594w = false;
            unlockTemplate21Dialog.z1();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(UnlockViewModel unlockViewModel, UnlockTemplate21Dialog unlockTemplate21Dialog, int i10, SubsSku subsSku, List newSubList) {
        Intrinsics.checkNotNullParameter(newSubList, "newSubList");
        unlockViewModel.w0(newSubList);
        if (i10 > -1) {
            unlockTemplate21Dialog.f46596y = subsSku;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider r1(UnlockTemplate21Dialog unlockTemplate21Dialog) {
        return new ViewModelProvider(unlockTemplate21Dialog);
    }

    private final void s1() {
        AccountRepo.f43052a.O(this.M);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t1(CoinSku coinSku) {
        this.C = coinSku;
        this.D = null;
        SkuPaymentMethod payment = coinSku.getPayment();
        if (payment != null && payment.getPayType() != null) {
            Integer payType = payment.getPayType();
            int a10 = qf.e.f65327a.a();
            if (payType == null || payType.intValue() != a10) {
                this.f46595x = 1;
                String skuId = payment.getSkuId();
                String skuProductId = coinSku.getSkuProductId();
                Integer payType2 = payment.getPayType();
                String skuModelConfigId = coinSku.getSkuModelConfigId();
                String planId = payment.getPlanId();
                String currency = payment.getCurrency();
                G0(skuId, skuProductId, 1, payType2.intValue(), payment.getCountryCode(), skuModelConfigId, planId, currency, coinSku.getEv(), coinSku.getH5JsonParam());
                return;
            }
        }
        if (coinSku.getSkuType() == 1000) {
            return;
        }
        if (coinSku instanceof ThirdPartyPaymentCoinSku) {
            ThirdPartyPaymentSkuResult result = ((ThirdPartyPaymentCoinSku) coinSku).getResult();
            if (result != null) {
                J0().W(new a.k(O0(), result, null, 4, null));
                return;
            }
            return;
        }
        J0().W(new a.e(O0(), k(), coinSku, null, false, null, null, null, 248, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u1(SubsSku subsSku) {
        this.D = subsSku;
        this.C = null;
        SkuPaymentMethod payment = subsSku.getPayment();
        if (payment != null && payment.getPayType() != null) {
            Integer payType = payment.getPayType();
            int a10 = qf.e.f65327a.a();
            if (payType == null || payType.intValue() != a10) {
                this.f46595x = 2;
                String skuId = payment.getSkuId();
                Integer payType2 = payment.getPayType();
                String countryCode = payment.getCountryCode();
                H0(this, skuId, subsSku.getProductId(), 2, payType2.intValue(), countryCode, null, payment.getPlanId(), payment.getCurrency(), subsSku.getEv(), subsSku.getH5JsonParam(), 32, null);
                return;
            }
        }
        J0().W(new a.j(O0(), k(), subsSku, this.f46587p, null, 0, null, null, null, this.f46589r, this.f46590s, null, 2544, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(UnlockTemplate21Dialog unlockTemplate21Dialog, SubsSku it, boolean z10) {
        Intrinsics.checkNotNullParameter(it, "it");
        BaseUnlockEpisodeDialog.a aVar = unlockTemplate21Dialog.f46586o;
        if (aVar != null) {
            aVar.e(it, z10);
        }
        return Unit.f60915a;
    }

    private final void w1(List<zc.g> list) {
        J0().W(new a.h(list));
    }

    private final void x1() {
        L0().j0(e.h.f48763b);
    }

    private final void y1() {
        UnlockViewModel L0 = L0();
        String str = this.f46591t;
        if (str == null) {
            str = "";
        }
        L0.j0(new e.i(str, this.f46592u, 0, this.f46589r, this.f46590s, 4, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z1() {
        if (L0().R()) {
            q("reloadUnlockEpisodeMethods");
            L0().Q();
            FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate21Binding) n()).f39098h;
            Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
            int childCount = flexboxLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = flexboxLayout.getChildAt(i10);
                if (childAt instanceof SubSkuCardView) {
                    ((SubSkuCardView) childAt).s();
                }
                if (childAt instanceof CoinSkuCardView) {
                    ((CoinSkuCardView) childAt).s();
                }
            }
            ((DialogFragmentUnlockTemplate21Binding) n()).f39098h.removeAllViews();
            L();
            J();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment
    public void J() {
        if (!L0().R()) {
            y1();
        } else {
            F0();
        }
    }

    public final void L1() {
        BaseEpisode baseEpisode;
        int i10;
        if (!d1() && ((baseEpisode = this.f46587p) == null || !baseEpisode.isMembersOnly())) {
            UnlockEpisodeAdMethod T = L0().T();
            if (T != null) {
                if (T.enable() && T.getPayTemplateShowAd()) {
                    b0.l(((DialogFragmentUnlockTemplate21Binding) n()).f39095e);
                    if (getContext() != null) {
                        Integer valueOf = Integer.valueOf(T.getTotalWatchAdNum() - T.getCanWatchAdNum());
                        if (valueOf.intValue() <= 0) {
                            valueOf = null;
                        }
                        if (valueOf != null) {
                            i10 = valueOf.intValue();
                        } else {
                            i10 = 0;
                        }
                        String valueOf2 = String.valueOf(i10);
                        String e10 = u.f51776a.e(R$string.unlock_dialog_watch_ads_info, valueOf2, String.valueOf(T.getTotalWatchAdNum()));
                        try {
                            BaseTextView tvWatchAdInfo = ((DialogFragmentUnlockTemplate21Binding) n()).f39112v;
                            Intrinsics.checkNotNullExpressionValue(tvWatchAdInfo, "tvWatchAdInfo");
                            xd.b.b(tvWatchAdInfo, e10, valueOf2, -1, false, 8, null);
                            return;
                        } catch (Exception e11) {
                            ((DialogFragmentUnlockTemplate21Binding) n()).f39112v.setText(e10);
                            e11.printStackTrace();
                            return;
                        }
                    }
                    return;
                }
                b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39095e);
                return;
            }
            new Function0() { // from class: ti.c0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit M1;
                    M1 = UnlockTemplate21Dialog.M1(UnlockTemplate21Dialog.this);
                    return M1;
                }
            };
            return;
        }
        b0.d(((DialogFragmentUnlockTemplate21Binding) n()).f39095e);
    }

    public final void U0(@NotNull String template, @NotNull String scene, @NotNull String action, @NotNull BaseEpisode episode, @Nullable String str, @Nullable BaseUnlockEpisodeDialog.a aVar, boolean z10, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(template, "template");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f46588q = template;
        this.f46591t = scene;
        this.f46592u = action;
        this.f46587p = episode;
        this.f46586o = aVar;
        this.f46589r = str;
        this.O = z10;
        this.f46590s = str2;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_unlock_template_21;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        UnlockEpisodeAdMethod T;
        BaseUnlockEpisodeDialog.a aVar;
        BaseUnlockEpisodeDialog.a aVar2;
        BaseUnlockEpisodeDialog.a aVar3;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        if (!this.f46593v && !this.G && !d1()) {
            this.G = false;
            UnlockEpisodeAdMethod T2 = L0().T();
            ve.h hVar = ve.h.f68906a;
            String h10 = hVar.h(T2);
            if (Intrinsics.areEqual(h10, hVar.l())) {
                hVar.p(L0().X(), new Function2() { // from class: ti.g0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Unit v12;
                        v12 = UnlockTemplate21Dialog.v1(UnlockTemplate21Dialog.this, (SubsSku) obj, ((Boolean) obj2).booleanValue());
                        return v12;
                    }
                });
            } else if (Intrinsics.areEqual(h10, hVar.i())) {
                BaseEpisode baseEpisode = this.f46587p;
                if (baseEpisode != null && baseEpisode.isIaaUserEpisode()) {
                    BaseUnlockEpisodeDialog.a aVar4 = this.f46586o;
                    if (aVar4 != null) {
                        BaseUnlockEpisodeDialog.a.C0642a.a(aVar4, ((DialogFragmentUnlockTemplate21Binding) n()).f39091a.getMAutoUnlockEpisode(), AccountRepo.f43052a.K0(), null, 4, null);
                    }
                } else if (T2 != null && (aVar3 = this.f46586o) != null) {
                    aVar3.c(((DialogFragmentUnlockTemplate21Binding) n()).f39091a.getMAutoUnlockEpisode(), AccountRepo.f43052a.K0(), T2);
                }
            } else if (Intrinsics.areEqual(h10, hVar.j())) {
                CoinSku W = L0().W();
                if (W != null && (aVar2 = this.f46586o) != null) {
                    aVar2.f(W, true);
                }
            } else if (Intrinsics.areEqual(h10, hVar.k()) && (aVar = this.f46586o) != null) {
                aVar.d();
            }
        }
        this.H = false;
        BaseUnlockEpisodeDialog.a aVar5 = this.f46586o;
        if (aVar5 != null) {
            if (this.f46593v) {
                T = null;
            } else {
                T = L0().T();
            }
            aVar5.b(T);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().a();
        J0().W(new a.C0653a(requireContext()));
        ud.a aVar = ud.a.f68411a;
        if (aVar.O()) {
            aVar.p0(false);
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new com.startshorts.androidplayer.ui.dialog.immersion.a(requireContext, new c()).show();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        View findViewById;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (findViewById = dialog.findViewById(R.id.design_bottom_sheet)) != null) {
            BottomSheetBehavior from = BottomSheetBehavior.from(findViewById);
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            from.setState(3);
            from.setSkipCollapsed(true);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46587p == null) {
            j("dismiss for invalid arguments -> mEpisode(null)");
            dismiss();
            return;
        }
        L0().j0(new e.d(this.f46587p));
        s1();
        a1();
        J();
        AccountRepo.Z0(AccountRepo.f43052a, false, null, null, 7, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return this.P;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002d, code lost:
        if (r5.containsShortsId(r0) != false) goto L21;
     */
    @au.l(threadMode = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void receiveAcknowledgePurchaseResult(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult r5) {
        /*
            r4 = this;
            java.lang.String r0 = "result"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "receive AcknowledgePurchaseResult -> "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            r4.q(r0)
            boolean r0 = r5.onlyContainsDiscount()
            if (r0 == 0) goto L2f
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r0 = r4.f46587p
            if (r0 == 0) goto L28
            int r0 = r0.getShortPlayId()
            goto L29
        L28:
            r0 = -1
        L29:
            boolean r0 = r5.containsShortsId(r0)
            if (r0 == 0) goto L3b
        L2f:
            r0 = 1
            r4.f46593v = r0
            boolean r1 = r4.f46594w
            if (r1 != 0) goto L3b
            r4.f46594w = r0
            r4.P1()
        L3b:
            boolean r0 = r5.containsDiscount()
            if (r0 != 0) goto L5f
            boolean r5 = r5.containsSubs()
            if (r5 != 0) goto L5f
            com.startshorts.androidplayer.repo.account.AccountRepo r5 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r5 = r5.H0()
            if (r5 == 0) goto L5f
            com.startshorts.androidplayer.manager.purchase.SubsExpansionManager r5 = com.startshorts.androidplayer.manager.purchase.SubsExpansionManager.f42751a
            com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel r0 = r4.L0()
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r0.X()
            r1 = 2
            r2 = 0
            r3 = 0
            com.startshorts.androidplayer.manager.purchase.SubsExpansionManager.x(r5, r0, r3, r1, r2)
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate21Dialog.receiveAcknowledgePurchaseResult(com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult):void");
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46587p;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            dismiss();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receiveRefreshAccountEvent");
        s1();
        X0();
        V0();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveTTPpmentResultEvent(@NotNull TTPResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive TTPResultEvent");
        K0().Y(new a.i(event.getOrderNo(), event.getOrderType()));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        AccountRepo.f43052a.d1(this.M);
        ((DialogFragmentUnlockTemplate21Binding) n()).f39101k.release();
        J0().w();
        K0().w();
        L0().w();
        FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate21Binding) n()).f39098h;
        Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
        int childCount = flexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = flexboxLayout.getChildAt(i10);
            if (childAt instanceof SubSkuCardView) {
                ((SubSkuCardView) childAt).s();
            }
            if (childAt instanceof CoinSkuCardView) {
                ((CoinSkuCardView) childAt).s();
            }
        }
    }

    /* compiled from: UnlockTemplate21Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements a.b {
        c() {
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void a() {
            UnlockTemplate21Dialog.this.K0().Y(new a.i(null, null, 3, null));
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void onDismiss() {
        }
    }
}
