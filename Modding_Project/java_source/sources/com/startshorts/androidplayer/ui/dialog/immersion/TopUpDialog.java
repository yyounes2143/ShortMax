package com.startshorts.androidplayer.ui.dialog.immersion;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import at.n;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.TTPResultEvent;
import com.startshorts.androidplayer.bean.order.OtherOrderResult;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentCoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.DialogTopupBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.dialog.immersion.a;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.AutoUnlockEpisodeView;
import com.startshorts.androidplayer.ui.view.purchase.RechargeTipView;
import com.startshorts.androidplayer.ui.view.subs.SubsTypeView;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.a;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import fk.u;
import fk.z;
import gi.d;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tj.a;
/* compiled from: TopUpDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTopUpDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopUpDialog.kt\ncom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,875:1\n1#2:876\n1863#3,2:877\n774#3:879\n865#3,2:880\n1557#3:882\n1628#3,3:883\n774#3:886\n865#3,2:887\n1557#3:889\n1628#3,3:890\n*S KotlinDebug\n*F\n+ 1 TopUpDialog.kt\ncom/startshorts/androidplayer/ui/dialog/immersion/TopUpDialog\n*L\n382#1:877,2\n845#1:879\n845#1:880,2\n847#1:882\n847#1:883,3\n853#1:886\n853#1:887,2\n855#1:889\n855#1:890,3\n*E\n"})
/* loaded from: classes7.dex */
public final class TopUpDialog extends BottomSheetListFragment<SelectableItem, DialogTopupBinding> {
    @NotNull
    public static final a U = new a(null);
    @Nullable
    private BaseEpisode A;
    @Nullable
    private b B;
    private boolean C;
    @Nullable
    private hi.b I;
    @Nullable
    private String J;
    @Nullable
    private Integer L;
    @Nullable
    private CoinSku N;
    @Nullable
    private SubsSku O;
    @Nullable
    private Integer P;
    @Nullable
    private String Q;
    private boolean R;
    @Nullable
    private tj.a S;
    private int T;
    @NotNull
    private String D = "topup";
    @NotNull
    private final ms.i E = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider k12;
            k12 = TopUpDialog.k1(TopUpDialog.this);
            return k12;
        }
    });
    @NotNull
    private final ms.i F = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseViewModel g12;
            g12 = TopUpDialog.g1(TopUpDialog.this);
            return g12;
        }
    });
    @NotNull
    private final ms.i G = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel e12;
            e12 = TopUpDialog.e1(TopUpDialog.this);
            return e12;
        }
    });
    @NotNull
    private final TopUpDialog$mPropertyObserver$1 H = new TopUpDialog$mPropertyObserver$1(this);
    private int K = qf.e.f65327a.a();
    private boolean M = true;

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {

        /* compiled from: TopUpDialog.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class a {
            public static /* synthetic */ void a(b bVar, boolean z10, Boolean bool, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 2) != 0) {
                        bool = Boolean.TRUE;
                    }
                    bVar.a(z10, bool);
                    return;
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onDismiss");
            }
        }

        void a(boolean z10, @Nullable Boolean bool);
    }

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements BaseAdapter.b<SelectableItem> {
        c() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, SelectableItem sku, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(sku, "sku");
            TopUpDialog.this.u1(sku);
            if (!TopUpDialog.this.b1()) {
                i10 = -1;
            }
            TopUpDialog.this.F1(i10);
        }
    }

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            TopUpDialog.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45542a;

        f(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45542a = function;
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
            return this.f45542a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45542a.invoke(obj);
        }
    }

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a {
        g() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void a(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            TopUpDialog.this.L = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    TopUpDialog.this.L = 2;
                    EventManager.i0(EventManager.f42463a, 1, subsSku, TopUpDialog.this.A, aVar.p(), 0, 99, TopUpDialog.this.D, TopUpDialog.this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
                    return;
                }
                return;
            }
            EventManager.h0(EventManager.f42463a, 1, coinSku, TopUpDialog.this.A, aVar.p(), 99, TopUpDialog.this.D, TopUpDialog.this.J, null, 128, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void b(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            TopUpDialog.this.L = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    EventManager.i0(EventManager.f42463a, 4, subsSku, TopUpDialog.this.A, aVar.p(), 0, 99, TopUpDialog.this.D, TopUpDialog.this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
                    return;
                }
                return;
            }
            EventManager.h0(EventManager.f42463a, 4, coinSku, TopUpDialog.this.A, aVar.p(), 99, TopUpDialog.this.D, TopUpDialog.this.J, null, 128, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void c(int i10, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(false);
            if (i10 != 1) {
                if (i10 == 2) {
                    if (subsSku != null) {
                        TopUpDialog.this.n1(subsSku);
                    }
                    EventManager.i0(EventManager.f42463a, 3, subsSku, TopUpDialog.this.A, aVar.p(), 0, Integer.valueOf(qf.e.f65327a.a()), TopUpDialog.this.D, TopUpDialog.this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
                    return;
                }
                return;
            }
            if (coinSku != null) {
                TopUpDialog.this.m1(coinSku);
            }
            EventManager.h0(EventManager.f42463a, 3, coinSku, TopUpDialog.this.A, aVar.p(), Integer.valueOf(qf.e.f65327a.a()), TopUpDialog.this.D, TopUpDialog.this.J, null, 128, null);
        }
    }

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements d.b {
        h() {
        }

        @Override // gi.d.b
        public void a() {
            TopUpDialog.this.D1("retry_pop");
        }
    }

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements RechargeTipView.b {
        i() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.RechargeTipView.b
        public void a() {
            TopUpDialog.E1(TopUpDialog.this, null, 1, null);
        }
    }

    private final void A1(List<SubsSku> list) {
        List<SubsSku> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            SubsTypeView subsTypeView = ((DialogTopupBinding) n()).f39349q;
            subsTypeView.setVisibility(0);
            SubsTypeView.setSubsSkus$default(subsTypeView, "recharge", "top_up_dialog", 0, list, null, null, new Function2() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.i
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit B1;
                    B1 = TopUpDialog.B1(TopUpDialog.this, (SubsSku) obj, (SubsSku) obj2);
                    return B1;
                }
            }, new Function0() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit C1;
                    C1 = TopUpDialog.C1(TopUpDialog.this);
                    return C1;
                }
            }, 52, null);
            Intrinsics.checkNotNull(subsTypeView);
            return;
        }
        ((DialogTopupBinding) n()).f39349q.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B1(TopUpDialog topUpDialog, SubsSku sku, SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        topUpDialog.n1(sku);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C1(TopUpDialog topUpDialog) {
        topUpDialog.r1();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D1(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", bundle, 0L, 4, null);
        y1();
        N0().W(new a.f(str));
    }

    static /* synthetic */ void E1(TopUpDialog topUpDialog, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "topup";
        }
        topUpDialog.D1(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F1(int i10) {
        RecyclerView.Adapter<?> S = S();
        Intrinsics.checkNotNull(S, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
        ((TopUpSku7Adapter) S).T(i10);
        RecyclerView.Adapter<?> S2 = S();
        if (S2 != null) {
            S2.notifyDataSetChanged();
        }
    }

    private final void I0(OtherOrderResult otherOrderResult) {
        List<SkuPaymentMethod> productExtendList;
        String currency;
        Float payAmount;
        List<SkuPaymentMethod> productExtendList2;
        String currency2;
        Float payAmount2;
        if (otherOrderResult != null && !TextUtils.isEmpty(otherOrderResult.getOrderNo())) {
            CoinSku coinSku = this.N;
            if (coinSku != null) {
                if (coinSku != null && (productExtendList2 = coinSku.getProductExtendList()) != null) {
                    ArrayList<SkuPaymentMethod> arrayList = new ArrayList();
                    for (Object obj : productExtendList2) {
                        Integer payType = ((SkuPaymentMethod) obj).getPayType();
                        int i10 = this.K;
                        if (payType != null && payType.intValue() == i10) {
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
            SubsSku subsSku = this.O;
            if (subsSku != null && subsSku != null && (productExtendList = subsSku.getProductExtendList()) != null) {
                ArrayList<SkuPaymentMethod> arrayList3 = new ArrayList();
                for (Object obj2 : productExtendList) {
                    Integer payType2 = ((SkuPaymentMethod) obj2).getPayType();
                    int i11 = this.K;
                    if (payType2 != null && payType2.intValue() == i11) {
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

    private final void J0() {
        N0().W(new a.c("top_up_dialog"));
    }

    private final TopUpSku7Adapter K0() {
        TopUpSku7Adapter topUpSku7Adapter = new TopUpSku7Adapter();
        topUpSku7Adapter.R(M0());
        topUpSku7Adapter.B(new c());
        return topUpSku7Adapter;
    }

    private final void L0(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        s1(list, list2);
    }

    private final String M0() {
        return O0().N();
    }

    private final BillingViewModel N0() {
        return (BillingViewModel) this.G.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurchaseViewModel O0() {
        return (PurchaseViewModel) this.F.getValue();
    }

    private final ViewModelProvider P0() {
        return (ViewModelProvider) this.E.getValue();
    }

    private final String Q0() {
        return "top_up_dialog";
    }

    private final String R0() {
        return ve.h.f68906a.m();
    }

    private final void S0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        w(R$string.top_up_fragment_recharge_success);
        O0().Y(new a.d(str, str2, gPayPriceInfo, null, 8, null));
        ((DialogTopupBinding) n()).f39333a.v();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().c();
        b bVar = this.B;
        if (bVar != null) {
            bVar.a(this.C, Boolean.TRUE);
        }
        bf.e.f2616a.i().i();
        dismiss();
    }

    private final void T0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        w(R$string.subscription_detail_activity_subs_success);
        O0().Y(new a.e(str, str2, gPayPriceInfo, null, 8, null));
        ((DialogTopupBinding) n()).f39333a.v();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().c();
        b bVar = this.B;
        if (bVar != null) {
            bVar.a(this.C, Boolean.TRUE);
        }
        bf.e.f2616a.i().i();
        dismiss();
    }

    private final void U0(List<? extends Object> list) {
        O0().Y(new a.b(list));
    }

    private final void V0() {
        hi.b bVar = this.I;
        if (bVar != null) {
            bVar.cancel();
        }
        this.I = null;
    }

    private final void X0() {
        AutoUnlockEpisodeView.x(((DialogTopupBinding) n()).f39333a, "top_up_dialog", null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0() {
        ((DialogTopupBinding) n()).f39336d.setText(String.valueOf(AccountRepo.f43052a.e0()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0() {
        String valueOf = String.valueOf(AccountRepo.f43052a.g0());
        ((DialogTopupBinding) n()).f39339g.setText(valueOf);
        BaseTextView baseTextView = ((DialogTopupBinding) n()).f39339g;
        baseTextView.setContentDescription("coins : " + valueOf);
    }

    private final void a1() {
        ((DialogTopupBinding) n()).f39342j.setOnClickListener(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b1() {
        if (this.R && this.S != null) {
            return true;
        }
        return false;
    }

    private final void c1(String str) {
        EventManager.f42463a.h1(this.Q, str, Integer.valueOf(this.K), this.M ? 1 : 0);
    }

    private final void d1(Integer num, int i10) {
        CoinSku coinSku = this.N;
        if (coinSku != null) {
            EventManager.T0(EventManager.f42463a, "top_up_dialog", coinSku, null, null, null, null, null, num, Integer.valueOf(i10), 124, null);
            return;
        }
        SubsSku subsSku = this.O;
        if (subsSku != null) {
            EventManager.U0(EventManager.f42463a, "top_up_dialog", subsSku, null, null, null, null, null, null, num, Integer.valueOf(i10), 252, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel e1(final TopUpDialog topUpDialog) {
        BillingViewModel billingViewModel = (BillingViewModel) topUpDialog.P0().get(BillingViewModel.class);
        billingViewModel.Q().observe(topUpDialog, new f(new Function1() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit f12;
                f12 = TopUpDialog.f1(TopUpDialog.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return f12;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(TopUpDialog topUpDialog, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            topUpDialog.q1();
        } else if (bVar instanceof b.m) {
            topUpDialog.U0(((b.m) bVar).a());
        } else if (bVar instanceof b.u) {
            topUpDialog.w(R$string.common_user_canceled);
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            topUpDialog.S0(cVar.a(), cVar.b(), cVar.c());
        } else if (bVar instanceof b.C0654b) {
            topUpDialog.w1();
        } else if (bVar instanceof b.e) {
            b.e eVar = (b.e) bVar;
            topUpDialog.T0(eVar.a(), eVar.b(), eVar.c());
        } else if (bVar instanceof b.d) {
            topUpDialog.w1();
        } else if (bVar instanceof b.g) {
            topUpDialog.V0();
        } else if (bVar instanceof b.i) {
            topUpDialog.V0();
            topUpDialog.w(R$string.top_up_fragment_not_find_lost_order_tip);
        } else if (bVar instanceof b.k) {
            Context requireContext = topUpDialog.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.f(requireContext, ((b.k) bVar).a()).show();
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.a()) {
                topUpDialog.w(R$string.top_up_fragment_recharge_success);
                AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                topUpDialog.d1(topUpDialog.P, topUpDialog.M ? 1 : 0);
                topUpDialog.I0(aVar.b());
                b bVar2 = topUpDialog.B;
                if (bVar2 != null) {
                    bVar2.a(topUpDialog.C, Boolean.TRUE);
                }
                topUpDialog.dismiss();
            } else {
                topUpDialog.w(R$string.payment_failure);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PurchaseViewModel g1(final TopUpDialog topUpDialog) {
        final PurchaseViewModel purchaseViewModel = (PurchaseViewModel) topUpDialog.P0().get(PurchaseViewModel.class);
        purchaseViewModel.o().observe(topUpDialog, new f(new Function1() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit h12;
                h12 = TopUpDialog.h1(TopUpDialog.this, (ApiErrorState) obj);
                return h12;
            }
        }));
        purchaseViewModel.R().observe(topUpDialog, new f(new Function1() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit i12;
                i12 = TopUpDialog.i1(PurchaseViewModel.this, topUpDialog, (com.startshorts.androidplayer.viewmodel.purchase.b) obj);
                return i12;
            }
        }));
        return purchaseViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h1(TopUpDialog topUpDialog, ApiErrorState apiErrorState) {
        boolean z10;
        if (apiErrorState.getState() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        topUpDialog.f0(true, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i1(final PurchaseViewModel purchaseViewModel, final TopUpDialog topUpDialog, com.startshorts.androidplayer.viewmodel.purchase.b bVar) {
        List<SubsSku> list;
        if (bVar instanceof b.d) {
            SubsExpansionManager subsExpansionManager = SubsExpansionManager.f42751a;
            QueryNormalCoinSkuResult Q = purchaseViewModel.Q();
            if (Q != null) {
                list = Q.getSubscribeSkuResponses();
            } else {
                list = null;
            }
            subsExpansionManager.u(false, list, new n() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.h
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit j12;
                    j12 = TopUpDialog.j1(PurchaseViewModel.this, topUpDialog, ((Integer) obj).intValue(), (SubsSku) obj2, (List) obj3);
                    return j12;
                }
            });
            if (((b.d) bVar).a()) {
                topUpDialog.g0(true, null);
            } else {
                topUpDialog.J0();
            }
        } else if (bVar instanceof b.e) {
            topUpDialog.p1(((b.e) bVar).a());
        } else if (bVar instanceof b.k) {
            b.k kVar = (b.k) bVar;
            topUpDialog.L0(kVar.c(), kVar.b());
            if (!AccountRepo.f43052a.D0()) {
                topUpDialog.x1();
            }
        } else if (bVar instanceof b.g) {
            b.g gVar = (b.g) bVar;
            Integer orderStatus = gVar.a().getOrderStatus();
            Integer num = topUpDialog.L;
            if (num != null) {
                int intValue = num.intValue();
                String str = "";
                if (intValue != 1) {
                    if (intValue == 2) {
                        if (orderStatus != null && orderStatus.intValue() == 1) {
                            topUpDialog.w(R$string.subscription_detail_activity_subs_success);
                            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                            topUpDialog.c1("success");
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
                            b bVar2 = topUpDialog.B;
                            if (bVar2 != null) {
                                bVar2.a(topUpDialog.C, Boolean.TRUE);
                            }
                            topUpDialog.dismiss();
                        } else {
                            topUpDialog.w(R$string.payment_failure);
                            topUpDialog.c1("failure");
                        }
                    }
                } else if (orderStatus != null && orderStatus.intValue() == 2) {
                    topUpDialog.w(R$string.top_up_fragment_recharge_success);
                    AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                    topUpDialog.c1("success");
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
                    b bVar3 = topUpDialog.B;
                    if (bVar3 != null) {
                        bVar3.a(topUpDialog.C, Boolean.TRUE);
                    }
                    topUpDialog.dismiss();
                } else {
                    topUpDialog.w(R$string.payment_failure);
                    topUpDialog.c1("failure");
                }
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j1(PurchaseViewModel purchaseViewModel, TopUpDialog topUpDialog, int i10, SubsSku subsSku, List newSubList) {
        Intrinsics.checkNotNullParameter(newSubList, "newSubList");
        QueryNormalCoinSkuResult Q = purchaseViewModel.Q();
        if (Q != null) {
            Q.setSubscribeSkuResponses(newSubList);
        }
        if (i10 > -1) {
            topUpDialog.T = i10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider k1(TopUpDialog topUpDialog) {
        return new ViewModelProvider(topUpDialog);
    }

    private final void l1() {
        AccountRepo.f43052a.O(this.H);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m1(CoinSku coinSku) {
        this.N = coinSku;
        this.O = null;
        if (coinSku.getSkuType() == 1000) {
            return;
        }
        if (coinSku instanceof ThirdPartyPaymentCoinSku) {
            ThirdPartyPaymentSkuResult result = ((ThirdPartyPaymentCoinSku) coinSku).getResult();
            if (result != null) {
                N0().W(new a.k("recharge_page", result, null, 4, null));
                return;
            }
            return;
        }
        N0().W(new a.e(M0(), k(), coinSku, null, false, null, null, null, VideoRef.VALUE_VIDEO_REF_CATEGORY, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n1(SubsSku subsSku) {
        boolean z10;
        this.O = subsSku;
        this.N = null;
        Account a02 = AccountRepo.f43052a.a0();
        boolean z11 = false;
        if (a02 != null) {
            z10 = a02.isSubscription();
        } else {
            z10 = false;
        }
        if (a02 != null) {
            z11 = a02.isThirdSubscription();
        }
        if (z10 && z11) {
            x(u.f51776a.d(R$string.subscribed_already));
        } else {
            N0().W(new a.j("top_up_dialog", k(), subsSku, null, null, 0, null, null, null, null, null, null, 4088, null));
        }
    }

    private final void o1() {
        O0().Y(new a.g("top_up_dialog", this.J, null, 4, null));
    }

    private final void p1(List<zc.g> list) {
        N0().W(new a.h(list));
    }

    private final void q1() {
        O0().Y(a.f.f49031b);
    }

    private final void r1() {
        if (O0().M()) {
            q("reloadCoinSkuList");
            O0().K("topup");
            t1();
            L();
            J();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void s1(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        SelectableItem selectableItem;
        List list3;
        List list4;
        boolean p10 = qf.h.f65328a.p(list, list2);
        this.R = p10;
        if (!p10) {
            if (list != null) {
                list3 = CollectionsKt.g1(list);
            } else {
                list3 = null;
            }
            A1(list3);
            if (list2 != null) {
                list4 = CollectionsKt.g1(list2);
            } else {
                list4 = null;
            }
            z1(list4);
            RecyclerView.Adapter<?> S = S();
            Intrinsics.checkNotNull(S, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
            ((TopUpSku7Adapter) S).T(-1);
            b0.d(((DialogTopupBinding) n()).f39350r);
            b0.d(((DialogTopupBinding) n()).f39337e);
            tj.a aVar = this.S;
            if (aVar != null) {
                aVar.setBtnVisibility(8);
            }
            this.S = null;
            return;
        }
        if (this.S == null) {
            tj.b bVar = tj.b.f67381a;
            ViewStubProxy stubPaymentMethod = ((DialogTopupBinding) n()).f39348p;
            Intrinsics.checkNotNullExpressionValue(stubPaymentMethod, "stubPaymentMethod");
            this.S = bVar.a(stubPaymentMethod);
        }
        tj.a aVar2 = this.S;
        if (aVar2 != null) {
            aVar2.setBtnVisibility(0);
        }
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        if (list2 != null) {
            for (CoinSku coinSku : list2) {
                if (coinSku.getSkuType() != 999 && coinSku.getSkuType() != 1000) {
                    arrayList.add(coinSku);
                }
            }
        }
        A1(null);
        z1(arrayList);
        int i10 = this.T;
        if (i10 >= 0 && i10 < arrayList.size()) {
            RecyclerView.Adapter<?> S2 = S();
            Intrinsics.checkNotNull(S2, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
            ((TopUpSku7Adapter) S2).T(this.T);
            selectableItem = (SelectableItem) arrayList.get(this.T);
        } else {
            RecyclerView.Adapter<?> S3 = S();
            Intrinsics.checkNotNull(S3, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
            ((TopUpSku7Adapter) S3).T(0);
            selectableItem = (SelectableItem) CollectionsKt.firstOrNull(arrayList);
        }
        if (selectableItem != null) {
            u1(selectableItem);
        }
    }

    private final void t1() {
        X(K0());
        RecyclerView T = T();
        if (T != null) {
            T.setAdapter(S());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u1(SelectableItem selectableItem) {
        boolean z10;
        if (!b1()) {
            if (selectableItem instanceof CoinSku) {
                m1((CoinSku) selectableItem);
            } else if (selectableItem instanceof SubsSku) {
                n1((SubsSku) selectableItem);
            }
        }
        g gVar = new g();
        if (selectableItem instanceof CoinSku) {
            CoinSku coinSku = (CoinSku) selectableItem;
            EventManager.B0(EventManager.f42463a, Q0(), coinSku, this.A, null, null, null, this.D, this.J, null, 312, null);
            tj.a aVar = this.S;
            if (aVar != null) {
                aVar.l(Q0(), coinSku, R0(), null, gVar, this.J);
            }
        } else if (selectableItem instanceof SubsSku) {
            SubsSku subsSku = (SubsSku) selectableItem;
            EventManager.C0(EventManager.f42463a, Q0(), subsSku, this.A, null, 0, null, null, this.D, this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_OPENED_TIME, null);
            tj.a aVar2 = this.S;
            if (aVar2 != null) {
                a.C0931a.a(aVar2, Q0(), subsSku, R0(), null, gVar, this.J, null, 64, null);
            }
        }
        tj.a aVar3 = this.S;
        if (aVar3 != null) {
            z10 = aVar3.p();
        } else {
            z10 = false;
        }
        ViewGroup.LayoutParams layoutParams = null;
        final View view = null;
        if (z10) {
            tj.a aVar4 = this.S;
            if (aVar4 instanceof View) {
                view = (View) aVar4;
            }
            if (view != null) {
                view.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        TopUpDialog.v1(view, this);
                    }
                });
                return;
            }
            return;
        }
        ((DialogTopupBinding) n()).f39337e.setVisibility(8);
        Space space = ((DialogTopupBinding) n()).f39350r;
        ViewGroup.LayoutParams layoutParams2 = ((DialogTopupBinding) n()).f39350r.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = jk.g.a(20.0f);
            layoutParams = layoutParams2;
        }
        space.setLayoutParams(layoutParams);
        ((DialogTopupBinding) n()).f39350r.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v1(View view, TopUpDialog topUpDialog) {
        int measuredHeight = view.getMeasuredHeight();
        int a10 = jk.g.a(20.0f) + measuredHeight;
        int a11 = measuredHeight + jk.g.a(15.0f);
        Space space = ((DialogTopupBinding) topUpDialog.n()).f39350r;
        ViewGroup.LayoutParams layoutParams = ((DialogTopupBinding) topUpDialog.n()).f39350r.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = null;
        if (layoutParams != null) {
            layoutParams.height = a10;
        } else {
            layoutParams = null;
        }
        space.setLayoutParams(layoutParams);
        View view2 = ((DialogTopupBinding) topUpDialog.n()).f39337e;
        ViewGroup.LayoutParams layoutParams3 = ((DialogTopupBinding) topUpDialog.n()).f39337e.getLayoutParams();
        if (layoutParams3 != null) {
            layoutParams3.height = a11;
            layoutParams2 = layoutParams3;
        }
        view2.setLayoutParams(layoutParams2);
        ((DialogTopupBinding) topUpDialog.n()).f39350r.requestLayout();
        ((DialogTopupBinding) topUpDialog.n()).f39337e.requestLayout();
    }

    private final void w1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        gi.d dVar = new gi.d(requireContext);
        dVar.x(new h());
        dVar.show();
    }

    private final void x1() {
        ((DialogTopupBinding) n()).f39343k.setMListener(new i());
        if (ABTestFactory.f42224a.K0().isEnable().invoke().booleanValue()) {
            ((DialogTopupBinding) n()).f39343k.B();
        }
        ((DialogTopupBinding) n()).f39343k.z();
        ((DialogTopupBinding) n()).f39343k.setVisibility(0);
    }

    private final void y1() {
        V0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        hi.b bVar = new hi.b(requireContext);
        bVar.setCancelable(false);
        bVar.show();
        this.I = bVar;
    }

    private final void z1(List<SelectableItem> list) {
        g0(true, list);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment
    public void J() {
        if (!O0().M()) {
            o1();
        } else {
            J0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment
    public void V() {
        Y(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.dialog.immersion.TopUpDialog$initRecyclerView$1
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                int r10;
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                if (parent.getChildLayoutPosition(view) == 0) {
                    r10 = 0;
                } else {
                    r10 = z.f51786a.r();
                }
                outRect.top = r10;
            }
        });
        X(K0());
        super.V();
    }

    public final void W0(@Nullable String str, @NotNull BaseEpisode episode, @NotNull b listener) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (str == null) {
            str = "topup";
        }
        this.D = str;
        this.A = episode;
        this.B = listener;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_topup;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        b bVar = this.B;
        if (bVar != null) {
            b.a.a(bVar, this.C, null, 2, null);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ud.a aVar = ud.a.f68411a;
        if (aVar.O()) {
            aVar.p0(false);
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new com.startshorts.androidplayer.ui.dialog.immersion.a(requireContext, new e()).show();
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
        if (this.A != null && this.B != null) {
            if (AccountRepo.f43052a.D0()) {
                ((DialogTopupBinding) n()).f39334b.setVisibility(8);
                ((DialogTopupBinding) n()).f39339g.setVisibility(8);
                ((DialogTopupBinding) n()).f39338f.setVisibility(8);
                ((DialogTopupBinding) n()).f39340h.setVisibility(8);
                ((DialogTopupBinding) n()).f39336d.setVisibility(8);
                ((DialogTopupBinding) n()).f39335c.setVisibility(8);
            } else {
                l1();
                Z0();
                Y0();
                a1();
                X0();
            }
            J();
            return;
        }
        j("dismiss for invalid arguments -> mEpisode is null or mListener is null");
        dismiss();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "TopUpDialog";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveTTPpmentResultEvent(@NotNull TTPResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive TTPResultEvent");
        O0().Y(new a.i(event.getOrderNo(), event.getOrderType()));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetListFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetRVFragment, com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        AccountRepo.f43052a.d1(this.H);
        ((DialogTopupBinding) n()).f39343k.release();
    }

    /* compiled from: TopUpDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements a.b {
        e() {
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void a() {
            TopUpDialog.this.O0().Y(new a.i(null, null, 3, null));
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void onDismiss() {
        }
    }
}
