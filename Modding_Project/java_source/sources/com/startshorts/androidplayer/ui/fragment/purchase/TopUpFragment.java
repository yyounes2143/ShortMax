package com.startshorts.androidplayer.ui.fragment.purchase;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.hades.aar.pagestate.StateViewGroup;
import com.shorttv.aar.billing.core.SubscriptionUpdateMode;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.TTPResultEvent;
import com.startshorts.androidplayer.bean.order.OtherOrderResult;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentCoinSku;
import com.startshorts.androidplayer.bean.purchase.ThirdPartyPaymentSkuResult;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.databinding.FragmentTopUpBinding;
import com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.dialog.immersion.a;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.subs.SubsTypeView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel;
import com.startshorts.androidplayer.viewmodel.purchase.a;
import com.startshorts.androidplayer.viewmodel.purchase.b;
import gi.d;
import gi.e;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
/* compiled from: TopUpFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTopUpFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,987:1\n1#2:988\n1863#3,2:989\n774#3:1045\n865#3,2:1046\n1557#3:1048\n1628#3,3:1049\n774#3:1052\n865#3,2:1053\n1557#3:1055\n1628#3,3:1056\n15#4,9:991\n15#4,9:1000\n15#4,9:1009\n15#4,9:1018\n15#4,9:1027\n15#4,9:1036\n*S KotlinDebug\n*F\n+ 1 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n353#1:989,2\n948#1:1045\n948#1:1046,2\n950#1:1048\n950#1:1049,3\n956#1:1052\n956#1:1053,2\n958#1:1055\n958#1:1056,3\n395#1:991,9\n474#1:1000,9\n526#1:1009,9\n788#1:1018,9\n799#1:1027,9\n842#1:1036,9\n*E\n"})
/* loaded from: classes7.dex */
public final class TopUpFragment extends ToolbarListFragment<SelectableItem, FragmentTopUpBinding> {
    @NotNull
    public static final a W = new a(null);
    private boolean D;
    @Nullable
    private hi.b G;
    private long H;
    private long I;
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
    @Nullable
    private SubsSku R;
    @Nullable
    private tj.a S;
    private boolean T;
    private int U;
    @Nullable
    private String V;
    @NotNull
    private final ms.i B = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider Q1;
            Q1 = TopUpFragment.Q1(TopUpFragment.this);
            return Q1;
        }
    });
    @NotNull
    private final ms.i C = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.y
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PurchaseViewModel M1;
            M1 = TopUpFragment.M1(TopUpFragment.this);
            return M1;
        }
    });
    @NotNull
    private final ms.i E = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.z
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel K1;
            K1 = TopUpFragment.K1(TopUpFragment.this);
            return K1;
        }
    });
    @NotNull
    private final TopUpFragment$mPropertyObserver$1 F = new TopUpFragment$mPropertyObserver$1(this);
    private int K = qf.e.f65327a.a();
    private boolean M = true;

    /* compiled from: TopUpFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n527#2,18:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements Function0<Unit> {
        public b() {
        }

        public final void a() {
            if (!AccountRepo.f43052a.J0()) {
                String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
                ud.b bVar = ud.b.f68412a;
                if (bVar.I1(f10)) {
                    bVar.V4(f10, false);
                    Context requireContext = TopUpFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    ii.i iVar = new ii.i(requireContext);
                    iVar.y("topup");
                    iVar.show();
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("scene", "topup");
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "login_windows_show", bundle, 0L, 4, null);
                    EventManager.s0(eventManager, "login_guide_show", null, 0L, 6, null);
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: TopUpFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements BaseAdapter.b<SelectableItem> {
        d() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, SelectableItem sku, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(sku, "sku");
            TopUpFragment.this.a2(sku);
            if (!TopUpFragment.this.H1()) {
                i10 = -1;
            }
            TopUpFragment.this.n2(i10);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n800#2,9:21\n835#2,4:30\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class e implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b.f f46482b;

        public e(b.f fVar) {
            this.f46482b = fVar;
        }

        public final void a() {
            Context requireContext = TopUpFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            SubsUpdateMode c10 = this.f46482b.c();
            if (c10.getSubscriptionReplacementMode() == SubscriptionUpdateMode.NULL) {
                TopUpFragment.this.s1().W(new a.j(TopUpFragment.this.r1(), TopUpFragment.this.j(), this.f46482b.a(), null, null, 0, null, null, null, TopUpFragment.this.V, null, null, 3576, null));
                return;
            }
            SubsSku b10 = this.f46482b.b();
            if (b10 != null) {
                new gi.e(requireContext, b10, this.f46482b.a(), this.f46482b.c(), new g(c10, TopUpFragment.this, this.f46482b)).show();
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: TopUpFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements e.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SubsUpdateMode f46483a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TopUpFragment f46484b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b.f f46485c;

        g(SubsUpdateMode subsUpdateMode, TopUpFragment topUpFragment, b.f fVar) {
            this.f46483a = subsUpdateMode;
            this.f46484b = topUpFragment;
            this.f46485c = fVar;
        }

        @Override // gi.e.b
        public void a() {
            if (TextUtils.isEmpty(this.f46483a.getOldToken())) {
                fk.u.j(fk.u.f51776a, R$string.billing_unavailable_tip_dialog_content, 0, 2, null);
                return;
            }
            String oldToken = this.f46483a.getOldToken();
            if (oldToken == null) {
                oldToken = "";
            }
            this.f46484b.s1().W(new a.j(this.f46484b.r1(), this.f46484b.j(), this.f46485c.a(), null, this.f46483a.getObfuscatedExternalAccountId(), this.f46483a.getChangeMode(), new zc.k(oldToken, this.f46483a.getSubscriptionReplacementMode()), this.f46483a.getOldToken(), this.f46485c.b(), this.f46484b.V, null, null, 3072, null));
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n789#2,7:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class h implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SubsSku f46487b;

        public h(SubsSku subsSku) {
            this.f46487b = subsSku;
        }

        public final void a() {
            if (TopUpFragment.this.D) {
                TopUpFragment.this.t1().Y(new a.h(TopUpFragment.this.requireContext(), this.f46487b, TopUpFragment.this.R));
                return;
            }
            Context requireContext = TopUpFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.a(requireContext).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n396#2,9:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class j implements Function0<Unit> {
        public j() {
        }

        public final void a() {
            Context requireContext = TopUpFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new com.startshorts.androidplayer.ui.dialog.immersion.a(requireContext, new l()).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: TopUpFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l implements a.b {
        l() {
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void a() {
            TopUpFragment.this.t1().Y(new a.i(null, null, 3, null));
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void onDismiss() {
            a.b.C0634a.a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TopUpFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46490a;

        m(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46490a = function;
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
            return this.f46490a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46490a.invoke(obj);
        }
    }

    /* compiled from: TopUpFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class n implements com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a {
        n() {
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void a(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            TopUpFragment.this.L = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    EventManager.i0(EventManager.f42463a, 1, subsSku, null, aVar.p(), 0, 99, TopUpFragment.this.r1(), TopUpFragment.this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
                    return;
                }
                return;
            }
            EventManager.h0(EventManager.f42463a, 1, coinSku, null, aVar.p(), 99, TopUpFragment.this.r1(), TopUpFragment.this.J, null, 128, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void b(int i10, CoinSku coinSku, SubsSku subsSku) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(true);
            TopUpFragment.this.L = Integer.valueOf(i10);
            if (i10 != 1) {
                if (i10 == 2) {
                    EventManager.i0(EventManager.f42463a, 4, subsSku, null, aVar.p(), 0, 99, TopUpFragment.this.r1(), TopUpFragment.this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
                    return;
                }
                return;
            }
            EventManager.h0(EventManager.f42463a, 4, coinSku, null, aVar.p(), 99, TopUpFragment.this.r1(), TopUpFragment.this.J, null, 128, null);
        }

        @Override // com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a
        public void c(int i10, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            ud.a aVar = ud.a.f68411a;
            aVar.p0(false);
            if (i10 != 1) {
                if (i10 == 2) {
                    if (subsSku != null) {
                        TopUpFragment.this.T1(subsSku);
                    }
                    EventManager.i0(EventManager.f42463a, 3, subsSku, null, aVar.p(), 0, Integer.valueOf(qf.e.f65327a.a()), TopUpFragment.this.r1(), TopUpFragment.this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, null);
                    return;
                }
                return;
            }
            if (coinSku != null) {
                TopUpFragment.this.S1(coinSku);
            }
            EventManager.h0(EventManager.f42463a, 3, coinSku, null, aVar.p(), Integer.valueOf(qf.e.f65327a.a()), TopUpFragment.this.r1(), TopUpFragment.this.J, null, 128, null);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n843#2,9:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class o implements Function0<Unit> {
        public o() {
        }

        public final void a() {
            Context requireContext = TopUpFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            gi.d dVar = new gi.d(requireContext);
            dVar.x(new q());
            dVar.show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: TopUpFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class q implements d.b {
        q() {
        }

        @Override // gi.d.b
        public void a() {
            TopUpFragment.this.l2("retry_pop");
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 TopUpFragment.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment\n*L\n1#1,20:1\n475#2,5:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class r implements Function0<Unit> {
        public r() {
        }

        public final void a() {
            TopUpFragment topUpFragment = TopUpFragment.this;
            Context requireContext = TopUpFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            hi.b bVar = new hi.b(requireContext);
            bVar.setCancelable(false);
            bVar.show();
            topUpFragment.G = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    private final void A1(b.f fVar) {
        FragmentExtKt.b(this, new e(fVar), new f());
    }

    private final void B1() {
        hi.b bVar = this.G;
        if (bVar != null) {
            bVar.cancel();
        }
        this.G = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1() {
        ((FragmentTopUpBinding) A()).f39677b.setText(String.valueOf(AccountRepo.f43052a.e0()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D1() {
        String valueOf = String.valueOf(AccountRepo.f43052a.g0());
        ((FragmentTopUpBinding) A()).f39681f.setText(valueOf);
        BaseTextView baseTextView = ((FragmentTopUpBinding) A()).f39681f;
        baseTextView.setContentDescription("coins : " + valueOf);
    }

    private final void E1() {
        F0(R$string.top_up_fragment_restore, new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TopUpFragment.F1(TopUpFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F1(TopUpFragment topUpFragment, View view) {
        long L = DeviceUtil.f48146a.L();
        if (L - topUpFragment.H >= 5000) {
            topUpFragment.H = L;
            m2(topUpFragment, null, 1, null);
        } else if (L - topUpFragment.I >= 1000) {
            topUpFragment.I = L;
            topUpFragment.w(R$string.common_duplicate_op_tip);
        }
    }

    private final boolean G1() {
        ViewStubProxy descViewstub = ((FragmentTopUpBinding) A()).f39682g;
        Intrinsics.checkNotNullExpressionValue(descViewstub, "descViewstub");
        return jk.e0.f(descViewstub);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean H1() {
        if (this.T && this.S != null) {
            return true;
        }
        return false;
    }

    private final void I1(String str) {
        EventManager.f42463a.h1(this.Q, str, Integer.valueOf(this.K), this.M ? 1 : 0);
    }

    private final void J1(Integer num, int i10) {
        CoinSku coinSku = this.N;
        if (coinSku != null) {
            EventManager.T0(EventManager.f42463a, "recharge_page", coinSku, null, null, null, null, null, num, Integer.valueOf(i10), 124, null);
            return;
        }
        SubsSku subsSku = this.O;
        if (subsSku != null) {
            EventManager.U0(EventManager.f42463a, "recharge_page", subsSku, null, null, null, null, null, null, num, Integer.valueOf(i10), 252, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel K1(final TopUpFragment topUpFragment) {
        BillingViewModel billingViewModel = (BillingViewModel) topUpFragment.u1().get(BillingViewModel.class);
        billingViewModel.Q().observe(topUpFragment, new m(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit L1;
                L1 = TopUpFragment.L1(TopUpFragment.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return L1;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L1(TopUpFragment topUpFragment, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            topUpFragment.E1();
            topUpFragment.W1();
        } else {
            boolean z10 = false;
            if (bVar instanceof b.m) {
                b.m mVar = (b.m) bVar;
                List<Object> a10 = mVar.a();
                if (a10 == null || a10.isEmpty()) {
                    z10 = true;
                }
                topUpFragment.D = !z10;
                if (topUpFragment.j0()) {
                    topUpFragment.z1(mVar.a());
                }
            } else if (bVar instanceof b.u) {
                topUpFragment.w(R$string.common_user_canceled);
            } else if (bVar instanceof b.c) {
                b.c cVar = (b.c) bVar;
                topUpFragment.x1(cVar.a(), cVar.b(), cVar.c());
            } else if (bVar instanceof b.C0654b) {
                topUpFragment.d2();
            } else if (bVar instanceof b.e) {
                b.e eVar = (b.e) bVar;
                topUpFragment.y1(eVar.a(), eVar.b(), eVar.c());
            } else if (bVar instanceof b.d) {
                topUpFragment.d2();
            } else if (bVar instanceof b.g) {
                topUpFragment.B1();
            } else if (bVar instanceof b.i) {
                topUpFragment.B1();
                topUpFragment.w(R$string.top_up_fragment_not_find_lost_order_tip);
            } else if (bVar instanceof b.k) {
                Context requireContext = topUpFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                new gi.f(requireContext, ((b.k) bVar).a()).show();
            } else if (bVar instanceof b.a) {
                b.a aVar = (b.a) bVar;
                if (aVar.a()) {
                    topUpFragment.w(R$string.top_up_fragment_recharge_success);
                    topUpFragment.X1();
                    AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                    topUpFragment.J1(topUpFragment.P, topUpFragment.M ? 1 : 0);
                    topUpFragment.k1(aVar.b());
                } else {
                    topUpFragment.w(R$string.payment_failure);
                }
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PurchaseViewModel M1(final TopUpFragment topUpFragment) {
        final PurchaseViewModel purchaseViewModel = (PurchaseViewModel) topUpFragment.u1().get(PurchaseViewModel.class);
        purchaseViewModel.o().observe(topUpFragment, new m(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit N1;
                N1 = TopUpFragment.N1(TopUpFragment.this, (ApiErrorState) obj);
                return N1;
            }
        }));
        purchaseViewModel.R().observe(topUpFragment, new m(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit O1;
                O1 = TopUpFragment.O1(PurchaseViewModel.this, topUpFragment, (com.startshorts.androidplayer.viewmodel.purchase.b) obj);
                return O1;
            }
        }));
        return purchaseViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N1(TopUpFragment topUpFragment, ApiErrorState apiErrorState) {
        boolean z10;
        if (apiErrorState.getState() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        topUpFragment.x0(true, z10, apiErrorState.getMsg());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O1(final PurchaseViewModel purchaseViewModel, final TopUpFragment topUpFragment, com.startshorts.androidplayer.viewmodel.purchase.b bVar) {
        List<SubsSku> list;
        if (bVar instanceof b.d) {
            SubsSku p10 = DiscountSubscribeManager.f42447a.p();
            if (p10 != null) {
                purchaseViewModel.I(p10);
            }
            SubsExpansionManager subsExpansionManager = SubsExpansionManager.f42751a;
            QueryNormalCoinSkuResult Q = purchaseViewModel.Q();
            if (Q != null) {
                list = Q.getSubscribeSkuResponses();
            } else {
                list = null;
            }
            subsExpansionManager.u(false, list, new at.n() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.e0
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit P1;
                    P1 = TopUpFragment.P1(PurchaseViewModel.this, topUpFragment, ((Integer) obj).intValue(), (SubsSku) obj2, (List) obj3);
                    return P1;
                }
            });
            if (((b.d) bVar).a()) {
                topUpFragment.y0(true, null);
                topUpFragment.c2();
                topUpFragment.e2();
            } else {
                topUpFragment.m1();
            }
        } else if (bVar instanceof b.e) {
            topUpFragment.V1(((b.e) bVar).a());
        } else if (bVar instanceof b.k) {
            topUpFragment.c2();
            topUpFragment.e2();
            b.k kVar = (b.k) bVar;
            topUpFragment.R = kVar.a();
            topUpFragment.p1(kVar.c(), kVar.b());
        } else if (bVar instanceof b.f) {
            topUpFragment.A1((b.f) bVar);
        } else if (bVar instanceof b.g) {
            b.g gVar = (b.g) bVar;
            Integer orderStatus = gVar.a().getOrderStatus();
            Integer num = topUpFragment.L;
            if (num != null) {
                int intValue = num.intValue();
                String str = "";
                if (intValue != 1) {
                    if (intValue == 2) {
                        if (orderStatus != null && orderStatus.intValue() == 1) {
                            topUpFragment.w(R$string.subscription_detail_activity_subs_success);
                            topUpFragment.X1();
                            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                            topUpFragment.I1("success");
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
                            topUpFragment.w(R$string.payment_failure);
                            topUpFragment.I1("failure");
                        }
                    }
                } else if (orderStatus != null && orderStatus.intValue() == 2) {
                    topUpFragment.w(R$string.top_up_fragment_recharge_success);
                    topUpFragment.X1();
                    AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                    topUpFragment.I1("success");
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
                    topUpFragment.w(R$string.payment_failure);
                    topUpFragment.I1("failure");
                }
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P1(PurchaseViewModel purchaseViewModel, TopUpFragment topUpFragment, int i10, SubsSku subsSku, List newSubList) {
        Intrinsics.checkNotNullParameter(newSubList, "newSubList");
        QueryNormalCoinSkuResult Q = purchaseViewModel.Q();
        if (Q != null) {
            Q.setSubscribeSkuResponses(newSubList);
        }
        if (i10 > -1) {
            topUpFragment.U = i10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider Q1(TopUpFragment topUpFragment) {
        return new ViewModelProvider(topUpFragment);
    }

    private final void R1() {
        AccountRepo.f43052a.O(this.F);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S1(CoinSku coinSku) {
        this.N = coinSku;
        if (coinSku.getSkuType() == 1000) {
            return;
        }
        if (coinSku instanceof ThirdPartyPaymentCoinSku) {
            ThirdPartyPaymentSkuResult result = ((ThirdPartyPaymentCoinSku) coinSku).getResult();
            if (result != null) {
                s1().W(new a.k("recharge_page", result, null, 4, null));
                return;
            }
            return;
        }
        s1().W(new a.e(r1(), j(), coinSku, null, false, null, this.V, null, IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T1(SubsSku subsSku) {
        boolean z10;
        this.O = subsSku;
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
            x(requireContext().getString(R$string.subscribed_already));
        } else {
            FragmentExtKt.b(this, new h(subsSku), new i());
        }
    }

    private final void U1() {
        t1().Y(new a.g("top_up", this.J, null, 4, null));
    }

    private final void V1(List<zc.g> list) {
        s1().W(new a.h(list));
    }

    private final void W1() {
        t1().Y(a.f.f49031b);
    }

    private final void X1() {
        if (t1().M()) {
            r("reloadCoinSkuList");
            t1().K("topup");
            Z1();
            T();
            R();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void Y1(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        SelectableItem selectableItem;
        List list3;
        List list4;
        boolean p10 = qf.h.f65328a.p(list, list2);
        this.T = p10;
        if (!p10) {
            if (list != null) {
                list3 = CollectionsKt.g1(list);
            } else {
                list3 = null;
            }
            i2(list3);
            if (list2 != null) {
                list4 = CollectionsKt.g1(list2);
            } else {
                list4 = null;
            }
            g2(list4);
            RecyclerView.Adapter<?> e02 = e0();
            Intrinsics.checkNotNull(e02, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
            ((TopUpSku7Adapter) e02).T(-1);
            tj.a aVar = this.S;
            if (aVar != null) {
                aVar.setBtnVisibility(8);
            }
            this.S = null;
            return;
        }
        if (this.S == null) {
            tj.b bVar = tj.b.f67381a;
            ViewStubProxy stubPaymentMethod = ((FragmentTopUpBinding) A()).f39687l;
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
        i2(null);
        g2(arrayList);
        int i10 = this.U;
        if (i10 >= 0 && i10 < arrayList.size()) {
            RecyclerView.Adapter<?> e03 = e0();
            Intrinsics.checkNotNull(e03, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
            ((TopUpSku7Adapter) e03).T(this.U);
            selectableItem = (SelectableItem) arrayList.get(this.U);
        } else {
            RecyclerView.Adapter<?> e04 = e0();
            Intrinsics.checkNotNull(e04, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
            ((TopUpSku7Adapter) e04).T(0);
            selectableItem = (SelectableItem) CollectionsKt.firstOrNull(arrayList);
        }
        if (selectableItem != null) {
            a2(selectableItem);
        }
    }

    private final void Z1() {
        k0(n1());
        RecyclerView g02 = g0();
        if (g02 != null) {
            g02.setAdapter(e0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a2(SelectableItem selectableItem) {
        if (!H1()) {
            if (selectableItem instanceof CoinSku) {
                S1((CoinSku) selectableItem);
            } else if (selectableItem instanceof SubsSku) {
                T1((SubsSku) selectableItem);
            }
        }
        n nVar = new n();
        if (selectableItem instanceof CoinSku) {
            CoinSku coinSku = (CoinSku) selectableItem;
            EventManager.B0(EventManager.f42463a, v1(), coinSku, null, null, null, null, r1(), this.J, null, 312, null);
            tj.a aVar = this.S;
            if (aVar != null) {
                aVar.l(v1(), coinSku, w1(), null, nVar, this.J);
            }
        } else if (selectableItem instanceof SubsSku) {
            SubsSku subsSku = (SubsSku) selectableItem;
            EventManager.C0(EventManager.f42463a, v1(), subsSku, null, null, 0, null, null, r1(), this.J, null, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_OPENED_TIME, null);
            tj.a aVar2 = this.S;
            if (aVar2 != null) {
                aVar2.n(v1(), subsSku, w1(), null, nVar, this.J, this.R);
            }
        }
    }

    private final void b2() {
        StateViewGroup I = I();
        if (I != null) {
            ViewGroup.LayoutParams layoutParams = I.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            layoutParams2.bottomToBottom = -1;
            ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = jk.g.a(100.0f);
            I.setLayoutParams(layoutParams2);
        }
    }

    private final void c2() {
        if (AccountRepo.f43052a.D0()) {
            return;
        }
        ViewStubProxy descViewstub = ((FragmentTopUpBinding) A()).f39682g;
        Intrinsics.checkNotNullExpressionValue(descViewstub, "descViewstub");
        jk.e0.g(descViewstub);
    }

    private final void d2() {
        FragmentExtKt.b(this, new o(), new p());
    }

    private final void e2() {
        if (AccountRepo.f43052a.D0()) {
            ((FragmentTopUpBinding) A()).f39684i.setVisibility(8);
            return;
        }
        ((FragmentTopUpBinding) A()).f39684i.setVisibility(0);
        ((FragmentTopUpBinding) A()).f39684i.B();
    }

    private final void f2() {
        B1();
        FragmentExtKt.b(this, new r(), new s());
    }

    private final void g2(List<SelectableItem> list) {
        y0(true, list);
    }

    private final void h2() {
        BaseActivity j10 = j();
        if (j10 != null) {
            SubsExpansionManager.f42751a.h(j10, "recharge_page");
        }
    }

    private final void i2(List<SubsSku> list) {
        List<SubsSku> list2 = list;
        SubsTypeView subsTypeView = null;
        if (list2 != null && !list2.isEmpty()) {
            ViewStubProxy viewStubProxy = ((FragmentTopUpBinding) A()).f39688m;
            Intrinsics.checkNotNull(viewStubProxy);
            jk.e0.g(viewStubProxy);
            View root = viewStubProxy.getRoot();
            if (root instanceof SubsTypeView) {
                subsTypeView = (SubsTypeView) root;
            }
            SubsTypeView subsTypeView2 = subsTypeView;
            if (subsTypeView2 != null) {
                SubsTypeView.setSubsSkus$default(subsTypeView2, "recharge", "recharge_page", 0, list, null, null, new Function2() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.g0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Unit j22;
                        j22 = TopUpFragment.j2(TopUpFragment.this, (SubsSku) obj, (SubsSku) obj2);
                        return j22;
                    }
                }, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.x
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit k22;
                        k22 = TopUpFragment.k2(TopUpFragment.this);
                        return k22;
                    }
                }, 52, null);
                return;
            }
            return;
        }
        ViewStubProxy viewStubProxy2 = ((FragmentTopUpBinding) A()).f39688m;
        Intrinsics.checkNotNull(viewStubProxy2);
        jk.e0.b(viewStubProxy2, 0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j2(TopUpFragment topUpFragment, SubsSku sku, SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(sku, "sku");
        EventManager.C0(EventManager.f42463a, "recharge_page", sku, null, null, 0, null, null, null, topUpFragment.J, null, 764, null);
        topUpFragment.T1(sku);
        return Unit.f60915a;
    }

    private final void k1(OtherOrderResult otherOrderResult) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k2(TopUpFragment topUpFragment) {
        topUpFragment.X1();
        return Unit.f60915a;
    }

    private final void l1() {
        FragmentExtKt.b(this, new b(), new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l2(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", bundle, 0L, 4, null);
        f2();
        s1().W(new a.f(str));
    }

    private final void m1() {
        s1().W(new a.c("top_up"));
    }

    static /* synthetic */ void m2(TopUpFragment topUpFragment, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "topup";
        }
        topUpFragment.l2(str);
    }

    private final TopUpSku7Adapter n1() {
        TopUpSku7Adapter topUpSku7Adapter = new TopUpSku7Adapter();
        topUpSku7Adapter.R(r1());
        topUpSku7Adapter.Q(q1());
        topUpSku7Adapter.B(new d());
        topUpSku7Adapter.S(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit o12;
                o12 = TopUpFragment.o1(TopUpFragment.this);
                return o12;
            }
        });
        return topUpSku7Adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n2(int i10) {
        RecyclerView.Adapter<?> e02 = e0();
        Intrinsics.checkNotNull(e02, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.purchase.TopUpSku7Adapter");
        ((TopUpSku7Adapter) e02).T(i10);
        RecyclerView.Adapter<?> e03 = e0();
        if (e03 != null) {
            e03.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o1(TopUpFragment topUpFragment) {
        topUpFragment.X1();
        return Unit.f60915a;
    }

    private final void p1(List<? extends SubsSku> list, List<? extends CoinSku> list2) {
        Y1(list, list2);
    }

    private final String q1() {
        String str = this.J;
        if (str == null) {
            return "other";
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String r1() {
        return t1().N();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel s1() {
        return (BillingViewModel) this.E.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PurchaseViewModel t1() {
        return (PurchaseViewModel) this.C.getValue();
    }

    private final ViewModelProvider u1() {
        return (ViewModelProvider) this.B.getValue();
    }

    private final String v1() {
        return "topup";
    }

    private final String w1() {
        return ve.h.f68906a.m();
    }

    private final void x1(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        w(R$string.top_up_fragment_recharge_success);
        t1().Y(new a.d(str, str2, gPayPriceInfo, null, 8, null));
        X1();
        l1();
        bf.e.f2616a.i().i();
        PurchaseRepo.f43366a.q();
    }

    private final void y1(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        w(R$string.subscription_detail_activity_subs_success);
        DiscountSubscribeManager.f42447a.u(str2);
        t1().Y(new a.e(str, str2, gPayPriceInfo, null, 8, null));
        X1();
        l1();
        bf.e.f2616a.i().i();
    }

    private final void z1(List<? extends Object> list) {
        t1().Y(new a.b(list));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        if (AccountRepo.f43052a.D0()) {
            return R$layout.viewstub_page_state_empty_disable_recharge;
        }
        return R$layout.viewstub_page_state_empty;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        if (!t1().M()) {
            U1();
        } else {
            m1();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void U() {
        super.U();
        if (G1()) {
            b2();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void V(@Nullable String str) {
        super.V(str);
        if (G1()) {
            b2();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.TopUpFragment$initRecyclerView$1
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
                    r10 = fk.z.f51786a.r();
                }
                outRect.top = r10;
            }
        });
        k0(n1());
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean k() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_top_up;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (s1().S()) {
            X1();
        }
        s1().W(new a.C0653a(requireContext()));
        ud.a aVar = ud.a.f68411a;
        if (aVar.O()) {
            aVar.p0(false);
            FragmentExtKt.b(this, new j(), new k());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        String str;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        String str2 = null;
        if (arguments != null) {
            str = arguments.getString(TextureRenderKeys.KEY_IS_ACTION);
        } else {
            str = null;
        }
        this.J = str;
        Bundle arguments2 = getArguments();
        if (arguments2 != null) {
            str2 = arguments2.getString("from");
        }
        this.V = str2;
        G0(R$string.profile_fragment_top_up);
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.D0()) {
            ((FragmentTopUpBinding) A()).f39679d.setVisibility(8);
        } else {
            R1();
            D1();
            C1();
        }
        h2();
        R();
        AccountRepo.Z0(accountRepo, true, null, null, 6, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarListFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "TopUpFragment7";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        r("receive AcknowledgePurchaseResult -> " + result);
        if (!result.onlyContainsDiscount()) {
            X1();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveRefreshAccountEvent");
        R1();
        D1();
        C1();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveTTPResultEvent(@NotNull TTPResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receive ttppmentResultEvent");
        t1().Y(new a.i(event.getOrderNo(), event.getOrderType()));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void s() {
        h();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        this.L = null;
        AccountRepo.f43052a.d1(this.F);
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class i implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class k implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class p implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class s implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
