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
import com.startshorts.androidplayer.databinding.DialogFragmentUnlockTemplate22Binding;
import com.startshorts.androidplayer.databinding.ViewCoinDbSkuCardBinding;
import com.startshorts.androidplayer.databinding.ViewSubDbSkuBigCardBinding;
import com.startshorts.androidplayer.databinding.ViewSubDbSkuSmallCardBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.Ad2PayPresent;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.dialog.immersion.a;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.BaseUnlockEpisodeDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate22Dialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.AutoUnlockEpisodeView;
import com.startshorts.androidplayer.ui.view.purchase.CoinDBSkuCardView;
import com.startshorts.androidplayer.ui.view.purchase.RechargeTipView;
import com.startshorts.androidplayer.ui.view.purchase.SubDBSkuCardView;
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
/* compiled from: UnlockTemplate22Dialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnlockTemplate22Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1453:1\n53#2,4:1454\n53#2,4:1464\n53#2,4:1468\n53#2,4:1486\n1#3:1458\n1863#4,2:1459\n1872#4,3:1461\n774#4:1472\n865#4,2:1473\n1557#4:1475\n1628#4,3:1476\n774#4:1479\n865#4,2:1480\n1557#4:1482\n1628#4,3:1483\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog\n*L\n674#1:1454,4\n1199#1:1464,4\n1261#1:1468,4\n1430#1:1486,4\n1015#1:1459,2\n1085#1:1461,3\n1357#1:1472\n1357#1:1473,2\n1359#1:1475\n1359#1:1476,3\n1365#1:1479\n1365#1:1480,2\n1367#1:1482\n1367#1:1483,3\n*E\n"})
/* loaded from: classes7.dex */
public final class UnlockTemplate22Dialog extends BottomSheetPageStateFragment<DialogFragmentUnlockTemplate22Binding> {
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
    @Nullable
    private hi.b M;
    private boolean N;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private BaseUnlockEpisodeDialog.a f46616o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private BaseEpisode f46617p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private String f46618q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f46619r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private String f46620s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f46621t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f46622u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f46623v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f46624w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private Integer f46625x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private Object f46626y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private tj.a f46627z;
    private boolean B = true;
    @NotNull
    private final ms.i H = kotlin.c.b(new Function0() { // from class: ti.z0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider n12;
            n12 = UnlockTemplate22Dialog.n1(UnlockTemplate22Dialog.this);
            return n12;
        }
    });
    @NotNull
    private final ms.i I = kotlin.c.b(new Function0() { // from class: ti.a1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel j12;
            j12 = UnlockTemplate22Dialog.j1(UnlockTemplate22Dialog.this);
            return j12;
        }
    });
    @NotNull
    private final ms.i J = kotlin.c.b(new Function0() { // from class: ti.b1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel e12;
            e12 = UnlockTemplate22Dialog.e1(UnlockTemplate22Dialog.this);
            return e12;
        }
    });
    @NotNull
    private final ms.i K = kotlin.c.b(new Function0() { // from class: ti.c1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseViewModel h12;
            h12 = UnlockTemplate22Dialog.h1(UnlockTemplate22Dialog.this);
            return h12;
        }
    });
    @NotNull
    private final UnlockTemplate22Dialog$mPropertyObserver$1 L = new UnlockTemplate22Dialog$mPropertyObserver$1(this);
    @NotNull
    private final String O = "SubscribeEasyUnlockEpisodeDialog";

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends yd.d {
        a() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            UnlockTemplate22Dialog.this.dismiss();
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            UnlockTemplate22Dialog.this.F1();
            AdManager.f41600a.a0(AdScene.MEDIA_VIDEO);
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog\n*L\n1#1,102:1\n1076#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d<T> implements Comparator {
        public d() {
        }

        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            boolean z10;
            Integer itemStyle = ((SelectableItem) t10).getItemStyle();
            int U = UnlockTemplate22Dialog.this.I0().U();
            boolean z11 = false;
            if (itemStyle == null || itemStyle.intValue() != U) {
                z10 = true;
            } else {
                z10 = false;
            }
            Boolean valueOf = Boolean.valueOf(z10);
            Integer itemStyle2 = ((SelectableItem) t11).getItemStyle();
            int U2 = UnlockTemplate22Dialog.this.I0().U();
            if (itemStyle2 == null || itemStyle2.intValue() != U2) {
                z11 = true;
            }
            return ps.a.a(valueOf, Boolean.valueOf(z11));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$thenBy$1\n+ 2 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog\n*L\n1#1,145:1\n1076#2:146\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class e<T> implements Comparator {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f46632a;

        public e(Comparator comparator) {
            this.f46632a = comparator;
        }

        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            int compare = this.f46632a.compare(t10, t11);
            if (compare == 0) {
                return ps.a.a(Integer.valueOf(((SelectableItem) t10).getSort()), Integer.valueOf(((SelectableItem) t11).getSort()));
            }
            return compare;
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements CoinDBSkuCardView.b {
        f() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.CoinDBSkuCardView.b
        public void onExpired() {
            UnlockTemplate22Dialog.this.v1();
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nUnlockTemplate22Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$renderSubsAndCoinsView$3$2\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,1453:1\n53#2,4:1454\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$renderSubsAndCoinsView$3$2\n*L\n1110#1:1454,4\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ CoinSku f46635f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(CoinSku coinSku) {
            super(0L, 1, null);
            this.f46635f = coinSku;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (!UnlockTemplate22Dialog.this.Y0()) {
                UnlockTemplate22Dialog.this.f46626y = null;
                UnlockTemplate22Dialog.this.p1(this.f46635f);
            } else {
                UnlockTemplate22Dialog.this.f46626y = this.f46635f;
                UnlockTemplate22Dialog.this.N1();
                FlexboxLayout flexboxLayout = UnlockTemplate22Dialog.h0(UnlockTemplate22Dialog.this).f39122f;
                Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
                UnlockTemplate22Dialog unlockTemplate22Dialog = UnlockTemplate22Dialog.this;
                int childCount = flexboxLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = flexboxLayout.getChildAt(i10);
                    if (childAt instanceof SubSkuRenewTipView) {
                        UnlockTemplate22Dialog.h0(unlockTemplate22Dialog).f39122f.removeView(childAt);
                    }
                }
            }
            EventManager eventManager = EventManager.f42463a;
            String L0 = UnlockTemplate22Dialog.this.L0();
            CoinSku coinSku = this.f46635f;
            BaseEpisode baseEpisode = UnlockTemplate22Dialog.this.f46617p;
            Integer valueOf = Integer.valueOf(UnlockTemplate22Dialog.this.K0());
            String str = UnlockTemplate22Dialog.this.f46619r;
            if (str == null) {
                str = "";
            }
            EventManager.B0(eventManager, L0, coinSku, baseEpisode, null, valueOf, null, str, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s, 40, null);
            UnlockTemplate22Dialog.this.z1(this.f46635f);
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nUnlockTemplate22Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$renderSubsAndCoinsView$3$5\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,1453:1\n53#2,4:1454\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate22Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate22Dialog$renderSubsAndCoinsView$3$5\n*L\n1169#1:1454,4\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ SubsSku f46637f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ List<SelectableItem> f46638g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubDBSkuCardView f46639h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(SubsSku subsSku, List<SelectableItem> list, SubDBSkuCardView subDBSkuCardView) {
            super(0L, 1, null);
            this.f46637f = subsSku;
            this.f46638g = list;
            this.f46639h = subDBSkuCardView;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (!UnlockTemplate22Dialog.this.Y0()) {
                UnlockTemplate22Dialog.this.f46626y = null;
                UnlockTemplate22Dialog.this.q1(this.f46637f);
            } else {
                UnlockTemplate22Dialog.this.f46626y = this.f46637f;
                UnlockTemplate22Dialog.this.N1();
                FlexboxLayout flexboxLayout = UnlockTemplate22Dialog.h0(UnlockTemplate22Dialog.this).f39122f;
                Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
                UnlockTemplate22Dialog unlockTemplate22Dialog = UnlockTemplate22Dialog.this;
                int childCount = flexboxLayout.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View childAt = flexboxLayout.getChildAt(i10);
                    if (childAt instanceof SubSkuRenewTipView) {
                        UnlockTemplate22Dialog.h0(unlockTemplate22Dialog).f39122f.removeView(childAt);
                    }
                }
                if (!this.f46637f.isBigCard()) {
                    UnlockTemplate22Dialog.this.A0(this.f46638g, this.f46637f, this.f46639h.B());
                }
            }
            EventManager eventManager = EventManager.f42463a;
            String L0 = UnlockTemplate22Dialog.this.L0();
            SubsSku subsSku = this.f46637f;
            BaseEpisode baseEpisode = UnlockTemplate22Dialog.this.f46617p;
            Integer valueOf = Integer.valueOf(UnlockTemplate22Dialog.this.K0());
            String str = UnlockTemplate22Dialog.this.f46619r;
            if (str == null) {
                str = "";
            }
            EventManager.C0(eventManager, L0, subsSku, baseEpisode, null, 0, valueOf, null, str, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s, 88, null);
            UnlockTemplate22Dialog.this.z1(this.f46637f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46640a;

        i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46640a = function;
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
            return this.f46640a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46640a.invoke(obj);
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j implements com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a {
        j() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void a(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            UnlockTemplate22Dialog.this.f46625x = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    EventManager.i0(EventManager.f42463a, 1, subsSku, UnlockTemplate22Dialog.this.f46617p, aVar.p(), 0, 99, UnlockTemplate22Dialog.this.f46619r, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s, 16, null);
                    return;
                }
                return;
            }
            EventManager.f42463a.f0(1, coinSku, UnlockTemplate22Dialog.this.f46617p, aVar.p(), 99, UnlockTemplate22Dialog.this.f46619r, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void b(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            UnlockTemplate22Dialog.this.f46625x = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    EventManager.i0(EventManager.f42463a, 4, subsSku, UnlockTemplate22Dialog.this.f46617p, aVar.p(), 0, 99, UnlockTemplate22Dialog.this.f46619r, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s, 16, null);
                    return;
                }
                return;
            }
            EventManager.f42463a.f0(4, coinSku, UnlockTemplate22Dialog.this.f46617p, aVar.p(), 99, UnlockTemplate22Dialog.this.f46619r, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void c(int i10, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(false);
            UnlockTemplate22Dialog.this.f46625x = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    if (subsSku != null) {
                        UnlockTemplate22Dialog.this.q1(subsSku);
                    }
                    EventManager.i0(EventManager.f42463a, 3, subsSku, UnlockTemplate22Dialog.this.f46617p, aVar.p(), 0, Integer.valueOf(qf.e.f65327a.a()), UnlockTemplate22Dialog.this.f46619r, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s, 16, null);
                    return;
                }
                return;
            }
            if (coinSku != null) {
                UnlockTemplate22Dialog.this.p1(coinSku);
            }
            EventManager.f42463a.f0(3, coinSku, UnlockTemplate22Dialog.this.f46617p, aVar.p(), Integer.valueOf(qf.e.f65327a.a()), UnlockTemplate22Dialog.this.f46619r, UnlockTemplate22Dialog.this.f46622u, UnlockTemplate22Dialog.this.f46620s);
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k implements d.b {
        k() {
        }

        @Override // gi.d.b
        public void a() {
            UnlockTemplate22Dialog.this.J1("retry_pop");
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l implements RechargeTipView.b {
        l() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.RechargeTipView.b
        public void a() {
            UnlockTemplate22Dialog.K1(UnlockTemplate22Dialog.this, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0(List<SelectableItem> list, SelectableItem selectableItem, boolean z10) {
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
            ((DialogFragmentUnlockTemplate22Binding) n()).f39122f.addView(subSkuRenewTipView, i10);
            return;
        }
        FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate22Binding) n()).f39122f;
        if (z11 && list.size() > i10) {
            i10 = indexOf + 2;
        }
        flexboxLayout.addView(subSkuRenewTipView, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(View view, UnlockTemplate22Dialog unlockTemplate22Dialog) {
        int measuredHeight = view.getMeasuredHeight();
        int a10 = jk.g.a(20.0f) + measuredHeight;
        int a11 = measuredHeight + jk.g.a(15.0f);
        Space space = ((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39135s;
        ViewGroup.LayoutParams layoutParams = ((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39135s.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = null;
        if (layoutParams != null) {
            layoutParams.height = a10;
        } else {
            layoutParams = null;
        }
        space.setLayoutParams(layoutParams);
        View view2 = ((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39118b;
        ViewGroup.LayoutParams layoutParams3 = ((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39118b.getLayoutParams();
        if (layoutParams3 != null) {
            layoutParams3.height = a11;
            layoutParams2 = layoutParams3;
        }
        view2.setLayoutParams(layoutParams2);
        ((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39135s.requestLayout();
        ((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39118b.requestLayout();
    }

    private final void B0(OtherOrderResult otherOrderResult) {
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

    private final void B1() {
        AutoUnlockEpisodeView.x(((DialogFragmentUnlockTemplate22Binding) n()).f39117a, L0(), null, 2, null);
    }

    private final void C0() {
        G0().W(new a.c("subscribe_simple_unlock"));
    }

    private final void C1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        gi.d dVar = new gi.d(requireContext);
        dVar.x(new k());
        dVar.show();
    }

    private final void D0(String str, String str2, int i10, int i11, String str3, String str4, String str5, String str6, String str7, String str8) {
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
            BillingViewModel G0 = G0();
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            G0.W(new a.d(requireContext, str6, i12, str, str2, str4, null, null, null, FileUtils.S_IRWXU, null));
            b1(i11, this.B ? 1 : 0);
            return;
        }
        O1(str, str2, i10, i11, str6, str4, str5, str3, str7, str8);
    }

    private final void D1() {
        ((DialogFragmentUnlockTemplate22Binding) n()).f39126j.setMListener(new l());
        if (ABTestFactory.f42224a.K0().isEnable().invoke().booleanValue()) {
            ((DialogFragmentUnlockTemplate22Binding) n()).f39126j.B();
        }
        ((DialogFragmentUnlockTemplate22Binding) n()).f39126j.z();
        ((DialogFragmentUnlockTemplate22Binding) n()).f39126j.setVisibility(0);
    }

    static /* synthetic */ void E0(UnlockTemplate22Dialog unlockTemplate22Dialog, String str, String str2, int i10, int i11, String str3, String str4, String str5, String str6, String str7, String str8, int i12, Object obj) {
        unlockTemplate22Dialog.D0(str, str2, i10, i11, (i12 & 16) != 0 ? null : str3, (i12 & 32) != 0 ? null : str4, (i12 & 64) != 0 ? null : str5, (i12 & 128) != 0 ? null : str6, (i12 & 256) != 0 ? null : str7, (i12 & 512) != 0 ? null : str8);
    }

    private final void E1() {
        Q0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        hi.b bVar = new hi.b(requireContext);
        bVar.setCancelable(false);
        bVar.show();
        this.M = bVar;
    }

    private final void F0(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        boolean p10 = qf.h.f65328a.p(list, list2);
        this.A = p10;
        if (!p10) {
            if (list == null) {
                list = CollectionsKt.n();
            }
            if (list2 == null) {
                list2 = CollectionsKt.n();
            }
            w1(list, list2);
            b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39135s);
            b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39118b);
            tj.a aVar = this.f46627z;
            if (aVar != null) {
                aVar.setBtnVisibility(8);
            }
            this.f46627z = null;
        } else {
            if (this.f46627z == null) {
                tj.b bVar = tj.b.f67381a;
                ViewStubProxy stubPaymentMethod = ((DialogFragmentUnlockTemplate22Binding) n()).f39127k;
                Intrinsics.checkNotNullExpressionValue(stubPaymentMethod, "stubPaymentMethod");
                this.f46627z = bVar.a(stubPaymentMethod);
            }
            if (list == null) {
                list = CollectionsKt.n();
            }
            if (list2 == null) {
                list2 = CollectionsKt.n();
            }
            w1(list, list2);
            tj.a aVar2 = this.f46627z;
            if (aVar2 != null) {
                aVar2.setBtnVisibility(0);
            }
        }
        Object obj = this.f46626y;
        if (obj != null && (obj instanceof SelectableItem)) {
            z1((SelectableItem) obj);
        }
        N1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F1() {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(this.f46617p);
        C.putString("ad_active", "unlock_pop");
        C.putString("type", "1");
        C.putString("style_id", ve.h.f68906a.m());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "watch_ad_click", C, 0L, 4, null);
        AdManager.f41600a.p0(this.f46619r, getActivity(), "unlock_pop", this.f46617p, new Function1() { // from class: ti.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit G1;
                G1 = UnlockTemplate22Dialog.G1(UnlockTemplate22Dialog.this, ((Boolean) obj).booleanValue());
                return G1;
            }
        });
    }

    private final BillingViewModel G0() {
        return (BillingViewModel) this.J.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G1(UnlockTemplate22Dialog unlockTemplate22Dialog, boolean z10) {
        if (z10) {
            Ad2PayPresent.f42733a.x();
            unlockTemplate22Dialog.I0().j0(new e.l(unlockTemplate22Dialog.getContext(), true, null, 4, null));
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurchaseViewModel H0() {
        return (PurchaseViewModel) this.K.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UnlockViewModel I0() {
        return (UnlockViewModel) this.I.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I1(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        b0.d(((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39120d);
        return Unit.f60915a;
    }

    private final ViewModelProvider J0() {
        return (ViewModelProvider) this.H.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J1(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle x10 = EventManager.x(eventManager, ud.a.f68411a.p(), false, 2, null);
        x10.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", x10, 0L, 4, null);
        E1();
        G0().W(new a.f(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int K0() {
        return qf.e.f65327a.a();
    }

    static /* synthetic */ void K1(UnlockTemplate22Dialog unlockTemplate22Dialog, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "immersion_bottom";
        }
        unlockTemplate22Dialog.J1(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String L0() {
        return I0().S();
    }

    private final void L1() {
        I0().j0(new e.m(getContext(), ((DialogFragmentUnlockTemplate22Binding) n()).f39117a.getMAutoUnlockEpisode(), true, null, 8, null));
    }

    private final String M0() {
        return ve.h.f68906a.m();
    }

    private final void M1(Object obj) {
        FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate22Binding) n()).f39122f;
        Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
        int childCount = flexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = flexboxLayout.getChildAt(i10);
            if (childAt instanceof com.startshorts.androidplayer.ui.view.purchase.i) {
                ((com.startshorts.androidplayer.ui.view.purchase.i) childAt).i(obj);
            }
        }
    }

    private final void N0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        this.f46623v = true;
        if (AccountRepo.f43052a.H0()) {
            SubsExpansionManager.x(SubsExpansionManager.f42751a, I0().X(), false, 2, null);
        }
        w(R$string.top_up_fragment_recharge_success);
        I0().j0(new e.C0664e(str, str2, gPayPriceInfo));
        L1();
        ((DialogFragmentUnlockTemplate22Binding) n()).f39117a.v();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().c();
        bf.e.f2616a.i().i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N1() {
        Object obj = this.f46626y;
        if (obj != null) {
            M1(obj);
        }
    }

    private final void O0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        this.f46623v = true;
        w(R$string.subscription_detail_activity_subs_success);
        I0().j0(new e.f(str, str2, gPayPriceInfo));
        L1();
        ((DialogFragmentUnlockTemplate22Binding) n()).f39117a.v();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().c();
        bf.e.f2616a.i().i();
    }

    private final void O1(String str, String str2, int i10, int i11, String str3, String str4, String str5, String str6, String str7, String str8) {
        Integer num;
        Integer num2;
        Integer num3;
        this.F = str;
        ud.a aVar = ud.a.f68411a;
        aVar.p0(true);
        s sVar = s.f51749a;
        String m10 = ve.h.f68906a.m();
        BaseEpisode baseEpisode = this.f46617p;
        if (baseEpisode != null) {
            num = Integer.valueOf(baseEpisode.getShortPlayId());
        } else {
            num = null;
        }
        BaseEpisode baseEpisode2 = this.f46617p;
        if (baseEpisode2 != null) {
            num2 = Integer.valueOf(baseEpisode2.getId());
        } else {
            num2 = null;
        }
        BaseEpisode baseEpisode3 = this.f46617p;
        if (baseEpisode3 != null) {
            num3 = Integer.valueOf(baseEpisode3.getEpisodeNum());
        } else {
            num3 = null;
        }
        String q10 = aVar.q();
        q qVar = q.f51745a;
        sVar.e(i10, (r51 & 2) != 0 ? null : Integer.valueOf(i11), str, str2, (r51 & 16) != 0 ? null : str3, (r51 & 32) != 0 ? null : m10, (r51 & 64) != 0 ? null : str4, (r51 & 128) != 0 ? null : num, (r51 & 256) != 0 ? null : num2, (r51 & 512) != 0 ? null : num3, (r51 & 1024) != 0 ? null : q10, (r51 & 2048) != 0 ? null : qVar.c(qVar.b()).getString("upack"), (r51 & 4096) != 0 ? Boolean.FALSE : Boolean.valueOf(this.B), (r51 & 8192) != 0 ? null : str5, (r51 & 16384) != 0 ? null : str6, (32768 & r51) != 0 ? null : L0(), (65536 & r51) != 0 ? null : null, (131072 & r51) != 0 ? null : null, (262144 & r51) != 0 ? null : null, (524288 & r51) != 0 ? null : null, (1048576 & r51) != 0 ? "other" : this.f46622u, (2097152 & r51) != 0 ? "" : str7, (r51 & 4194304) != 0 ? "" : str8);
    }

    private final void P0(List<? extends Object> list) {
        I0().j0(new e.c(list));
    }

    private final void Q0() {
        hi.b bVar = this.M;
        if (bVar != null) {
            bVar.cancel();
        }
        this.M = null;
    }

    private final void S0() {
        ((DialogFragmentUnlockTemplate22Binding) n()).f39123g.setOnClickListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T0() {
        BaseEpisode baseEpisode = this.f46617p;
        if (baseEpisode != null && baseEpisode.isMembersOnly()) {
            return;
        }
        ((DialogFragmentUnlockTemplate22Binding) n()).f39129m.setText(String.valueOf(AccountRepo.f43052a.g0()));
    }

    private final void U0() {
        String str;
        BaseEpisode baseEpisode = this.f46617p;
        if (baseEpisode != null && baseEpisode.isMembersOnly()) {
            return;
        }
        if (Z0()) {
            b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39131o);
            b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39132p);
            return;
        }
        b0.l(((DialogFragmentUnlockTemplate22Binding) n()).f39131o);
        b0.l(((DialogFragmentUnlockTemplate22Binding) n()).f39132p);
        BaseEpisode baseEpisode2 = this.f46617p;
        if (baseEpisode2 != null) {
            BaseTextView baseTextView = ((DialogFragmentUnlockTemplate22Binding) n()).f39132p;
            if (baseEpisode2.getPrice() > 0) {
                str = String.valueOf(baseEpisode2.getPrice());
            } else {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            baseTextView.setText(str);
            return;
        }
        new Function0() { // from class: ti.y0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit V0;
                V0 = UnlockTemplate22Dialog.V0(UnlockTemplate22Dialog.this);
                return V0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V0(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        ((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39132p.setText(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        return Unit.f60915a;
    }

    private final void W0() {
        BaseEpisode baseEpisode = this.f46617p;
        if (baseEpisode != null && baseEpisode.isMembersOnly()) {
            b0.l(((DialogFragmentUnlockTemplate22Binding) n()).f39133q);
            b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39119c);
        } else {
            b0.l(((DialogFragmentUnlockTemplate22Binding) n()).f39119c);
            b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39133q);
            U0();
            T0();
        }
        S0();
        X0();
    }

    private final void X0() {
        ((DialogFragmentUnlockTemplate22Binding) n()).f39120d.setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean Y0() {
        if (this.A && this.f46627z != null) {
            return true;
        }
        return false;
    }

    private final boolean Z0() {
        if (!Intrinsics.areEqual(this.f46622u, NativeAdPresenter.DOWNLOAD) && !Intrinsics.areEqual(this.f46622u, "1080P") && !Intrinsics.areEqual(this.f46622u, "unlock_view_entrance") && !Intrinsics.areEqual(this.f46622u, "sale_banner_entrance")) {
            return false;
        }
        return true;
    }

    private final void a1(List<UnlockEpisodeMethod> list) {
        List<SubsSku> Y = I0().Y();
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
        F0(Y, arrayList);
    }

    private final void b1(int i10, int i11) {
        if (this.C != null) {
            EventManager eventManager = EventManager.f42463a;
            String L0 = L0();
            CoinSku coinSku = this.C;
            String str = this.f46622u;
            EventManager.F0(eventManager, L0, coinSku, null, null, Integer.valueOf(i10), Integer.valueOf(i11), this.f46620s, null, str, null, 652, null);
        } else if (this.D != null) {
            EventManager eventManager2 = EventManager.f42463a;
            String L02 = L0();
            SubsSku subsSku = this.D;
            String str2 = this.f46622u;
            EventManager.G0(eventManager2, L02, subsSku, null, null, 0, Integer.valueOf(i10), Integer.valueOf(i11), this.f46620s, null, str2, null, 1308, null);
        }
    }

    private final void c1(String str) {
        EventManager.f42463a.h1(this.F, str, Integer.valueOf(K0()), this.B ? 1 : 0);
    }

    private final void d1(Integer num, int i10) {
        if (this.C != null) {
            EventManager.T0(EventManager.f42463a, L0(), this.C, null, null, null, null, null, num, Integer.valueOf(i10), 124, null);
        } else if (this.D != null) {
            EventManager.U0(EventManager.f42463a, L0(), this.D, null, null, null, null, null, null, num, Integer.valueOf(i10), 252, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel e1(final UnlockTemplate22Dialog unlockTemplate22Dialog) {
        final BillingViewModel billingViewModel = (BillingViewModel) unlockTemplate22Dialog.J0().get(BillingViewModel.class);
        billingViewModel.Q().observe(unlockTemplate22Dialog, new i(new Function1() { // from class: ti.r0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit f12;
                f12 = UnlockTemplate22Dialog.f1(UnlockTemplate22Dialog.this, billingViewModel, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return f12;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(final UnlockTemplate22Dialog unlockTemplate22Dialog, BillingViewModel billingViewModel, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            unlockTemplate22Dialog.t1();
        } else if (bVar instanceof b.m) {
            if (((DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n()).f39122f.getChildCount() == 0) {
                unlockTemplate22Dialog.P0(((b.m) bVar).a());
            }
        } else if (bVar instanceof b.u) {
            unlockTemplate22Dialog.w(R$string.common_user_canceled);
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            unlockTemplate22Dialog.N0(cVar.a(), cVar.b(), cVar.c());
        } else if (bVar instanceof b.C0654b) {
            unlockTemplate22Dialog.C1();
        } else if (bVar instanceof b.e) {
            b.e eVar = (b.e) bVar;
            unlockTemplate22Dialog.O0(eVar.a(), eVar.b(), eVar.c());
        } else if (bVar instanceof b.d) {
            unlockTemplate22Dialog.C1();
        } else if (bVar instanceof b.g) {
            unlockTemplate22Dialog.Q0();
            if (((b.g) bVar).a().hasAcknowledged() && !unlockTemplate22Dialog.f46624w) {
                unlockTemplate22Dialog.f46624w = true;
                unlockTemplate22Dialog.L1();
            }
        } else if (bVar instanceof b.i) {
            unlockTemplate22Dialog.Q0();
            unlockTemplate22Dialog.w(R$string.top_up_fragment_not_find_lost_order_tip);
        } else if (bVar instanceof b.p) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("RefreshBalanceSucceed -> needUnlock(");
            b.p pVar = (b.p) bVar;
            sb2.append(pVar.a());
            sb2.append(')');
            billingViewModel.v(sb2.toString());
            if (pVar.a()) {
                AccountRepo.f43052a.j1(unlockTemplate22Dialog.f46617p, new Function0() { // from class: ti.s0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit g12;
                        g12 = UnlockTemplate22Dialog.g1(UnlockTemplate22Dialog.this);
                        return g12;
                    }
                });
            }
        } else if (bVar instanceof b.k) {
            Context requireContext = unlockTemplate22Dialog.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.f(requireContext, ((b.k) bVar).a()).show();
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.a()) {
                unlockTemplate22Dialog.w(R$string.top_up_fragment_recharge_success);
                AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                unlockTemplate22Dialog.d1(unlockTemplate22Dialog.E, unlockTemplate22Dialog.B ? 1 : 0);
                unlockTemplate22Dialog.L1();
                unlockTemplate22Dialog.B0(aVar.b());
            } else {
                unlockTemplate22Dialog.w(R$string.payment_failure);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g1(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        unlockTemplate22Dialog.L1();
        return Unit.f60915a;
    }

    public static final /* synthetic */ DialogFragmentUnlockTemplate22Binding h0(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        return (DialogFragmentUnlockTemplate22Binding) unlockTemplate22Dialog.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PurchaseViewModel h1(final UnlockTemplate22Dialog unlockTemplate22Dialog) {
        PurchaseViewModel purchaseViewModel = (PurchaseViewModel) unlockTemplate22Dialog.J0().get(PurchaseViewModel.class);
        purchaseViewModel.R().observe(unlockTemplate22Dialog, new i(new Function1() { // from class: ti.e1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit i12;
                i12 = UnlockTemplate22Dialog.i1(UnlockTemplate22Dialog.this, (com.startshorts.androidplayer.viewmodel.purchase.b) obj);
                return i12;
            }
        }));
        return purchaseViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(UnlockTemplate22Dialog unlockTemplate22Dialog, com.startshorts.androidplayer.viewmodel.purchase.b bVar) {
        if (bVar instanceof b.g) {
            b.g gVar = (b.g) bVar;
            Integer orderStatus = gVar.a().getOrderStatus();
            Integer num = unlockTemplate22Dialog.f46625x;
            if (num != null) {
                int intValue = num.intValue();
                String str = "";
                if (intValue != 1) {
                    if (intValue == 2) {
                        if (orderStatus != null && orderStatus.intValue() == 1) {
                            unlockTemplate22Dialog.f46623v = true;
                            unlockTemplate22Dialog.w(R$string.subscription_detail_activity_subs_success);
                            unlockTemplate22Dialog.L1();
                            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                            unlockTemplate22Dialog.c1("success");
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
                            unlockTemplate22Dialog.w(R$string.payment_failure);
                            unlockTemplate22Dialog.c1("failure");
                        }
                    }
                } else if (orderStatus != null && orderStatus.intValue() == 2) {
                    unlockTemplate22Dialog.f46623v = true;
                    AccountRepo accountRepo = AccountRepo.f43052a;
                    if (accountRepo.H0()) {
                        SubsExpansionManager.x(SubsExpansionManager.f42751a, unlockTemplate22Dialog.I0().X(), false, 2, null);
                    }
                    unlockTemplate22Dialog.w(R$string.top_up_fragment_recharge_success);
                    unlockTemplate22Dialog.L1();
                    AccountRepo.c1(accountRepo, false, null, 3, null);
                    unlockTemplate22Dialog.c1("success");
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
                    unlockTemplate22Dialog.w(R$string.payment_failure);
                    unlockTemplate22Dialog.c1("failure");
                }
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel j1(final UnlockTemplate22Dialog unlockTemplate22Dialog) {
        final UnlockViewModel unlockViewModel = (UnlockViewModel) unlockTemplate22Dialog.J0().get(UnlockViewModel.class);
        unlockViewModel.o().observe(unlockTemplate22Dialog, new i(new Function1() { // from class: ti.f1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k12;
                k12 = UnlockTemplate22Dialog.k1(UnlockTemplate22Dialog.this, (ApiErrorState) obj);
                return k12;
            }
        }));
        unlockViewModel.a0().observe(unlockTemplate22Dialog, new i(new Function1() { // from class: ti.g1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit l12;
                l12 = UnlockTemplate22Dialog.l1(UnlockViewModel.this, unlockTemplate22Dialog, (com.startshorts.androidplayer.viewmodel.immersion.f) obj);
                return l12;
            }
        }));
        return unlockViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k1(UnlockTemplate22Dialog unlockTemplate22Dialog, ApiErrorState apiErrorState) {
        if (apiErrorState.getState() == 1) {
            unlockTemplate22Dialog.M();
            unlockTemplate22Dialog.F();
        } else {
            unlockTemplate22Dialog.N(apiErrorState.getMsg());
            unlockTemplate22Dialog.H();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l1(final UnlockViewModel unlockViewModel, final UnlockTemplate22Dialog unlockTemplate22Dialog, com.startshorts.androidplayer.viewmodel.immersion.f fVar) {
        if (fVar instanceof f.C0665f) {
            SubsExpansionManager.f42751a.u(true, unlockViewModel.Y(), new n() { // from class: ti.t0
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit m12;
                    m12 = UnlockTemplate22Dialog.m1(UnlockViewModel.this, unlockTemplate22Dialog, ((Integer) obj).intValue(), (SubsSku) obj2, (List) obj3);
                    return m12;
                }
            });
            if (((f.C0665f) fVar).a()) {
                unlockTemplate22Dialog.K();
            } else {
                unlockTemplate22Dialog.C0();
            }
        } else if (fVar instanceof f.b) {
            unlockTemplate22Dialog.s1(((f.b) fVar).a());
        } else if (fVar instanceof f.c) {
            unlockTemplate22Dialog.a1(((f.c) fVar).a());
            unlockTemplate22Dialog.H1();
            if (!AccountRepo.f43052a.D0()) {
                unlockTemplate22Dialog.D1();
            }
            unlockTemplate22Dialog.B1();
        } else if (fVar instanceof f.d) {
            unlockTemplate22Dialog.f46624w = false;
            unlockTemplate22Dialog.v1();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(UnlockViewModel unlockViewModel, UnlockTemplate22Dialog unlockTemplate22Dialog, int i10, SubsSku subsSku, List newSubList) {
        Intrinsics.checkNotNullParameter(newSubList, "newSubList");
        unlockViewModel.w0(newSubList);
        if (i10 > -1) {
            unlockTemplate22Dialog.f46626y = subsSku;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider n1(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        return new ViewModelProvider(unlockTemplate22Dialog);
    }

    private final void o1() {
        AccountRepo.f43052a.O(this.L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1(CoinSku coinSku) {
        this.C = coinSku;
        this.D = null;
        SkuPaymentMethod payment = coinSku.getPayment();
        if (payment != null && payment.getPayType() != null) {
            Integer payType = payment.getPayType();
            int a10 = qf.e.f65327a.a();
            if (payType == null || payType.intValue() != a10) {
                this.f46625x = 1;
                String skuId = payment.getSkuId();
                String skuProductId = coinSku.getSkuProductId();
                Integer payType2 = payment.getPayType();
                String skuModelConfigId = coinSku.getSkuModelConfigId();
                String planId = payment.getPlanId();
                String currency = payment.getCurrency();
                D0(skuId, skuProductId, 1, payType2.intValue(), payment.getCountryCode(), skuModelConfigId, planId, currency, coinSku.getEv(), coinSku.getH5JsonParam());
                return;
            }
        }
        if (coinSku.getSkuType() == 1000) {
            return;
        }
        if (coinSku instanceof ThirdPartyPaymentCoinSku) {
            ThirdPartyPaymentSkuResult result = ((ThirdPartyPaymentCoinSku) coinSku).getResult();
            if (result != null) {
                G0().W(new a.k(L0(), result, null, 4, null));
                return;
            }
            return;
        }
        G0().W(new a.e(L0(), k(), coinSku, null, false, null, null, null, 248, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1(SubsSku subsSku) {
        this.D = subsSku;
        this.C = null;
        SkuPaymentMethod payment = subsSku.getPayment();
        if (payment != null && payment.getPayType() != null) {
            Integer payType = payment.getPayType();
            int a10 = qf.e.f65327a.a();
            if (payType == null || payType.intValue() != a10) {
                this.f46625x = 2;
                String skuId = payment.getSkuId();
                Integer payType2 = payment.getPayType();
                String countryCode = payment.getCountryCode();
                E0(this, skuId, subsSku.getProductId(), 2, payType2.intValue(), countryCode, null, payment.getPlanId(), payment.getCurrency(), subsSku.getEv(), subsSku.getH5JsonParam(), 32, null);
                return;
            }
        }
        G0().W(new a.j(L0(), k(), subsSku, this.f46617p, null, 0, null, null, null, this.f46619r, this.f46620s, null, 2544, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(UnlockTemplate22Dialog unlockTemplate22Dialog, SubsSku it, boolean z10) {
        Intrinsics.checkNotNullParameter(it, "it");
        BaseUnlockEpisodeDialog.a aVar = unlockTemplate22Dialog.f46616o;
        if (aVar != null) {
            aVar.e(it, z10);
        }
        return Unit.f60915a;
    }

    private final void s1(List<zc.g> list) {
        G0().W(new a.h(list));
    }

    private final void t1() {
        I0().j0(e.h.f48763b);
    }

    private final void u1() {
        UnlockViewModel I0 = I0();
        String str = this.f46621t;
        if (str == null) {
            str = "";
        }
        I0.j0(new e.i(str, this.f46622u, 0, null, null, 28, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v1() {
        if (I0().R()) {
            q("reloadUnlockEpisodeMethods");
            I0().Q();
            FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate22Binding) n()).f39122f;
            Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
            int childCount = flexboxLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = flexboxLayout.getChildAt(i10);
                if (childAt instanceof SubDBSkuCardView) {
                    ((SubDBSkuCardView) childAt).u();
                }
                if (childAt instanceof CoinDBSkuCardView) {
                    ((CoinDBSkuCardView) childAt).s();
                }
            }
            ((DialogFragmentUnlockTemplate22Binding) n()).f39122f.removeAllViews();
            L();
            J();
        }
    }

    private final void w1(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        final SubDBSkuCardView subDBSkuCardView;
        ((DialogFragmentUnlockTemplate22Binding) n()).f39122f.removeAllViews();
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
        if (this.f46626y == null && Y0()) {
            this.f46626y = CollectionsKt.firstOrNull(arrayList);
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
            float f10 = 0.5f;
            if (dataType == selectableItem.getTYPE_COIN()) {
                Intrinsics.checkNotNull(selectableItem, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.purchase.CoinSku");
                CoinSku coinSku = (CoinSku) selectableItem;
                ViewCoinDbSkuCardBinding b10 = ViewCoinDbSkuCardBinding.b(from, ((DialogFragmentUnlockTemplate22Binding) n()).f39122f, true);
                Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                ViewGroup.LayoutParams layoutParams = b10.f41187g.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                FlexboxLayout.LayoutParams layoutParams2 = (FlexboxLayout.LayoutParams) layoutParams;
                Integer itemStyle = coinSku.getItemStyle();
                if (itemStyle != null && itemStyle.intValue() == 2) {
                    f10 = 1.0f;
                }
                layoutParams2.a(f10);
                b10.f41187g.setSku(coinSku);
                b10.f41187g.v();
                b10.f41187g.setListener(new f());
                b10.f41187g.setOnClickListener(new g(coinSku));
            } else if (dataType == selectableItem.getTYPE_SUB()) {
                Intrinsics.checkNotNull(selectableItem, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.subs.SubsSku");
                SubsSku subsSku = (SubsSku) selectableItem;
                if (subsSku.isSmallCard()) {
                    ViewSubDbSkuSmallCardBinding b11 = ViewSubDbSkuSmallCardBinding.b(from, ((DialogFragmentUnlockTemplate22Binding) n()).f39122f, true);
                    Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
                    ViewGroup.LayoutParams layoutParams3 = b11.f41392g.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                    ((FlexboxLayout.LayoutParams) layoutParams3).a(0.5f);
                    subDBSkuCardView = b11.f41392g;
                    Intrinsics.checkNotNull(subDBSkuCardView);
                } else {
                    ViewSubDbSkuBigCardBinding b12 = ViewSubDbSkuBigCardBinding.b(from, ((DialogFragmentUnlockTemplate22Binding) n()).f39122f, true);
                    Intrinsics.checkNotNullExpressionValue(b12, "inflate(...)");
                    ViewGroup.LayoutParams layoutParams4 = b12.f41382o.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams4, "null cannot be cast to non-null type com.google.android.flexbox.FlexboxLayout.LayoutParams");
                    ((FlexboxLayout.LayoutParams) layoutParams4).a(1.0f);
                    subDBSkuCardView = b12.f41382o;
                    Intrinsics.checkNotNull(subDBSkuCardView);
                }
                subDBSkuCardView.setSku(subsSku);
                subDBSkuCardView.setOnExpired(new Function0() { // from class: ti.v0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit x12;
                        x12 = UnlockTemplate22Dialog.x1(UnlockTemplate22Dialog.this);
                        return x12;
                    }
                });
                subDBSkuCardView.post(new Runnable() { // from class: ti.w0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnlockTemplate22Dialog.y1(SubDBSkuCardView.this);
                    }
                });
                subDBSkuCardView.setOnClickListener(new h(subsSku, arrayList, subDBSkuCardView));
            }
            i10 = i11;
        }
        try {
            FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate22Binding) n()).f39122f;
            Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
            int childCount = flexboxLayout.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = flexboxLayout.getChildAt(i12);
                if (((DialogFragmentUnlockTemplate22Binding) n()).f39122f.indexOfChild(childAt) == 0 && Y0() && (childAt instanceof SubDBSkuCardView)) {
                    childAt.performClick();
                } else if ((childAt instanceof SubDBSkuCardView) && !Y0() && !this.G) {
                    SubDBSkuCardView subDBSkuCardView2 = (SubDBSkuCardView) childAt;
                    SubsSku sku = subDBSkuCardView2.getSku();
                    if (!sku.isBigCard()) {
                        A0(arrayList, sku, subDBSkuCardView2.B());
                        this.G = true;
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(UnlockTemplate22Dialog unlockTemplate22Dialog) {
        unlockTemplate22Dialog.v1();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y1(SubDBSkuCardView subDBSkuCardView) {
        boolean z10;
        if (v.f51778a.b()) {
            z10 = j0.f51740a.a(subDBSkuCardView);
        } else if (!j0.f51740a.a(subDBSkuCardView)) {
            z10 = true;
        } else {
            z10 = false;
        }
        subDBSkuCardView.setOnRight(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z1(SelectableItem selectableItem) {
        tj.a aVar;
        boolean z10;
        j jVar = new j();
        if (selectableItem instanceof CoinSku) {
            tj.a aVar2 = this.f46627z;
            if (aVar2 != null) {
                aVar2.l(L0(), (CoinSku) selectableItem, M0(), null, jVar, this.f46622u);
            }
        } else if ((selectableItem instanceof SubsSku) && (aVar = this.f46627z) != null) {
            a.C0931a.a(aVar, L0(), (SubsSku) selectableItem, M0(), null, jVar, this.f46622u, null, 64, null);
        }
        tj.a aVar3 = this.f46627z;
        if (aVar3 != null) {
            z10 = aVar3.p();
        } else {
            z10 = false;
        }
        ViewGroup.LayoutParams layoutParams = null;
        final View view = null;
        if (z10) {
            tj.a aVar4 = this.f46627z;
            if (aVar4 instanceof View) {
                view = (View) aVar4;
            }
            if (view != null) {
                view.post(new Runnable() { // from class: ti.u0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UnlockTemplate22Dialog.A1(view, this);
                    }
                });
                return;
            }
            return;
        }
        ((DialogFragmentUnlockTemplate22Binding) n()).f39118b.setVisibility(8);
        Space space = ((DialogFragmentUnlockTemplate22Binding) n()).f39135s;
        ViewGroup.LayoutParams layoutParams2 = ((DialogFragmentUnlockTemplate22Binding) n()).f39135s.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = jk.g.a(20.0f);
            layoutParams = layoutParams2;
        }
        space.setLayoutParams(layoutParams);
        ((DialogFragmentUnlockTemplate22Binding) n()).f39135s.requestLayout();
    }

    public final void H1() {
        BaseEpisode baseEpisode;
        int i10;
        if (!Z0() && ((baseEpisode = this.f46617p) == null || !baseEpisode.isMembersOnly())) {
            UnlockEpisodeAdMethod T = I0().T();
            if (T != null) {
                if (T.enable() && T.getPayTemplateShowAd()) {
                    b0.l(((DialogFragmentUnlockTemplate22Binding) n()).f39120d);
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
                            BaseTextView tvWatchAdInfo = ((DialogFragmentUnlockTemplate22Binding) n()).f39134r;
                            Intrinsics.checkNotNullExpressionValue(tvWatchAdInfo, "tvWatchAdInfo");
                            xd.b.b(tvWatchAdInfo, e10, valueOf2, -1, false, 8, null);
                            return;
                        } catch (Exception e11) {
                            ((DialogFragmentUnlockTemplate22Binding) n()).f39134r.setText(e10);
                            e11.printStackTrace();
                            return;
                        }
                    }
                    return;
                }
                b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39120d);
                return;
            }
            new Function0() { // from class: ti.x0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit I1;
                    I1 = UnlockTemplate22Dialog.I1(UnlockTemplate22Dialog.this);
                    return I1;
                }
            };
            return;
        }
        b0.d(((DialogFragmentUnlockTemplate22Binding) n()).f39120d);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment
    public void J() {
        if (!I0().R()) {
            u1();
        } else {
            C0();
        }
    }

    public final void R0(@NotNull String template, @NotNull String scene, @NotNull String action, @NotNull BaseEpisode episode, @Nullable String str, @Nullable BaseUnlockEpisodeDialog.a aVar, boolean z10, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(template, "template");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f46618q = template;
        this.f46621t = scene;
        this.f46622u = action;
        this.f46617p = episode;
        this.f46616o = aVar;
        this.f46619r = str;
        this.N = z10;
        this.f46620s = str2;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_unlock_template_22;
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
        if (!this.f46623v && !Z0()) {
            UnlockEpisodeAdMethod T2 = I0().T();
            ve.h hVar = ve.h.f68906a;
            String h10 = hVar.h(T2);
            if (Intrinsics.areEqual(h10, hVar.l())) {
                hVar.p(I0().X(), new Function2() { // from class: ti.d1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Unit r12;
                        r12 = UnlockTemplate22Dialog.r1(UnlockTemplate22Dialog.this, (SubsSku) obj, ((Boolean) obj2).booleanValue());
                        return r12;
                    }
                });
            } else if (Intrinsics.areEqual(h10, hVar.i())) {
                BaseEpisode baseEpisode = this.f46617p;
                if (baseEpisode != null && baseEpisode.isIaaUserEpisode()) {
                    BaseUnlockEpisodeDialog.a aVar4 = this.f46616o;
                    if (aVar4 != null) {
                        BaseUnlockEpisodeDialog.a.C0642a.a(aVar4, ((DialogFragmentUnlockTemplate22Binding) n()).f39117a.getMAutoUnlockEpisode(), AccountRepo.f43052a.K0(), null, 4, null);
                    }
                } else if (T2 != null && (aVar3 = this.f46616o) != null) {
                    aVar3.c(((DialogFragmentUnlockTemplate22Binding) n()).f39117a.getMAutoUnlockEpisode(), AccountRepo.f43052a.K0(), T2);
                }
            } else if (Intrinsics.areEqual(h10, hVar.j())) {
                CoinSku W = I0().W();
                if (W != null && (aVar2 = this.f46616o) != null) {
                    aVar2.f(W, true);
                }
            } else if (Intrinsics.areEqual(h10, hVar.k()) && (aVar = this.f46616o) != null) {
                aVar.d();
            }
        }
        this.G = false;
        BaseUnlockEpisodeDialog.a aVar5 = this.f46616o;
        if (aVar5 != null) {
            if (this.f46623v) {
                T = null;
            } else {
                T = I0().T();
            }
            aVar5.b(T);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().a();
        G0().W(new a.C0653a(requireContext()));
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
        if (this.f46617p == null) {
            j("dismiss for invalid arguments -> mEpisode(null)");
            dismiss();
            return;
        }
        I0().j0(new e.d(this.f46617p));
        o1();
        W0();
        J();
        AccountRepo.Z0(AccountRepo.f43052a, false, null, null, 7, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return this.O;
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
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r0 = r4.f46617p
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
            r4.f46623v = r0
            boolean r1 = r4.f46624w
            if (r1 != 0) goto L3b
            r4.f46624w = r0
            r4.L1()
        L3b:
            boolean r0 = r5.containsDiscount()
            if (r0 != 0) goto L5f
            boolean r5 = r5.containsSubs()
            if (r5 != 0) goto L5f
            com.startshorts.androidplayer.repo.account.AccountRepo r5 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r5 = r5.H0()
            if (r5 == 0) goto L5f
            com.startshorts.androidplayer.manager.purchase.SubsExpansionManager r5 = com.startshorts.androidplayer.manager.purchase.SubsExpansionManager.f42751a
            com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel r0 = r4.I0()
            com.startshorts.androidplayer.bean.subs.SubsSku r0 = r0.X()
            r1 = 2
            r2 = 0
            r3 = 0
            com.startshorts.androidplayer.manager.purchase.SubsExpansionManager.x(r5, r0, r3, r1, r2)
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.purchase.v2.UnlockTemplate22Dialog.receiveAcknowledgePurchaseResult(com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult):void");
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46617p;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            dismiss();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receiveRefreshAccountEvent");
        o1();
        T0();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveTTPpmentResultEvent(@NotNull TTPResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive TTPResultEvent");
        H0().Y(new a.i(event.getOrderNo(), event.getOrderType()));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        AccountRepo.f43052a.d1(this.L);
        ((DialogFragmentUnlockTemplate22Binding) n()).f39126j.release();
        G0().w();
        H0().w();
        I0().w();
        FlexboxLayout flexboxLayout = ((DialogFragmentUnlockTemplate22Binding) n()).f39122f;
        Intrinsics.checkNotNullExpressionValue(flexboxLayout, "flexboxLayout");
        int childCount = flexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = flexboxLayout.getChildAt(i10);
            if (childAt instanceof SubDBSkuCardView) {
                ((SubDBSkuCardView) childAt).u();
            }
            if (childAt instanceof CoinDBSkuCardView) {
                ((CoinDBSkuCardView) childAt).s();
            }
        }
    }

    /* compiled from: UnlockTemplate22Dialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements a.b {
        c() {
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void a() {
            UnlockTemplate22Dialog.this.H0().Y(new a.i(null, null, 3, null));
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void onDismiss() {
        }
    }
}
