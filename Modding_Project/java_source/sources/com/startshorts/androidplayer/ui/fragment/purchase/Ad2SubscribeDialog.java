package com.startshorts.androidplayer.ui.fragment.purchase;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import com.hades.aar.pagestate.StateViewGroup;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.Ad2PayConfig;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.AdToSubscribeDialogBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import fk.e;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ad2SubscribeDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAd2SubscribeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2SubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n+ 4 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n*L\n1#1,470:1\n1#2:471\n470#3:472\n470#3:473\n470#3:474\n28#4:475\n*S KotlinDebug\n*F\n+ 1 Ad2SubscribeDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog\n*L\n311#1:472\n355#1:473\n405#1:474\n444#1:475\n*E\n"})
/* loaded from: classes7.dex */
public final class Ad2SubscribeDialog extends StateDialogFragment {
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final a f46430o = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private AdToSubscribeDialogBinding f46431b;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BaseEpisode f46435f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f46436g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Ad2PayConfig f46437h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private SubsSku f46438i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Float f46439j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f46440k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f46441l;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private Function0<Unit> f46432c = new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit S;
            S = Ad2SubscribeDialog.S();
            return S;
        }
    };
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Function1<? super Boolean, Unit> f46433d = new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.h
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Unit R;
            R = Ad2SubscribeDialog.R(((Boolean) obj).booleanValue());
            return R;
        }
    };
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private String f46434e = "";
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final ms.i f46442m = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider P;
            P = Ad2SubscribeDialog.P(Ad2SubscribeDialog.this);
            return P;
        }
    });
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ms.i f46443n = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel O;
            O = Ad2SubscribeDialog.O(Ad2SubscribeDialog.this);
            return O;
        }
    });

    /* compiled from: Ad2SubscribeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Ad2SubscribeDialog a() {
            return new Ad2SubscribeDialog();
        }

        private a() {
        }
    }

    /* compiled from: Ad2SubscribeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f46444a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ad2SubscribeDialog f46445b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f46446c;

        b(TextView textView, Ad2SubscribeDialog ad2SubscribeDialog, String str) {
            this.f46444a = textView;
            this.f46445b = ad2SubscribeDialog;
            this.f46446c = str;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f46444a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.f46445b.B(this.f46444a, this.f46446c);
        }
    }

    /* compiled from: Ad2SubscribeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements e.a {
        c() {
        }

        @Override // fk.e.a
        public void a(String str, String str2, GPayPriceInfo gPayPriceInfo) {
            e.a.C0745a.a(this, str, str2, gPayPriceInfo);
        }

        @Override // fk.e.a
        public void b(String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            Ad2SubscribeDialog.this.d0(scene);
        }

        @Override // fk.e.a
        public void c(TTPInfoResult tTPInfoResult) {
            e.a.C0745a.c(this, tTPInfoResult);
        }

        @Override // fk.e.a
        public void d(int i10, String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            Ad2SubscribeDialog.this.K(i10, str, gpSkuId, priceInfo);
        }

        @Override // fk.e.a
        public void e(List<? extends Object> list) {
            Ad2SubscribeDialog.this.L(list);
        }

        @Override // fk.e.a
        public void f() {
            Ad2SubscribeDialog.this.T();
        }
    }

    /* compiled from: Ad2SubscribeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            String str;
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager eventManager = EventManager.f42463a;
            String I = Ad2SubscribeDialog.this.I();
            BaseEpisode H = Ad2SubscribeDialog.this.H();
            SubsSku subsSku = Ad2SubscribeDialog.this.f46438i;
            if (subsSku != null) {
                str = subsSku.getSkuId();
            } else {
                str = null;
            }
            eventManager.W("ad_to_subscription", I, H, str, Ad2SubscribeDialog.this.F());
            Ad2SubscribeDialog.this.dismiss();
        }
    }

    /* compiled from: Ad2SubscribeDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ SubsSku f46450f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(SubsSku subsSku) {
            super(1500L);
            this.f46450f = subsSku;
        }

        @Override // yd.d
        public void a(View v10) {
            BaseActivity baseActivity;
            Intrinsics.checkNotNullParameter(v10, "v");
            FragmentActivity activity = Ad2SubscribeDialog.this.getActivity();
            String str = null;
            if (activity instanceof BaseActivity) {
                baseActivity = (BaseActivity) activity;
            } else {
                baseActivity = null;
            }
            if (baseActivity != null) {
                Ad2SubscribeDialog ad2SubscribeDialog = Ad2SubscribeDialog.this;
                SubsSku subsSku = this.f46450f;
                EventManager eventManager = EventManager.f42463a;
                String I = ad2SubscribeDialog.I();
                BaseEpisode H = ad2SubscribeDialog.H();
                SubsSku subsSku2 = ad2SubscribeDialog.f46438i;
                if (subsSku2 != null) {
                    str = subsSku2.getSkuId();
                }
                eventManager.V("ad_to_subscription", I, H, str, ad2SubscribeDialog.F());
                ad2SubscribeDialog.G().W(new a.j("ad_to_subscription", baseActivity, subsSku, ad2SubscribeDialog.H(), null, 0, null, null, null, ad2SubscribeDialog.I(), null, ad2SubscribeDialog.F(), 1520, null));
            }
        }
    }

    private final void A() {
        G().W(new a.c("ad_2_sub_dialog"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(TextView textView, String str) {
        textView.getPaint().setShader(new LinearGradient(0.0f, 0.0f, textView.getPaint().measureText(str), 0.0f, new int[]{Color.parseColor("#C85A11"), Color.parseColor("#582D01")}, (float[]) null, Shader.TileMode.CLAMP));
        textView.invalidate();
    }

    private final void C(TextView textView, String str) {
        int length = str.length() + 1;
        String e10 = fk.u.f51776a.e(R$string.discount_label_off, str);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(e10);
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(40, true), 0, length, 33);
        spannableStringBuilder.setSpan(new AbsoluteSizeSpan(20, true), length, e10.length(), 33);
        textView.setText(spannableStringBuilder);
        textView.getViewTreeObserver().addOnGlobalLayoutListener(new b(textView, this, e10));
    }

    private final String D(int i10) {
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
                return fk.u.f51776a.d(R$string.ad2pay_subscribe_btn_unit_year);
            }
            return fk.u.f51776a.d(R$string.ad2pay_subscribe_btn_unit_month);
        }
        return fk.u.f51776a.d(R$string.ad2pay_subscribe_btn_unit_week);
    }

    private final String E(int i10, String str) {
        if (str != null && str.length() != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            if (i10 != 6) {
                                if (i10 != 7) {
                                    return str;
                                }
                            }
                        }
                    }
                    return fk.u.f51776a.e(R$string.subs_type_view_renew_per_year, str);
                }
                return fk.u.f51776a.e(R$string.subs_type_view_renew_per_month, str);
            }
            return fk.u.f51776a.e(R$string.subs_type_view_renew_per_week, str);
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String F() {
        String str = this.f46434e;
        if (Intrinsics.areEqual(str, "mission_center")) {
            return "c";
        }
        if (Intrinsics.areEqual(str, "immerse_page")) {
            if (Intrinsics.areEqual(this.f46436g, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS)) {
                return "a";
            }
            if (Intrinsics.areEqual(this.f46436g, "B")) {
                return DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B;
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel G() {
        return (BillingViewModel) this.f46443n.getValue();
    }

    private final ViewModelProvider J() {
        return (ViewModelProvider) this.f46442m.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
        this.f46441l = true;
        fk.u.j(fk.u.f51776a, R$string.subscription_detail_activity_subs_success, 0, 2, null);
        EventManager.U0(EventManager.f42463a, "ad_to_subscription", this.f46438i, gPayPriceInfo, str, this.f46435f, null, null, Integer.valueOf(i10), null, null, TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT, null);
        this.f46432c.invoke();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(List<? extends Object> list) {
        g();
        SubsSku subsSku = this.f46438i;
        if (subsSku != null) {
            jk.u.k(subsSku, list);
            N(subsSku);
        }
    }

    private final void M() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        new fk.e(requireContext, viewLifecycleOwner, G(), new c()).d();
    }

    private final void N(SubsSku subsSku) {
        ConstraintLayout constraintLayout;
        ImageView imageView;
        W();
        AdToSubscribeDialogBinding adToSubscribeDialogBinding = this.f46431b;
        if (adToSubscribeDialogBinding != null && (imageView = adToSubscribeDialogBinding.f38594f) != null) {
            imageView.setOnClickListener(new d());
        }
        AdToSubscribeDialogBinding adToSubscribeDialogBinding2 = this.f46431b;
        if (adToSubscribeDialogBinding2 != null && (constraintLayout = adToSubscribeDialogBinding2.f38589a) != null) {
            constraintLayout.setOnClickListener(new e(subsSku));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel O(Ad2SubscribeDialog ad2SubscribeDialog) {
        return (BillingViewModel) ad2SubscribeDialog.J().get(BillingViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider P(Ad2SubscribeDialog ad2SubscribeDialog) {
        return new ViewModelProvider(ad2SubscribeDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Q(Ad2SubscribeDialog ad2SubscribeDialog, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ad2SubscribeDialog.dismiss();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R(boolean z10) {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S() {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T() {
        SubsSku subsSku = this.f46438i;
        String str = (subsSku == null || (str = subsSku.getSkuId()) == null) ? "" : "";
        if (str.length() == 0) {
            dismiss();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zc.g(le.h.f62164a.b(), CollectionsKt.t(str)));
        U(arrayList);
    }

    private final void V() {
        Float f10;
        Ad2PayConfig ad2PayConfig = this.f46437h;
        if (ad2PayConfig != null) {
            this.f46438i = ad2PayConfig.getSubscribeResp();
            String originalPrice = ad2PayConfig.getOriginalPrice();
            if (originalPrice != null) {
                f10 = StringsKt.s(originalPrice);
            } else {
                f10 = null;
            }
            this.f46439j = f10;
            this.f46440k = ad2PayConfig.getCurrencySymbol();
        }
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0(String str) {
        G().W(new a.g(str));
    }

    private final void z() {
        SubsSku subsSku;
        Ad2PayConfig ad2PayConfig = this.f46437h;
        if (ad2PayConfig != null) {
            subsSku = ad2PayConfig.getSubscribeResp();
        } else {
            subsSku = null;
        }
        if (subsSku == null) {
            dismiss();
        }
    }

    @Nullable
    public final BaseEpisode H() {
        return this.f46435f;
    }

    @NotNull
    public final String I() {
        return this.f46434e;
    }

    public final void U(@NotNull List<zc.g> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        G().W(new a.h(list));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:31|(1:33)(1:72)|34|(3:(1:39)(1:70)|40|(10:42|(2:44|(1:46)(1:47))|48|(7:(8:51|(2:53|(2:55|(1:57)))|66|67|59|60|61|62)|68|67|59|60|61|62)|69|67|59|60|61|62))|71|48|(0)|69|67|59|60|61|62) */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0158, code lost:
        if (r4 != 7) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a9, code lost:
        jk.b0.d(r3.f38601m);
     */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014c  */
    @android.annotation.SuppressLint({"SetTextI18n"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void W() {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.purchase.Ad2SubscribeDialog.W():void");
    }

    public final void X(@Nullable Ad2PayConfig ad2PayConfig) {
        this.f46437h = ad2PayConfig;
    }

    public final void Y(@Nullable BaseEpisode baseEpisode) {
        this.f46435f = baseEpisode;
    }

    public final void Z(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f46434e = str;
    }

    public final void a0(@Nullable String str) {
        this.f46436g = str;
    }

    public final void b0(@NotNull Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f46433d = function1;
    }

    public final void c0(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f46432c = function0;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        this.f46433d.invoke(Boolean.valueOf(this.f46441l));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.purchase.StateDialogFragment
    public void j() {
        super.j();
        if (this.f46438i == null) {
            dismiss();
        } else {
            A();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        Intrinsics.checkNotNullExpressionValue(onCreateDialog, "onCreateDialog(...)");
        onCreateDialog.setCanceledOnTouchOutside(false);
        Window window = onCreateDialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        return onCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    @SuppressLint({"SetTextI18n"})
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        AdToSubscribeDialogBinding adToSubscribeDialogBinding = (AdToSubscribeDialogBinding) DataBindingUtil.inflate(inflater, R$layout.ad_to_subscribe_dialog, viewGroup, false);
        if (adToSubscribeDialogBinding != null) {
            ImageView icCloseDialog = adToSubscribeDialogBinding.f38594f;
            Intrinsics.checkNotNullExpressionValue(icCloseDialog, "icCloseDialog");
            jk.b0.c(icCloseDialog, 0L, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit Q;
                    Q = Ad2SubscribeDialog.Q(Ad2SubscribeDialog.this, (View) obj);
                    return Q;
                }
            }, 1, null);
            StateViewGroup pageStateView = adToSubscribeDialogBinding.f38598j;
            Intrinsics.checkNotNullExpressionValue(pageStateView, "pageStateView");
            k(pageStateView);
        } else {
            adToSubscribeDialogBinding = null;
        }
        this.f46431b = adToSubscribeDialogBinding;
        Intrinsics.checkNotNull(adToSubscribeDialogBinding);
        View root = adToSubscribeDialogBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        String str;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        z();
        l();
        M();
        V();
        EventManager eventManager = EventManager.f42463a;
        String str2 = this.f46434e;
        BaseEpisode baseEpisode = this.f46435f;
        SubsSku subsSku = this.f46438i;
        if (subsSku != null) {
            str = subsSku.getSkuId();
        } else {
            str = null;
        }
        eventManager.X("ad_to_subscription", str2, baseEpisode, str, F());
    }
}
