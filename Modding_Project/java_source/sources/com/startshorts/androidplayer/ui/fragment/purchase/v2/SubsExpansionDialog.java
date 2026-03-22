package com.startshorts.androidplayer.ui.fragment.purchase.v2;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.DialogFragmentSubsExpansionBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionDialog;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import fk.e;
import fk.u;
import fk.v;
import fk.z;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import le.h;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.g;
/* compiled from: SubsExpansionDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsExpansionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,297:1\n470#2:298\n*S KotlinDebug\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog\n*L\n134#1:298\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsExpansionDialog extends BaseDialogFragment<DialogFragmentSubsExpansionBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f46549p = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private b f46550i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private BaseEpisode f46551j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final i f46552k = kotlin.c.b(new Function0() { // from class: ti.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider f02;
            f02 = SubsExpansionDialog.f0(SubsExpansionDialog.this);
            return f02;
        }
    });
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final i f46553l = kotlin.c.b(new Function0() { // from class: ti.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel d02;
            d02 = SubsExpansionDialog.d0(SubsExpansionDialog.this);
            return d02;
        }
    });
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f46554m = kotlin.c.b(new Function0() { // from class: ti.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            UnlockViewModel e02;
            e02 = SubsExpansionDialog.e0(SubsExpansionDialog.this);
            return e02;
        }
    });

    /* renamed from: n  reason: collision with root package name */
    private boolean f46555n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private SubsSku f46556o;

    /* compiled from: SubsExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: SubsExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsExpansionDialog.this.dismiss();
        }
    }

    /* compiled from: SubsExpansionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ SubsSku f46562f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(SubsSku subsSku) {
            super(0L, 1, null);
            this.f46562f = subsSku;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsExpansionDialog.this.R().W(new a.j(SubsExpansionDialog.this.W(), SubsExpansionDialog.this.h(), this.f46562f, SubsExpansionDialog.this.S(), null, 0, null, null, null, null, null, null, 4080, null));
        }
    }

    private final void P() {
        R().W(new a.c("expansion"));
    }

    private final String Q(int i10) {
        if (i10 != 2) {
            if (i10 != 4) {
                if (i10 != 6) {
                    if (i10 != 7) {
                        return u.f51776a.d(R$string.subs_type_week_unit);
                    }
                }
            }
            return u.f51776a.d(R$string.subs_type_year_unit);
        }
        return u.f51776a.d(R$string.subs_type_month_unit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel R() {
        return (BillingViewModel) this.f46553l.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UnlockViewModel U() {
        return (UnlockViewModel) this.f46554m.getValue();
    }

    private final ViewModelProvider V() {
        return (ViewModelProvider) this.f46552k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String W() {
        return "retention_pop_sku_pay";
    }

    private final String X(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 != 6) {
                            if (i10 != 7) {
                                return "";
                            }
                        }
                    }
                }
                return u.f51776a.d(R$string.profile_subscription_view_annual_pro_card_desc);
            }
            return u.f51776a.d(R$string.profile_subscription_view_monthly_pro_card_desc);
        }
        return u.f51776a.d(R$string.profile_subscription_view_weekly_pro_card_desc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
        int i11;
        if (i10 == 2) {
            i11 = R$string.subscription_detail_activity_subs_success;
        } else {
            i11 = R$string.subscription_detail_activity_subs_update_success;
        }
        BaseDialogFragment.A(this, i11, 0, 2, null);
        EventManager.U0(EventManager.f42463a, W(), this.f46556o, gPayPriceInfo, str, this.f46551j, null, null, Integer.valueOf(i10), null, null, TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT, null);
        b bVar = this.f46550i;
        if (bVar != null) {
            bVar.a();
        }
        dismiss();
    }

    private final void Z() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        new fk.e(requireContext, viewLifecycleOwner, R(), new c()).d();
    }

    private final void a0() {
        m().f39031c.setOnClickListener(new d());
    }

    private final void b0(SubsSku subsSku) {
        String originPriceText;
        String str = "";
        if (!subsSku.enableDiscount() ? (originPriceText = subsSku.getOriginPriceText()) != null : (originPriceText = subsSku.getDiscountPriceText()) != null) {
            str = originPriceText;
        }
        String Q = Q(subsSku.getType());
        m().f39040l.setText(str);
        m().f39039k.setText(Q);
        m().f39030b.setOnClickListener(new e(subsSku));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(SubsSku subsSku) {
        this.f46556o = subsSku;
        m().f39038j.setText(X(subsSku.getType()));
        m().f39041m.setText(subsSku.formatRenewPrice());
        GradientTextView gradientTextView = m().f39042n;
        gradientTextView.setText(u.f51776a.d(R$string.subs_expansion_dialog_title));
        gradientTextView.setColor(new int[]{Color.parseColor("#CD7FAC"), Color.parseColor("#F3AE66"), Color.parseColor("#F8E4C3"), Color.parseColor("#F9D4A5")}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, 0);
        b0(subsSku);
        g0();
        EventManager eventManager = EventManager.f42463a;
        String W = W();
        BaseEpisode baseEpisode = this.f46551j;
        ud.a aVar = ud.a.f68411a;
        EventManager.P0(eventManager, W, subsSku, baseEpisode, aVar.p(), null, null, null, 112, null);
        EventManager.e1(eventManager, W(), subsSku, this.f46551j, aVar.p(), this.f46555n, 0, null, 64, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel d0(SubsExpansionDialog subsExpansionDialog) {
        return (BillingViewModel) subsExpansionDialog.V().get(BillingViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UnlockViewModel e0(SubsExpansionDialog subsExpansionDialog) {
        return (UnlockViewModel) new ViewModelProvider(subsExpansionDialog).get(UnlockViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider f0(SubsExpansionDialog subsExpansionDialog) {
        return new ViewModelProvider(subsExpansionDialog);
    }

    private final void g0() {
        if (ABTestFactory.f42224a.j1().isEnable().invoke().booleanValue()) {
            CoroutineUtil.l(CoroutineUtil.f48072a, "preUnlockData", false, new SubsExpansionDialog$preUnlockData$1(this, null), 2, null);
        }
    }

    private final void h0() {
        String str;
        SubsExpansionManager subsExpansionManager = SubsExpansionManager.f42751a;
        if (subsExpansionManager.B()) {
            subsExpansionManager.w(this.f46556o, true);
        }
        SubsSku subsSku = this.f46556o;
        if (subsSku != null) {
            if (subsSku != null) {
                str = subsSku.getSkuId();
            } else {
                str = null;
            }
            if (str != null && str.length() != 0) {
                P();
                EventManager.W0(EventManager.f42463a, W(), "other", this.f46551j, null, null, null, 56, null);
                return;
            }
        }
        dismiss();
    }

    private final void i0(List<g> list) {
        R().W(new a.h(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0() {
        SubsSku subsSku = this.f46556o;
        String str = (subsSku == null || (str = subsSku.getSkuId()) == null) ? "" : "";
        if (str.length() == 0) {
            dismiss();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new g(h.f62164a.b(), CollectionsKt.t(str)));
        i0(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n0(String str) {
        R().W(new a.g(str));
    }

    @Nullable
    public final BaseEpisode S() {
        return this.f46551j;
    }

    @Nullable
    public final SubsSku T() {
        return this.f46556o;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        EventManager.f42463a.a1(W(), this.f46556o, this.f46551j, ud.a.f68411a.p(), this.f46555n);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_subs_expansion;
    }

    public final void k0(@Nullable BaseEpisode baseEpisode) {
        this.f46551j = baseEpisode;
    }

    public final void l0(@Nullable b bVar) {
        this.f46550i = bVar;
    }

    public final void m0(@Nullable SubsSku subsSku) {
        this.f46556o = subsSku;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "SubsExpansionDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        boolean z10 = false;
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            z10 = arguments.getBoolean("isFromTaskCenter");
        }
        this.f46555n = z10;
        Z();
        a0();
        h0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        int G;
        int o10;
        if (v.f51778a.b()) {
            G = DeviceUtil.f48146a.G();
            o10 = z.f51786a.o();
        } else {
            G = DeviceUtil.f48146a.G();
            o10 = z.f51786a.o() * 2;
        }
        return G - o10;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        q("receive AcknowledgePurchaseResult -> " + result);
    }

    /* compiled from: SubsExpansionDialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSubsExpansionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$initBillingStateHandler$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,297:1\n15#2,9:298\n*S KotlinDebug\n*F\n+ 1 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$initBillingStateHandler$1\n*L\n94#1:298,9\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements e.a {

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SubsExpansionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionDialog$initBillingStateHandler$1\n*L\n1#1,20:1\n96#2,5:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ SubsExpansionDialog f46558a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ List f46559b;

            public a(SubsExpansionDialog subsExpansionDialog, List list) {
                this.f46558a = subsExpansionDialog;
                this.f46559b = list;
            }

            public final void a() {
                SubsSku T = this.f46558a.T();
                if (T != null) {
                    jk.u.k(T, this.f46559b);
                    this.f46558a.c0(T);
                }
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        c() {
        }

        @Override // fk.e.a
        public void a(String str, String str2, GPayPriceInfo gPayPriceInfo) {
            e.a.C0745a.a(this, str, str2, gPayPriceInfo);
        }

        @Override // fk.e.a
        public void b(String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            SubsExpansionDialog.this.n0(scene);
        }

        @Override // fk.e.a
        public void c(TTPInfoResult tTPInfoResult) {
            e.a.C0745a.c(this, tTPInfoResult);
        }

        @Override // fk.e.a
        public void d(int i10, String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            SubsExpansionDialog.this.Y(2, str, gpSkuId, priceInfo);
        }

        @Override // fk.e.a
        public void e(List<? extends Object> list) {
            SubsExpansionDialog subsExpansionDialog = SubsExpansionDialog.this;
            FragmentExtKt.b(subsExpansionDialog, new a(subsExpansionDialog, list), new b());
        }

        @Override // fk.e.a
        public void f() {
            SubsExpansionDialog.this.j0();
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class b implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }

            public final void a() {
            }
        }
    }
}
