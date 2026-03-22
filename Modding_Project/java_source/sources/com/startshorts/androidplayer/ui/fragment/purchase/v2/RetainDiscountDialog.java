package com.startshorts.androidplayer.ui.fragment.purchase.v2;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import au.l;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.SubsExpansionShowEvent;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.DialogRetainFragmentDiscountBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.RetainDiscountDialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import fk.e;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.g;
import jk.h;
import jk.u;
import jk.v;
import jk.y;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RetainDiscountDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRetainDiscountDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetainDiscountDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,330:1\n1#2:331\n470#3:332\n*S KotlinDebug\n*F\n+ 1 RetainDiscountDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/RetainDiscountDialog\n*L\n151#1:332\n*E\n"})
/* loaded from: classes7.dex */
public final class RetainDiscountDialog extends BaseDialogFragment<DialogRetainFragmentDiscountBinding> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f46527n = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private SubsSku f46528i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private String f46529j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private r f46530k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final i f46531l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final i f46532m;

    /* compiled from: RetainDiscountDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RetainDiscountDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements e.a {
        b() {
        }

        @Override // fk.e.a
        public void a(String str, String str2, GPayPriceInfo gPayPriceInfo) {
            e.a.C0745a.a(this, str, str2, gPayPriceInfo);
        }

        @Override // fk.e.a
        public void b(String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            RetainDiscountDialog.this.l0(scene);
        }

        @Override // fk.e.a
        public void c(TTPInfoResult payResultInfo) {
            Intrinsics.checkNotNullParameter(payResultInfo, "payResultInfo");
            e.a.C0745a.c(this, payResultInfo);
        }

        @Override // fk.e.a
        public void d(int i10, String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            RetainDiscountDialog.this.X(i10, str, gpSkuId, priceInfo);
        }

        @Override // fk.e.a
        public void e(List<? extends Object> list) {
            SubsSku U = RetainDiscountDialog.this.U();
            if (U != null) {
                RetainDiscountDialog retainDiscountDialog = RetainDiscountDialog.this;
                u.k(U, list);
                retainDiscountDialog.b0(U);
            }
        }

        @Override // fk.e.a
        public void f() {
            RetainDiscountDialog.this.f0();
        }
    }

    /* compiled from: RetainDiscountDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            String str;
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsSku U = RetainDiscountDialog.this.U();
            if (U != null) {
                RetainDiscountDialog retainDiscountDialog = RetainDiscountDialog.this;
                retainDiscountDialog.S().W(new a.j(retainDiscountDialog.W(), retainDiscountDialog.h(), U, null, null, 0, null, null, null, retainDiscountDialog.T(), "coupon_popup_window", null, 2552, null));
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            RetainDiscountDialog retainDiscountDialog2 = RetainDiscountDialog.this;
            bundle.putString("from", retainDiscountDialog2.T());
            SubsSku U2 = retainDiscountDialog2.U();
            if (U2 != null) {
                str = U2.getSkuId();
            } else {
                str = null;
            }
            bundle.putString("sku_id", str);
            bundle.putString("popup_name", "coupon_pop_up_window");
            bundle.putString("popup_type", "modal");
            bundle.putString("click_target", "confirm_btn");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "popup_click", bundle, 0L, 4, null);
        }
    }

    /* compiled from: RetainDiscountDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            RetainDiscountDialog.this.dismiss();
        }
    }

    public RetainDiscountDialog() {
        this(null, 1, null);
    }

    private final void Q() {
        S().W(new a.c("expansion"));
    }

    private final String R(SubsSku subsSku) {
        return String.valueOf(h.b(u.c(subsSku)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel S() {
        return (BillingViewModel) this.f46532m.getValue();
    }

    private final ViewModelProvider V() {
        return (ViewModelProvider) this.f46531l.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String W() {
        return this.f46529j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
        fk.u.j(fk.u.f51776a, R$string.subscription_detail_activity_subs_success, 0, 2, null);
        EventManager.U0(EventManager.f42463a, W(), this.f46528i, gPayPriceInfo, str, null, null, null, Integer.valueOf(i10), null, null, TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT, null);
        dismiss();
    }

    private final void Y() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        new e(requireContext, viewLifecycleOwner, S(), new b()).d();
    }

    private final void Z() {
        m().f39266l.setOnClickListener(new c());
        m().f39259e.setOnClickListener(new d());
    }

    private final void a0() {
        String str;
        BaseTextView tvTitle = m().f39278x;
        Intrinsics.checkNotNullExpressionValue(tvTitle, "tvTitle");
        SubsSku subsSku = this.f46528i;
        if (subsSku != null) {
            str = subsSku.formateDiscountTitle();
        } else {
            str = null;
        }
        y.h(tvTitle, String.valueOf(str), new int[]{Color.parseColor("#F3AD63"), Color.parseColor("#FFFAE7"), Color.parseColor("#F3AD63")}, new float[]{0.0f, 0.5f, 1.0f}, null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0(SubsSku subsSku) {
        Pair<String, String> pair;
        String str;
        String str2;
        long j10;
        String originPriceText;
        this.f46528i = subsSku;
        GradientDrawable gradientDrawable = new GradientDrawable();
        int i10 = 0;
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(g.a(2.0f));
        Context context = getContext();
        if (context != null) {
            gradientDrawable.setColor(ContextCompat.getColor(context, R$color.str_color_fedaa4));
        }
        m().f39272r.setBackground(gradientDrawable);
        m().f39276v.setBackground(gradientDrawable);
        m().f39273s.setBackground(gradientDrawable);
        a0();
        m().f39267m.setText(subsSku.formatDiscountTxt());
        GradientTextView gradientTextView = m().f39270p;
        SubsSku subsSku2 = this.f46528i;
        String str3 = null;
        if (subsSku2 != null && (originPriceText = subsSku2.getOriginPriceText()) != null) {
            pair = v.q(originPriceText);
        } else {
            pair = null;
        }
        if (pair != null) {
            gradientTextView.setText(pair.e());
        }
        m().f39268n.setText(R(subsSku));
        m().f39269o.setText(getString(R$string.ad2pay_subscribe_discount, ""));
        BaseTextView baseTextView = m().f39275u;
        SubsSku subsSku3 = this.f46528i;
        if (subsSku3 != null) {
            str = subsSku3.getDiscountPriceText();
        } else {
            str = null;
        }
        baseTextView.setText(str);
        BaseTextView baseTextView2 = m().f39274t;
        SubsSku subsSku4 = this.f46528i;
        if (subsSku4 != null) {
            str2 = subsSku4.getOriginPriceText();
        } else {
            str2 = null;
        }
        baseTextView2.setText(str2);
        BaseTextView tvOriginPrice = m().f39274t;
        Intrinsics.checkNotNullExpressionValue(tvOriginPrice, "tvOriginPrice");
        y.j(tvOriginPrice, true);
        SubsSku subsSku5 = this.f46528i;
        if (subsSku5 != null) {
            i10 = u.d(subsSku5);
        }
        SubsSku subsSku6 = this.f46528i;
        if (subsSku6 != null) {
            j10 = subsSku6.getExpireTime();
        } else {
            j10 = 0;
        }
        int K = (int) ((j10 - DeviceUtil.f48146a.K()) / 1000);
        if (K > 0 && i10 > 0) {
            i0(K);
            b0.l(m().f39265k);
        } else {
            P();
            b0.d(m().f39265k);
        }
        EventManager eventManager = EventManager.f42463a;
        EventManager.P0(eventManager, W(), subsSku, null, ud.a.f68411a.p(), null, null, "coupon_pop_up_window", 52, null);
        Bundle bundle = new Bundle();
        bundle.putString("from", this.f46529j);
        bundle.putString("popup_name", "coupon_pop_up_window");
        SubsSku subsSku7 = this.f46528i;
        if (subsSku7 != null) {
            str3 = subsSku7.getSkuId();
        }
        bundle.putString("sku_id", str3);
        bundle.putString("popup_type", "modal");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "popup_show", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel c0(RetainDiscountDialog retainDiscountDialog) {
        return (BillingViewModel) retainDiscountDialog.V().get(BillingViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider d0(RetainDiscountDialog retainDiscountDialog) {
        return new ViewModelProvider(retainDiscountDialog);
    }

    private final void e0() {
        String str;
        SubsSku subsSku = this.f46528i;
        if (subsSku != null) {
            if (subsSku != null) {
                str = subsSku.getSkuId();
            } else {
                str = null;
            }
            if (str != null && str.length() != 0) {
                SubsExpansionManager.f42751a.w(this.f46528i, true);
                HomeRetainDiscountSubsPresent.f42741a.l();
                Q();
                EventManager.W0(EventManager.f42463a, W(), "other", null, null, null, null, 60, null);
                return;
            }
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0() {
        SubsSku subsSku = this.f46528i;
        String str = (subsSku == null || (str = subsSku.getSkuId()) == null) ? "" : "";
        if (str.length() == 0) {
            dismiss();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zc.g(le.h.f62164a.b(), CollectionsKt.t(str)));
        g0(arrayList);
    }

    private final void g0(List<zc.g> list) {
        S().W(new a.h(list));
    }

    private final void i0(int i10) {
        if (i10 == 0) {
            return;
        }
        P();
        this.f46530k = CoroutineUtil.f48072a.d(i10, new Function1() { // from class: ti.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit j02;
                j02 = RetainDiscountDialog.j0(RetainDiscountDialog.this, ((Integer) obj).intValue());
                return j02;
            }
        }, new Function0() { // from class: ti.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit k02;
                k02 = RetainDiscountDialog.k0(RetainDiscountDialog.this);
                return k02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(RetainDiscountDialog retainDiscountDialog, int i10) {
        List split$default = StringsKt.split$default(TimeUtil.f48175a.c(i10, true), new String[]{":"}, false, 0, 6, null);
        String str = (String) CollectionsKt.firstOrNull(split$default);
        if (str != null) {
            retainDiscountDialog.m().f39272r.setText(str);
        }
        String str2 = (String) CollectionsKt.t0(split$default, 1);
        if (str2 != null) {
            retainDiscountDialog.m().f39273s.setText(str2);
        }
        String str3 = (String) CollectionsKt.t0(split$default, 2);
        if (str3 != null) {
            retainDiscountDialog.m().f39276v.setText(str3);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(RetainDiscountDialog retainDiscountDialog) {
        SubsExpansionManager.f42751a.j();
        retainDiscountDialog.dismiss();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l0(String str) {
        S().W(new a.g(str));
    }

    public final void P() {
        r rVar = this.f46530k;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f46530k = null;
    }

    @NotNull
    public final String T() {
        return this.f46529j;
    }

    @Nullable
    public final SubsSku U() {
        return this.f46528i;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        String str;
        super.dismiss();
        au.c.d().l(new SubsExpansionShowEvent());
        P();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", this.f46529j);
        bundle.putString("popup_name", "coupon_pop_up_window");
        SubsSku subsSku = this.f46528i;
        if (subsSku != null) {
            str = subsSku.getSkuId();
        } else {
            str = null;
        }
        bundle.putString("sku_id", str);
        bundle.putString("popup_type", "modal");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "popup_close", bundle, 0L, 4, null);
    }

    public final void h0(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f46529j = str;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_retain_fragment_discount;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "SubsExpansionNewDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        a0();
        Z();
        Y();
        e0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return DeviceUtil.f48146a.G();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        q("receive AcknowledgePurchaseResult -> " + result);
    }

    public RetainDiscountDialog(@Nullable SubsSku subsSku) {
        this.f46528i = subsSku;
        this.f46529j = "";
        this.f46531l = kotlin.c.b(new Function0() { // from class: ti.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ViewModelProvider d02;
                d02 = RetainDiscountDialog.d0(RetainDiscountDialog.this);
                return d02;
            }
        });
        this.f46532m = kotlin.c.b(new Function0() { // from class: ti.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                BillingViewModel c02;
                c02 = RetainDiscountDialog.c0(RetainDiscountDialog.this);
                return c02;
            }
        });
    }

    public /* synthetic */ RetainDiscountDialog(SubsSku subsSku, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : subsSku);
    }
}
