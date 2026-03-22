package com.startshorts.androidplayer.ui.fragment.purchase.v2;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.startshorts.androidplayer.R$anim;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.databinding.DialogFragmentSkuExpansionBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.SkuExpansionDialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.a;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import fk.z;
import java.util.List;
import jk.b0;
import jk.h;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.f;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.g;
/* compiled from: SkuExpansionDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSkuExpansionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkuExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,369:1\n1#2:370\n*E\n"})
/* loaded from: classes7.dex */
public final class SkuExpansionDialog extends BaseDialogFragment<DialogFragmentSkuExpansionBinding> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f46536q = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private BaseEpisode f46537i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final i f46538j = kotlin.c.b(new Function0() { // from class: ti.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider n02;
            n02 = SkuExpansionDialog.n0(SkuExpansionDialog.this);
            return n02;
        }
    });
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final i f46539k = kotlin.c.b(new Function0() { // from class: ti.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel l02;
            l02 = SkuExpansionDialog.l0(SkuExpansionDialog.this);
            return l02;
        }
    });
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final i f46540l = kotlin.c.b(new Function0() { // from class: ti.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseViewModel j02;
            j02 = SkuExpansionDialog.j0(SkuExpansionDialog.this);
            return j02;
        }
    });
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f46541m = kotlin.c.b(new Function0() { // from class: ti.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel h02;
            h02 = SkuExpansionDialog.h0(SkuExpansionDialog.this);
            return h02;
        }
    });
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private r f46542n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private r f46543o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private CoinSku f46544p;

    /* compiled from: SkuExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SkuExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SkuExpansionDialog.this.dismiss();
        }
    }

    /* compiled from: SkuExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ CoinSku f46547f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CoinSku coinSku) {
            super(0L, 1, null);
            this.f46547f = coinSku;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SkuExpansionDialog.this.W().W(new a.e(SkuExpansionDialog.this.Y().N(), SkuExpansionDialog.this.h(), this.f46547f, SkuExpansionDialog.this.X(), false, null, null, null, 240, null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SkuExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46548a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46548a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f46548a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46548a.invoke(obj);
        }
    }

    private final void T() {
        r rVar = this.f46542n;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            q("cancelBonusValueAnimJob");
        }
        this.f46542n = null;
    }

    private final void U() {
        r rVar = this.f46543o;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
            Unit unit = Unit.f60915a;
            Logger.f41511a.h("SkuExpansionDialog", "cancelCountDownJob");
        }
        this.f46543o = null;
    }

    private final void V() {
        W().W(new a.c("expansion"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel W() {
        return (BillingViewModel) this.f46541m.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurchaseViewModel Y() {
        return (PurchaseViewModel) this.f46540l.getValue();
    }

    private final UnlockViewModel Z() {
        return (UnlockViewModel) this.f46539k.getValue();
    }

    private final ViewModelProvider a0() {
        return (ViewModelProvider) this.f46538j.getValue();
    }

    private final void b0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        BaseDialogFragment.A(this, R$string.top_up_fragment_recharge_success, 0, 2, null);
        E(0.0f);
        Y().Y(new a.d(str, str2, gPayPriceInfo, this.f46537i));
        z0();
        m().f39011a.w();
        com.startshorts.androidplayer.manager.configure.ad.c.f42340a.i().c();
    }

    private final void c0(List<? extends Object> list) {
        Y().Y(new a.b(list));
    }

    private final void d0() {
        m().f39015e.setOnClickListener(new b());
    }

    private final void e0(CoinSku coinSku) {
        BaseTextView baseTextView = m().f39022l;
        baseTextView.setText(coinSku.getPriceText());
        baseTextView.setOnClickListener(new c(coinSku));
    }

    private final void f0(CoinSku coinSku) {
        this.f46544p = coinSku;
        if (!coinSku.isSubscriptValid()) {
            b0.d(m().f39021k);
        } else {
            m().f39021k.setText(coinSku.getSubscript());
            b0.l(m().f39021k);
        }
        m().f39016f.setText(getString(R$string.common_coins, String.valueOf(coinSku.getCoins())));
        Integer productGiveCoins = coinSku.getProductGiveCoins();
        if (productGiveCoins != null) {
            int intValue = productGiveCoins.intValue();
            if (intValue <= 0) {
                b0.d(m().f39013c);
                b0.d(m().f39012b);
            } else {
                b0.l(m().f39013c);
                b0.l(m().f39012b);
                m().f39013c.setText(String.valueOf(intValue));
                m().f39012b.setText(coinSku.getGiveCoinsUnit());
            }
        } else {
            new Function0() { // from class: ti.n
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit g02;
                    g02 = SkuExpansionDialog.g0(SkuExpansionDialog.this);
                    return g02;
                }
            };
        }
        e0(coinSku);
        EventManager eventManager = EventManager.f42463a;
        BaseEpisode baseEpisode = this.f46537i;
        ud.a aVar = ud.a.f68411a;
        EventManager.O0(eventManager, "pay_retain", coinSku, baseEpisode, aVar.p(), null, null, null, 112, null);
        eventManager.c1("SkuExpansionDialog", this.f46544p, this.f46537i, aVar.p(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(SkuExpansionDialog skuExpansionDialog) {
        b0.d(skuExpansionDialog.m().f39013c);
        b0.d(skuExpansionDialog.m().f39012b);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel h0(final SkuExpansionDialog skuExpansionDialog) {
        BillingViewModel billingViewModel = (BillingViewModel) skuExpansionDialog.a0().get(BillingViewModel.class);
        billingViewModel.Q().observe(skuExpansionDialog, new d(new Function1() { // from class: ti.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit i02;
                i02 = SkuExpansionDialog.i0(SkuExpansionDialog.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return i02;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i0(SkuExpansionDialog skuExpansionDialog, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            skuExpansionDialog.q0();
        } else if (bVar instanceof b.m) {
            skuExpansionDialog.c0(((b.m) bVar).a());
        } else if (bVar instanceof b.u) {
            BaseDialogFragment.A(skuExpansionDialog, R$string.common_user_canceled, 0, 2, null);
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            skuExpansionDialog.b0(cVar.a(), cVar.b(), cVar.c());
        } else if (bVar instanceof b.k) {
            Context requireContext = skuExpansionDialog.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.f(requireContext, ((b.k) bVar).a()).show();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PurchaseViewModel j0(final SkuExpansionDialog skuExpansionDialog) {
        PurchaseViewModel purchaseViewModel = (PurchaseViewModel) skuExpansionDialog.a0().get(PurchaseViewModel.class);
        purchaseViewModel.R().observe(skuExpansionDialog, new d(new Function1() { // from class: ti.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k02;
                k02 = SkuExpansionDialog.k0(SkuExpansionDialog.this, (com.startshorts.androidplayer.viewmodel.purchase.b) obj);
                return k02;
            }
        }));
        return purchaseViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(SkuExpansionDialog skuExpansionDialog, com.startshorts.androidplayer.viewmodel.purchase.b bVar) {
        CoinSku a10;
        if (bVar instanceof b.C0676b) {
            b.C0676b c0676b = (b.C0676b) bVar;
            if (c0676b.a() == null) {
                skuExpansionDialog.dismiss();
            } else {
                skuExpansionDialog.f0(c0676b.a());
                skuExpansionDialog.s0(c0676b.a());
                skuExpansionDialog.v0(c0676b.a());
                skuExpansionDialog.V();
            }
        } else if (bVar instanceof b.e) {
            skuExpansionDialog.p0(((b.e) bVar).a());
        } else if ((bVar instanceof b.i) && (a10 = ((b.i) bVar).a()) != null) {
            skuExpansionDialog.e0(a10);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel l0(final SkuExpansionDialog skuExpansionDialog) {
        UnlockViewModel unlockViewModel = (UnlockViewModel) skuExpansionDialog.a0().get(UnlockViewModel.class);
        unlockViewModel.a0().observe(skuExpansionDialog, new d(new Function1() { // from class: ti.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit m02;
                m02 = SkuExpansionDialog.m0(SkuExpansionDialog.this, (com.startshorts.androidplayer.viewmodel.immersion.f) obj);
                return m02;
            }
        }));
        return unlockViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m0(SkuExpansionDialog skuExpansionDialog, com.startshorts.androidplayer.viewmodel.immersion.f fVar) {
        if (fVar instanceof f.d) {
            skuExpansionDialog.E(1.0f);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider n0(SkuExpansionDialog skuExpansionDialog) {
        return new ViewModelProvider(skuExpansionDialog);
    }

    private final void o0() {
        Y().Y(new a.g("expansion", null, this.f46537i, 2, null));
    }

    private final void p0(List<g> list) {
        W().W(new a.h(list));
    }

    private final void q0() {
        Y().Y(a.f.f49031b);
    }

    @SuppressLint({"SetTextI18n"})
    private final void s0(final CoinSku coinSku) {
        T();
        q("startBonusValueAnimJob -> 1000ms");
        this.f46542n = CoroutineUtil.f48072a.e(1000L, 166L, new Function1() { // from class: ti.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit t02;
                t02 = SkuExpansionDialog.t0(SkuExpansionDialog.this, coinSku, ((Long) obj).longValue());
                return t02;
            }
        }, new Function0() { // from class: ti.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit u02;
                u02 = SkuExpansionDialog.u0(SkuExpansionDialog.this, coinSku);
                return u02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t0(SkuExpansionDialog skuExpansionDialog, CoinSku coinSku, long j10) {
        int i10;
        int i11;
        float f10 = (((float) (1000 - j10)) * 1.0f) / ((float) 1000);
        BaseTextView baseTextView = skuExpansionDialog.m().f39013c;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        Integer productGiveCoins = coinSku.getProductGiveCoins();
        int i12 = 0;
        if (productGiveCoins != null) {
            i10 = productGiveCoins.intValue();
        } else {
            i10 = 0;
        }
        float f11 = i10;
        Integer keepGiveCoins = coinSku.getKeepGiveCoins();
        if (keepGiveCoins != null) {
            i11 = keepGiveCoins.intValue();
        } else {
            i11 = 0;
        }
        Integer productGiveCoins2 = coinSku.getProductGiveCoins();
        if (productGiveCoins2 != null) {
            i12 = productGiveCoins2.intValue();
        }
        sb2.append(h.b(f11 + ((i11 - i12) * f10)));
        baseTextView.setText(v.a(sb2.toString()));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(SkuExpansionDialog skuExpansionDialog, CoinSku coinSku) {
        int i10;
        BaseTextView baseTextView = skuExpansionDialog.m().f39013c;
        StringBuilder sb2 = new StringBuilder();
        sb2.append('+');
        Integer keepGiveCoins = coinSku.getKeepGiveCoins();
        if (keepGiveCoins != null) {
            i10 = keepGiveCoins.intValue();
        } else {
            i10 = 0;
        }
        sb2.append(i10);
        baseTextView.setText(v.a(sb2.toString()));
        skuExpansionDialog.y0();
        return Unit.f60915a;
    }

    private final void v0(CoinSku coinSku) {
        U();
        long retentionSeconds = coinSku.getRetentionSeconds();
        Logger logger = Logger.f41511a;
        logger.h("SkuExpansionDialog", "startCountDownJob -> " + retentionSeconds + 's');
        if (retentionSeconds <= 0) {
            b0.e(m().f39020j);
            return;
        }
        b0.l(m().f39020j);
        this.f46543o = CoroutineUtil.f48072a.d((int) retentionSeconds, new Function1() { // from class: ti.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit w02;
                w02 = SkuExpansionDialog.w0(SkuExpansionDialog.this, ((Integer) obj).intValue());
                return w02;
            }
        }, new Function0() { // from class: ti.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit x02;
                x02 = SkuExpansionDialog.x0(SkuExpansionDialog.this);
                return x02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(SkuExpansionDialog skuExpansionDialog, int i10) {
        skuExpansionDialog.m().f39017g.setText(skuExpansionDialog.getString(R$string.sku_expansion_dialog_fragment_count_down, TimeUtil.f48175a.c(i10, true)));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(SkuExpansionDialog skuExpansionDialog) {
        skuExpansionDialog.dismiss();
        return Unit.f60915a;
    }

    private final void y0() {
        m().f39022l.startAnimation(AnimationUtils.loadAnimation(requireContext(), R$anim.anim_expansion_purchase_button));
    }

    private final void z0() {
        Z().j0(new e.m(getContext(), m().f39011a.getMAutoUnlockEpisode(), true, null, 8, null));
    }

    @Nullable
    public final BaseEpisode X() {
        return this.f46537i;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        EventManager.b1(EventManager.f42463a, "SkuExpansionDialog", this.f46544p, this.f46537i, ud.a.f68411a.p(), false, null, 32, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_sku_expansion;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "SkuExpansionDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46537i == null) {
            g("mEpisode is null, dismiss now");
            dismiss();
            return;
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        Z().j0(new e.d(this.f46537i));
        d0();
        o0();
        m().f39011a.x("pay_retain", Integer.valueOf(R$color.color_auto_unlock_episode_in_sku_expansion_dialog_text));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        int G;
        int p10;
        if (fk.v.f51778a.b()) {
            G = DeviceUtil.f48146a.G();
            p10 = z.f51786a.p();
        } else {
            G = DeviceUtil.f48146a.G();
            p10 = z.f51786a.p() * 2;
        }
        return G - p10;
    }

    public final void r0(@Nullable BaseEpisode baseEpisode) {
        this.f46537i = baseEpisode;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        q("receive AcknowledgePurchaseResult -> " + result);
        if (PurchaseRepo.f43366a.k() == null) {
            z0();
        }
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ") episodeId(" + event.getFirstUnlockedEpisodeId() + ')');
        BaseEpisode baseEpisode = this.f46537i;
        if (baseEpisode != null && baseEpisode.getId() == event.getFirstUnlockedEpisodeId()) {
            dismiss();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public void t() {
        super.t();
        T();
        U();
    }
}
