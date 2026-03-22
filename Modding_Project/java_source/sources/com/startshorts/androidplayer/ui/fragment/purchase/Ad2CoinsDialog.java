package com.startshorts.androidplayer.ui.fragment.purchase;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import androidx.databinding.DataBindingUtil;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import com.hades.aar.pagestate.StateViewGroup;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.Ad2PayConfig;
import com.startshorts.androidplayer.databinding.AdToCoinsDialogBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.tencent.wcdb.FileUtils;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ad2CoinsDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAd2CoinsDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2CoinsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n+ 4 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n*L\n1#1,325:1\n1#2:326\n470#3:327\n470#3:328\n28#4:329\n*S KotlinDebug\n*F\n+ 1 Ad2CoinsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog\n*L\n269#1:327\n274#1:328\n299#1:329\n*E\n"})
/* loaded from: classes7.dex */
public final class Ad2CoinsDialog extends StateDialogFragment {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f46414m = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private AdToCoinsDialogBinding f46415b;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private CoinSku f46418e;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private BaseEpisode f46420g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f46421h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Ad2PayConfig f46422i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f46423j;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private Function0<Unit> f46416c = new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit N;
            N = Ad2CoinsDialog.N();
            return N;
        }
    };
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private Function1<? super Boolean, Unit> f46417d = new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.c
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Unit M;
            M = Ad2CoinsDialog.M(((Boolean) obj).booleanValue());
            return M;
        }
    };
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private String f46419f = "";
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final ms.i f46424k = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider K;
            K = Ad2CoinsDialog.K(Ad2CoinsDialog.this);
            return K;
        }
    });
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final ms.i f46425l = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel J;
            J = Ad2CoinsDialog.J(Ad2CoinsDialog.this);
            return J;
        }
    });

    /* compiled from: Ad2CoinsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Ad2CoinsDialog a() {
            return new Ad2CoinsDialog();
        }

        private a() {
        }
    }

    /* compiled from: Ad2CoinsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements e.a {
        b() {
        }

        @Override // fk.e.a
        public void a(String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            Ad2CoinsDialog.this.F(str, priceInfo);
        }

        @Override // fk.e.a
        public void b(String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            Ad2CoinsDialog.this.Y(scene);
        }

        @Override // fk.e.a
        public void c(TTPInfoResult tTPInfoResult) {
            e.a.C0745a.c(this, tTPInfoResult);
        }

        @Override // fk.e.a
        public void d(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
            e.a.C0745a.b(this, i10, str, str2, gPayPriceInfo);
        }

        @Override // fk.e.a
        public void e(List<? extends Object> list) {
            Ad2CoinsDialog.this.G(list);
        }

        @Override // fk.e.a
        public void f() {
            Ad2CoinsDialog.this.P();
        }
    }

    /* compiled from: Ad2CoinsDialog.kt */
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
            EventManager eventManager = EventManager.f42463a;
            String C = Ad2CoinsDialog.this.C();
            BaseEpisode B = Ad2CoinsDialog.this.B();
            CoinSku D = Ad2CoinsDialog.this.D();
            if (D != null) {
                str = D.getGpSkuId();
            } else {
                str = null;
            }
            eventManager.W("ad_to_purchase", C, B, str, Ad2CoinsDialog.this.z());
            Ad2CoinsDialog.this.dismiss();
        }
    }

    /* compiled from: Ad2CoinsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ CoinSku f46429f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(CoinSku coinSku) {
            super(1500L);
            this.f46429f = coinSku;
        }

        @Override // yd.d
        public void a(View v10) {
            BaseActivity baseActivity;
            Intrinsics.checkNotNullParameter(v10, "v");
            FragmentActivity activity = Ad2CoinsDialog.this.getActivity();
            String str = null;
            if (activity instanceof BaseActivity) {
                baseActivity = (BaseActivity) activity;
            } else {
                baseActivity = null;
            }
            if (baseActivity != null) {
                Ad2CoinsDialog ad2CoinsDialog = Ad2CoinsDialog.this;
                ad2CoinsDialog.A().W(new a.e("ad_to_purchase", baseActivity, this.f46429f, ad2CoinsDialog.B(), false, null, ad2CoinsDialog.C(), ad2CoinsDialog.z(), 48, null));
                EventManager eventManager = EventManager.f42463a;
                String C = ad2CoinsDialog.C();
                BaseEpisode B = ad2CoinsDialog.B();
                CoinSku D = ad2CoinsDialog.D();
                if (D != null) {
                    str = D.getGpSkuId();
                }
                eventManager.V("ad_to_purchase", C, B, str, ad2CoinsDialog.z());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel A() {
        return (BillingViewModel) this.f46425l.getValue();
    }

    private final ViewModelProvider E() {
        return (ViewModelProvider) this.f46424k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(String str, GPayPriceInfo gPayPriceInfo) {
        this.f46423j = true;
        fk.u.j(fk.u.f51776a, R$string.top_up_fragment_recharge_success, 0, 2, null);
        EventManager.T0(EventManager.f42463a, "ad_to_purchase", this.f46418e, gPayPriceInfo, str, this.f46420g, ud.a.f68411a.p(), null, null, null, FileUtils.S_IRWXU, null);
        this.f46416c.invoke();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(List<? extends Object> list) {
        g();
        CoinSku coinSku = this.f46418e;
        if (coinSku != null) {
            jk.u.l(coinSku, list, false, 2, null);
            I(coinSku);
        }
    }

    private final void H() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        new fk.e(requireContext, viewLifecycleOwner, A(), new b()).d();
    }

    private final void I(CoinSku coinSku) {
        BaseTextView baseTextView;
        ImageView imageView;
        R();
        AdToCoinsDialogBinding adToCoinsDialogBinding = this.f46415b;
        if (adToCoinsDialogBinding != null && (imageView = adToCoinsDialogBinding.f38572c) != null) {
            imageView.setOnClickListener(new c());
        }
        AdToCoinsDialogBinding adToCoinsDialogBinding2 = this.f46415b;
        if (adToCoinsDialogBinding2 != null && (baseTextView = adToCoinsDialogBinding2.f38583n) != null) {
            baseTextView.setOnClickListener(new d(coinSku));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel J(Ad2CoinsDialog ad2CoinsDialog) {
        return (BillingViewModel) ad2CoinsDialog.E().get(BillingViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider K(Ad2CoinsDialog ad2CoinsDialog) {
        return new ViewModelProvider(ad2CoinsDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L(Ad2CoinsDialog ad2CoinsDialog, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ad2CoinsDialog.dismiss();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit M(boolean z10) {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N() {
        return Unit.f60915a;
    }

    private final void O() {
        CoinSku skuResp;
        Ad2PayConfig ad2PayConfig = this.f46422i;
        if (ad2PayConfig != null && (skuResp = ad2PayConfig.getSkuResp()) != null) {
            this.f46418e = skuResp;
        }
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P() {
        CoinSku coinSku = this.f46418e;
        String str = (coinSku == null || (str = coinSku.getGpSkuId()) == null) ? "" : "";
        if (str.length() == 0) {
            dismiss();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zc.g(le.h.f62164a.a(), CollectionsKt.t(str)));
        Q(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y(String str) {
        A().W(new a.f(str));
    }

    private final void x() {
        CoinSku coinSku;
        Ad2PayConfig ad2PayConfig = this.f46422i;
        if (ad2PayConfig != null) {
            coinSku = ad2PayConfig.getSkuResp();
        } else {
            coinSku = null;
        }
        if (coinSku == null) {
            dismiss();
        }
    }

    private final void y() {
        A().W(new a.c("ad_2_coin_dialog"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String z() {
        String str = this.f46419f;
        if (Intrinsics.areEqual(str, "mission_center")) {
            return "c";
        }
        if (Intrinsics.areEqual(str, "immerse_page")) {
            if (Intrinsics.areEqual(this.f46421h, ExifInterface.GPS_MEASUREMENT_IN_PROGRESS)) {
                return "a";
            }
            if (Intrinsics.areEqual(this.f46421h, "B")) {
                return DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B;
            }
        }
        return "";
    }

    @Nullable
    public final BaseEpisode B() {
        return this.f46420g;
    }

    @NotNull
    public final String C() {
        return this.f46419f;
    }

    @Nullable
    public final CoinSku D() {
        return this.f46418e;
    }

    public final void Q(@NotNull List<zc.g> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        A().W(new a.h(list));
    }

    @SuppressLint({"SetTextI18n"})
    public final void R() {
        AdToCoinsDialogBinding adToCoinsDialogBinding;
        Integer productGiveCoins;
        String str;
        String str2;
        CoinSku coinSku = this.f46418e;
        if (coinSku != null && (adToCoinsDialogBinding = this.f46415b) != null) {
            int coins = coinSku.getCoins();
            int i10 = 0;
            if (coinSku.getSkuType() != 7 ? (productGiveCoins = coinSku.getProductGiveCoins()) != null : (productGiveCoins = coinSku.getKeepGiveCoins()) != null) {
                i10 = productGiveCoins.intValue();
            }
            int i11 = coins + i10;
            int i12 = i11 / 10;
            String priceText = coinSku.getPriceText();
            if (priceText == null) {
                priceText = coinSku.getOriginPriceText();
            }
            if (Intrinsics.areEqual(this.f46419f, "immerse_page")) {
                fk.u uVar = fk.u.f51776a;
                String d10 = uVar.d(R$string.ad2pay_immersion_title);
                adToCoinsDialogBinding.f38581l.setText(uVar.d(R$string.ad2pay_immersion_desc));
                str2 = d10;
            } else {
                fk.u uVar2 = fk.u.f51776a;
                String d11 = uVar2.d(R$string.ad2pay_rewards_title);
                int i13 = R$string.ad2pay_rewards_desc;
                Integer valueOf = Integer.valueOf(i11);
                String str3 = "";
                if (priceText == null) {
                    str = "";
                } else {
                    str = priceText;
                }
                String e10 = uVar2.e(i13, valueOf, str, Integer.valueOf(i12));
                BaseTextView tvDesc = adToCoinsDialogBinding.f38581l;
                Intrinsics.checkNotNullExpressionValue(tvDesc, "tvDesc");
                if (priceText != null) {
                    str3 = priceText;
                }
                jk.y.l(tvDesc, e10, new String[]{str3}, Color.parseColor("#F6610F"), yf.a.f70794a.g(), 0.0f, false, null, 112, null);
                str2 = d11;
            }
            BaseTextView tvTitle = adToCoinsDialogBinding.f38584o;
            Intrinsics.checkNotNullExpressionValue(tvTitle, "tvTitle");
            jk.y.h(tvTitle, str2, new int[]{Color.parseColor("#FE6D0C"), Color.parseColor("#FF61D5")}, null, Float.valueOf(1.0f), 4, null);
            adToCoinsDialogBinding.f38579j.setText(String.valueOf(coins));
            adToCoinsDialogBinding.f38577h.setText(String.valueOf(i10));
            if (i10 > 0 && coins > 0) {
                int i14 = (i10 * 100) / coins;
                BaseTextView baseTextView = adToCoinsDialogBinding.f38582m;
                StringBuilder sb2 = new StringBuilder();
                sb2.append('+');
                sb2.append(i14);
                sb2.append('%');
                baseTextView.setText(sb2.toString());
                jk.b0.l(adToCoinsDialogBinding.f38582m);
                jk.b0.l(adToCoinsDialogBinding.f38575f);
            } else {
                jk.b0.d(adToCoinsDialogBinding.f38582m);
                jk.b0.d(adToCoinsDialogBinding.f38575f);
            }
            adToCoinsDialogBinding.f38583n.setText(String.valueOf(priceText));
        }
    }

    public final void S(@Nullable Ad2PayConfig ad2PayConfig) {
        this.f46422i = ad2PayConfig;
    }

    public final void T(@Nullable BaseEpisode baseEpisode) {
        this.f46420g = baseEpisode;
    }

    public final void U(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f46419f = str;
    }

    public final void V(@Nullable String str) {
        this.f46421h = str;
    }

    public final void W(@NotNull Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.f46417d = function1;
    }

    public final void X(@NotNull Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.f46416c = function0;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        this.f46417d.invoke(Boolean.valueOf(this.f46423j));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.purchase.StateDialogFragment
    public void j() {
        super.j();
        if (this.f46418e == null) {
            dismiss();
        } else {
            y();
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
    @NotNull
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        AdToCoinsDialogBinding adToCoinsDialogBinding = (AdToCoinsDialogBinding) DataBindingUtil.inflate(inflater, R$layout.ad_to_coins_dialog, viewGroup, false);
        if (adToCoinsDialogBinding != null) {
            ImageView icCloseDialog = adToCoinsDialogBinding.f38572c;
            Intrinsics.checkNotNullExpressionValue(icCloseDialog, "icCloseDialog");
            jk.b0.c(icCloseDialog, 0L, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit L;
                    L = Ad2CoinsDialog.L(Ad2CoinsDialog.this, (View) obj);
                    return L;
                }
            }, 1, null);
            StateViewGroup pageStateView = adToCoinsDialogBinding.f38576g;
            Intrinsics.checkNotNullExpressionValue(pageStateView, "pageStateView");
            k(pageStateView);
        } else {
            adToCoinsDialogBinding = null;
        }
        this.f46415b = adToCoinsDialogBinding;
        Intrinsics.checkNotNull(adToCoinsDialogBinding);
        View root = adToCoinsDialogBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        String str;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        x();
        l();
        H();
        O();
        EventManager eventManager = EventManager.f42463a;
        String str2 = this.f46419f;
        BaseEpisode baseEpisode = this.f46420g;
        CoinSku coinSku = this.f46418e;
        if (coinSku != null) {
            str = coinSku.getGpSkuId();
        } else {
            str = null;
        }
        eventManager.X("ad_to_purchase", str2, baseEpisode, str, z());
    }
}
