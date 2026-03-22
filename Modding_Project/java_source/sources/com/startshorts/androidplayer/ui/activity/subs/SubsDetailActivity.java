package com.startshorts.androidplayer.ui.activity.subs;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.shorttv.aar.billing.core.SubscriptionUpdateMode;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsPrivilege;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.databinding.ActivitySubsDetailBinding;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.base.ListActivity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.ui.view.subs.SubsTypeView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.subs.SubsViewModel;
import com.startshorts.androidplayer.viewmodel.subs.a;
import com.startshorts.androidplayer.viewmodel.subs.b;
import fk.u;
import gi.d;
import gi.e;
import java.util.List;
import jk.b0;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.i0;
import zc.k;
/* compiled from: SubsDetailActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsDetailActivity.kt\ncom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,571:1\n360#2,7:572\n*S KotlinDebug\n*F\n+ 1 SubsDetailActivity.kt\ncom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity\n*L\n154#1:572,7\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsDetailActivity extends ListActivity<SubsPrivilege, ActivitySubsDetailBinding> {
    @NotNull
    public static final a Q = new a(null);
    @Nullable
    private String D;
    @Nullable
    private String E;
    @Nullable
    private String F;
    @Nullable
    private BaseEpisode G;
    private boolean H;
    private boolean K;
    @Nullable
    private hi.b M;
    private long N;
    private long O;
    @NotNull
    private final i I = kotlin.c.b(new Function0() { // from class: ci.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider i12;
            i12 = SubsDetailActivity.i1(SubsDetailActivity.this);
            return i12;
        }
    });
    @NotNull
    private final i J = kotlin.c.b(new Function0() { // from class: ci.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SubsViewModel c12;
            c12 = SubsDetailActivity.c1(SubsDetailActivity.this);
            return c12;
        }
    });
    @NotNull
    private final i L = kotlin.c.b(new Function0() { // from class: ci.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel a12;
            a12 = SubsDetailActivity.a1(SubsDetailActivity.this);
            return a12;
        }
    });
    private int P = -1;

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void b(a aVar, Context context, String str, String str2, BaseEpisode baseEpisode, boolean z10, String str3, int i10, Object obj) {
            String str4;
            BaseEpisode baseEpisode2;
            boolean z11;
            String str5;
            if ((i10 & 4) != 0) {
                str4 = null;
            } else {
                str4 = str2;
            }
            if ((i10 & 8) != 0) {
                baseEpisode2 = null;
            } else {
                baseEpisode2 = baseEpisode;
            }
            if ((i10 & 16) != 0) {
                z11 = false;
            } else {
                z11 = z10;
            }
            if ((i10 & 32) != 0) {
                str5 = null;
            } else {
                str5 = str3;
            }
            aVar.a(context, str, str4, baseEpisode2, z11, str5);
        }

        public final void a(@NotNull Context context, @NotNull String from, @Nullable String str, @Nullable BaseEpisode baseEpisode, boolean z10, @Nullable String str2) {
            Class cls;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            if (ABTestFactory.f42224a.p1().isEnable().invoke().booleanValue()) {
                cls = SubsDetail2Activity.class;
            } else {
                cls = SubsDetailActivity.class;
            }
            Intent intent = new Intent(context, cls);
            intent.putExtra("from", from);
            intent.putExtra("second_from", str2);
            intent.putExtra("subs_sku_product_id", str);
            if (baseEpisode != null) {
                intent.putExtra("episode", l.d(baseEpisode));
            }
            intent.putExtra("unlock_episode", z10);
            context.startActivity(intent);
        }

        private a() {
        }
    }

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements e.b {

        /* renamed from: a */
        final /* synthetic */ SubsUpdateMode f45528a;

        /* renamed from: b */
        final /* synthetic */ SubsDetailActivity f45529b;

        /* renamed from: c */
        final /* synthetic */ b.d f45530c;

        b(SubsUpdateMode subsUpdateMode, SubsDetailActivity subsDetailActivity, b.d dVar) {
            this.f45528a = subsUpdateMode;
            this.f45529b = subsDetailActivity;
            this.f45530c = dVar;
        }

        @Override // gi.e.b
        public void a() {
            if (TextUtils.isEmpty(this.f45528a.getOldToken())) {
                u.j(u.f51776a, R$string.billing_unavailable_tip_dialog_content, 0, 2, null);
                return;
            }
            String oldToken = this.f45528a.getOldToken();
            if (oldToken == null) {
                oldToken = "";
            }
            this.f45529b.N0().W(new a.j("subscribe", this.f45529b, this.f45530c.a(), this.f45529b.G, this.f45528a.getObfuscatedExternalAccountId(), this.f45528a.getChangeMode(), new k(oldToken, this.f45528a.getSubscriptionReplacementMode()), this.f45528a.getOldToken(), this.f45530c.b(), null, null, null, 3584, null));
        }
    }

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c() {
            super(0L, 1, null);
            SubsDetailActivity.this = r4;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            SubsDetailActivity subsDetailActivity = SubsDetailActivity.this;
            String string = subsDetailActivity.getString(R$string.policy_private_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(subsDetailActivity, string);
        }
    }

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d() {
            super(0L, 1, null);
            SubsDetailActivity.this = r4;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            SubsDetailActivity subsDetailActivity = SubsDetailActivity.this;
            String string = subsDetailActivity.getString(R$string.policy_user_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(subsDetailActivity, string);
        }
    }

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e() {
            super(0L, 1, null);
            SubsDetailActivity.this = r4;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsDetailActivity.this.onBackPressed();
        }
    }

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f() {
            super(0L, 1, null);
            SubsDetailActivity.this = r4;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            long L = DeviceUtil.f48146a.L();
            if (L - SubsDetailActivity.this.N >= 5000) {
                SubsDetailActivity.this.N = L;
                SubsDetailActivity.r1(SubsDetailActivity.this, null, 1, null);
            } else if (L - SubsDetailActivity.this.O >= 1000) {
                SubsDetailActivity.this.O = L;
                SubsDetailActivity.this.x(R$string.common_duplicate_op_tip);
            }
        }
    }

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements Observer, FunctionAdapter {

        /* renamed from: a */
        private final /* synthetic */ Function1 f45535a;

        g(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45535a = function;
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
            return this.f45535a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45535a.invoke(obj);
        }
    }

    /* compiled from: SubsDetailActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements d.b {
        h() {
            SubsDetailActivity.this = r1;
        }

        @Override // gi.d.b
        public void a() {
            SubsDetailActivity.this.q1("retry_pop");
        }
    }

    private final void M0() {
        N0().W(new a.c("subs"));
    }

    public final BillingViewModel N0() {
        return (BillingViewModel) this.L.getValue();
    }

    private final SubsViewModel O0() {
        return (SubsViewModel) this.J.getValue();
    }

    private final ViewModelProvider P0() {
        return (ViewModelProvider) this.I.getValue();
    }

    private final void Q0(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
        int i11;
        BaseEpisode baseEpisode;
        if (i10 == 2) {
            i11 = R$string.subscription_detail_activity_subs_success;
        } else {
            i11 = R$string.subscription_detail_activity_subs_update_success;
        }
        x(i11);
        O0().N(new a.b("subscribe", str, str2, gPayPriceInfo, this.G, i10));
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.i1() && this.H && (baseEpisode = this.G) != null) {
            au.c.d().l(new EpisodeListUnlockedEvent(4, CollectionsKt.t(baseEpisode), true, false, null, 24, null));
        }
        if (accountRepo.z0() && !ae.a.f627a.f()) {
            finish();
        } else {
            m1();
        }
    }

    private final void R0(List<? extends Object> list) {
        O0().N(new a.C0692a(list));
    }

    private final void S0(b.d dVar) {
        SubsUpdateMode c10 = dVar.c();
        if (c10.getSubscriptionReplacementMode() == SubscriptionUpdateMode.NULL) {
            N0().W(new a.j("subscribe", this, dVar.a(), this.G, null, 0, null, null, null, null, null, null, 4080, null));
        } else {
            SubsSku b10 = dVar.b();
            if (b10 != null) {
                new gi.e(this, b10, dVar.a(), dVar.c(), new b(c10, this, dVar)).show();
            }
        }
    }

    private final void T0() {
        hi.b bVar = this.M;
        if (bVar != null) {
            bVar.cancel();
        }
        this.M = null;
    }

    private final void U0() {
        ((ActivitySubsDetailBinding) E()).f38522j.setOnClickListener(new c());
        ((ActivitySubsDetailBinding) E()).f38531s.setOnClickListener(new d());
    }

    private final void V0() {
        int i10;
        if (i0.f68447a.b()) {
            i10 = R$string.subscription_detail_activity_pro_desc_content_2;
        } else {
            i10 = R$string.subscription_detail_activity_pro_desc_content;
        }
        String string = getString(i10, "Google Play");
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        ((ActivitySubsDetailBinding) E()).f38514b.setText(string);
    }

    private final void W0() {
        ((ActivitySubsDetailBinding) E()).f38520h.setOnClickListener(new e());
    }

    private final void X0() {
        ((ActivitySubsDetailBinding) E()).f38525m.setOnClickListener(new f());
    }

    private final void Y0() {
        ((ActivitySubsDetailBinding) E()).f38527o.setColor(ContextCompat.getColor(this, R$color.color_subscription_activity_title_start), ContextCompat.getColor(this, R$color.color_subscription_activity_title_end));
    }

    private final void Z0() {
        View toolbarView = ((ActivitySubsDetailBinding) E()).f38529q;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
    }

    public static final BillingViewModel a1(SubsDetailActivity subsDetailActivity) {
        BillingViewModel billingViewModel = (BillingViewModel) subsDetailActivity.P0().get(BillingViewModel.class);
        billingViewModel.Q().observe(subsDetailActivity, new g(new Function1() { // from class: ci.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b12;
                b12 = SubsDetailActivity.b1(SubsDetailActivity.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return b12;
            }
        }));
        return billingViewModel;
    }

    public static final Unit b1(SubsDetailActivity subsDetailActivity, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            subsDetailActivity.k1();
        } else {
            boolean z10 = false;
            if (bVar instanceof b.m) {
                b.m mVar = (b.m) bVar;
                List<Object> a10 = mVar.a();
                if (a10 == null || a10.isEmpty()) {
                    z10 = true;
                }
                subsDetailActivity.K = !z10;
                if (((ActivitySubsDetailBinding) subsDetailActivity.E()).f38526n.a0()) {
                    subsDetailActivity.R0(mVar.a());
                }
            } else if (bVar instanceof b.u) {
                subsDetailActivity.x(R$string.common_user_canceled);
            } else if (bVar instanceof b.l) {
                subsDetailActivity.y(subsDetailActivity.getString(R$string.common_google_pay_not_support, ae.a.f627a.a()));
            } else if (bVar instanceof b.f) {
                subsDetailActivity.y("Item already owned");
                AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
            } else if (bVar instanceof b.e) {
                b.e eVar = (b.e) bVar;
                subsDetailActivity.Q0(2, eVar.a(), eVar.b(), eVar.c());
            } else if (bVar instanceof b.d) {
                subsDetailActivity.n1();
            } else if (bVar instanceof b.t) {
                b.t tVar = (b.t) bVar;
                subsDetailActivity.Q0(tVar.d(), tVar.a(), tVar.b(), tVar.c());
            } else if (bVar instanceof b.s) {
                subsDetailActivity.n1();
            } else if (bVar instanceof b.h) {
                subsDetailActivity.T0();
                b.h hVar = (b.h) bVar;
                if (hVar.a().hasAcknowledged()) {
                    hVar.a().showTip();
                    if (hVar.a().containsSubs()) {
                        subsDetailActivity.m1();
                    }
                }
            } else if (bVar instanceof b.j) {
                subsDetailActivity.T0();
                subsDetailActivity.x(R$string.top_up_fragment_not_find_lost_order_tip);
            } else if (bVar instanceof b.k) {
                new gi.f(subsDetailActivity, ((b.k) bVar).a()).show();
            }
        }
        return Unit.f60915a;
    }

    public static final SubsViewModel c1(final SubsDetailActivity subsDetailActivity) {
        final SubsViewModel subsViewModel = (SubsViewModel) subsDetailActivity.P0().get(SubsViewModel.class);
        subsViewModel.H().observe(subsDetailActivity, new g(new Function1() { // from class: ci.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit d12;
                d12 = SubsDetailActivity.d1(SubsViewModel.this, subsDetailActivity, (com.startshorts.androidplayer.viewmodel.subs.b) obj);
                return d12;
            }
        }));
        return subsViewModel;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x00a9, code lost:
        if (r6 != (-1)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x00ab, code lost:
        r4 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00ed, code lost:
        if (r6 == (-1)) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.Unit d1(final com.startshorts.androidplayer.viewmodel.subs.SubsViewModel r18, final com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity r19, com.startshorts.androidplayer.viewmodel.subs.b r20) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity.d1(com.startshorts.androidplayer.viewmodel.subs.SubsViewModel, com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity, com.startshorts.androidplayer.viewmodel.subs.b):kotlin.Unit");
    }

    public static final Unit e1(SubsViewModel subsViewModel, SubsDetailActivity subsDetailActivity, int i10, SubsSku subsSku, List replacedList) {
        Intrinsics.checkNotNullParameter(replacedList, "replacedList");
        subsViewModel.S(replacedList);
        if (i10 > -1) {
            subsDetailActivity.P = i10;
        }
        return Unit.f60915a;
    }

    public static final Unit f1(SubsViewModel subsViewModel, SubsDetailActivity subsDetailActivity, int i10) {
        subsViewModel.N(new a.d(subsDetailActivity, i10));
        return Unit.f60915a;
    }

    public static final Unit g1(SubsDetailActivity subsDetailActivity, SubsViewModel subsViewModel, SubsSku clickedSku, SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(clickedSku, "clickedSku");
        if (subsDetailActivity.K) {
            subsViewModel.N(new a.g(subsDetailActivity, clickedSku, subsSku));
        } else {
            new gi.a(subsDetailActivity).show();
        }
        return Unit.f60915a;
    }

    public static final Unit h1(SubsDetailActivity subsDetailActivity) {
        if (subsDetailActivity.P != -1) {
            subsDetailActivity.m1();
        }
        return Unit.f60915a;
    }

    public static final ViewModelProvider i1(SubsDetailActivity subsDetailActivity) {
        return new ViewModelProvider(subsDetailActivity);
    }

    private final void j1(List<zc.g> list) {
        N0().W(new a.h(list));
    }

    private final void k1() {
        O0().N(a.e.f49429a);
    }

    private final void l1() {
        O0().N(new a.f(this.G));
    }

    private final void m1() {
        if (O0().F()) {
            s("reloadSubsSkuList");
            this.F = null;
            SubsTypeView.setSubsSkus$default(((ActivitySubsDetailBinding) E()).f38526n, null, "subscribe", 0, null, null, null, null, null, 245, null);
            ((ActivitySubsDetailBinding) E()).f38523k.setVisibility(4);
            RecyclerView e02 = e0();
            if (e02 != null) {
                e02.setVisibility(4);
            }
            U();
            l1();
        }
    }

    private final void n1() {
        gi.d dVar = new gi.d(this);
        dVar.x(new h());
        dVar.show();
    }

    private final void o1() {
        T0();
        hi.b bVar = new hi.b(this);
        bVar.setCancelable(false);
        bVar.show();
        this.M = bVar;
    }

    private final void p1() {
        SubsExpansionManager.f42751a.h(this, "subscribe");
    }

    public final void q1(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "restore_click", bundle, 0L, 4, null);
        o1();
        N0().W(new a.g(str));
    }

    static /* synthetic */ void r1(SubsDetailActivity subsDetailActivity, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "subscribe";
        }
        subsDetailActivity.q1(str);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public void S() {
        if (!O0().F()) {
            l1();
        } else {
            M0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity
    public void g0() {
        i0(new BaseAdapter(R$layout.item_subs_privilege));
        k0(new GridLayoutManager((Context) this, 2, 1, false));
        super.g0();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_subs_detail;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        BaseEpisode baseEpisode;
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        this.D = getIntent().getStringExtra("from");
        this.E = getIntent().getStringExtra("second_from");
        this.F = getIntent().getStringExtra("subs_sku_product_id");
        String stringExtra = getIntent().getStringExtra("episode");
        if (stringExtra != null) {
            baseEpisode = (BaseEpisode) l.b(stringExtra, BaseEpisode.class);
        } else {
            baseEpisode = null;
        }
        this.G = baseEpisode;
        this.H = getIntent().getBooleanExtra("unlock_episode", false);
        Z0();
        W0();
        Y0();
        V0();
        U0();
        X0();
        p1();
        l1();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("from", this.D);
        bundle2.putString("second_from", this.E);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "subscribe_show", bundle2, 0L, 4, null);
        AccountManager.f41533a.v();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.ListActivity, com.startshorts.androidplayer.ui.activity.base.RecyclerViewActivity, com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "SubsDetailActivity";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        s("receive AcknowledgePurchaseResult -> " + result);
        if (result.containsSubs()) {
            m1();
        }
    }
}
