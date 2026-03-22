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
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.eventbus.SubsExpansionShowEvent;
import com.startshorts.androidplayer.bean.eventbus.TTPResultEvent;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.DialogFragmentSubsExpansionNewBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.dialog.immersion.a;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionNewDialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.GradientTextView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import fk.e;
import fk.q;
import fk.s;
import fk.v;
import fk.z;
import java.util.ArrayList;
import java.util.List;
import jk.b0;
import jk.u;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.h;
import zc.g;
/* compiled from: SubsExpansionNewDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsExpansionNewDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,624:1\n470#2:625\n470#2:626\n470#2:627\n*S KotlinDebug\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog\n*L\n158#1:625\n230#1:626\n397#1:627\n*E\n"})
/* loaded from: classes7.dex */
public final class SubsExpansionNewDialog extends BaseDialogFragment<DialogFragmentSubsExpansionNewBinding> {
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final a f46565y = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private SubsSku f46566i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private BaseEpisode f46567j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private b f46568k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f46569l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f46570m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private String f46571n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private String f46572o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f46573p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f46574q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f46575r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f46576s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f46577t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f46578u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private r f46579v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final i f46580w = kotlin.c.b(new Function0() { // from class: ti.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider m02;
            m02 = SubsExpansionNewDialog.m0(SubsExpansionNewDialog.this);
            return m02;
        }
    });
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final i f46581x = kotlin.c.b(new Function0() { // from class: ti.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel l02;
            l02 = SubsExpansionNewDialog.l0(SubsExpansionNewDialog.this);
            return l02;
        }
    });

    /* compiled from: SubsExpansionNewDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsExpansionNewDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: SubsExpansionNewDialog.kt */
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
            SubsExpansionNewDialog.this.x0(scene);
        }

        @Override // fk.e.a
        public void c(TTPInfoResult payResultInfo) {
            Intrinsics.checkNotNullParameter(payResultInfo, "payResultInfo");
            e.a.C0745a.c(this, payResultInfo);
            Integer orderStatus = payResultInfo.getOrderStatus();
            if (orderStatus != null && orderStatus.intValue() == 1) {
                BaseDialogFragment.A(SubsExpansionNewDialog.this, R$string.subscription_detail_activity_subs_success, 0, 2, null);
                AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                bf.e.f2616a.i().i();
                MatchEventUtil matchEventUtil = MatchEventUtil.f48183a;
                String currencyCode = payResultInfo.getCurrencyCode();
                String str = "";
                if (currencyCode == null) {
                    currencyCode = "";
                }
                String price = payResultInfo.getPrice();
                if (price == null) {
                    price = "";
                }
                String orderNo = payResultInfo.getOrderNo();
                if (orderNo != null) {
                    str = orderNo;
                }
                matchEventUtil.h(currencyCode, price, str);
                SubsExpansionNewDialog.this.k0("success");
                b Z = SubsExpansionNewDialog.this.Z();
                if (Z != null) {
                    Z.a();
                }
                SubsExpansionNewDialog.this.dismiss();
                return;
            }
            BaseDialogFragment.A(SubsExpansionNewDialog.this, R$string.payment_failure, 0, 2, null);
            SubsExpansionNewDialog.this.k0("failure");
        }

        @Override // fk.e.a
        public void d(int i10, String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            SubsExpansionNewDialog.this.d0(i10, str, gpSkuId, priceInfo);
        }

        @Override // fk.e.a
        public void e(List<? extends Object> list) {
            SubsSku a02 = SubsExpansionNewDialog.this.a0();
            if (a02 != null) {
                SubsExpansionNewDialog subsExpansionNewDialog = SubsExpansionNewDialog.this;
                u.k(a02, list);
                if (subsExpansionNewDialog.f46570m) {
                    subsExpansionNewDialog.g0(a02);
                } else {
                    subsExpansionNewDialog.j0(a02);
                }
                subsExpansionNewDialog.h0(a02);
            }
        }

        @Override // fk.e.a
        public void f() {
            SubsExpansionNewDialog.this.o0();
        }
    }

    /* compiled from: SubsExpansionNewDialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSubsExpansionNewDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$initClickListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,624:1\n774#2:625\n865#2,2:626\n1611#2,9:628\n1863#2:637\n1864#2:639\n1620#2:640\n1#3:638\n*S KotlinDebug\n*F\n+ 1 SubsExpansionNewDialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$initClickListener$1\n*L\n424#1:625\n424#1:626,2\n424#1:628,9\n424#1:637\n424#1:639\n424#1:640\n424#1:638\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Integer num;
            Integer num2;
            Integer num3;
            String str;
            SkuPaymentMethod skuPaymentMethod;
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsSku a02 = SubsExpansionNewDialog.this.a0();
            if (a02 != null) {
                SubsExpansionNewDialog subsExpansionNewDialog = SubsExpansionNewDialog.this;
                if (subsExpansionNewDialog.f46569l) {
                    SubsSku a03 = subsExpansionNewDialog.a0();
                    if (a03 != null) {
                        ud.a.f68411a.p0(true);
                        BaseEpisode Y = subsExpansionNewDialog.Y();
                        String str2 = null;
                        if (Y != null) {
                            num = Integer.valueOf(Y.getShortPlayId());
                        } else {
                            num = null;
                        }
                        BaseEpisode Y2 = subsExpansionNewDialog.Y();
                        if (Y2 != null) {
                            num2 = Integer.valueOf(Y2.getId());
                        } else {
                            num2 = null;
                        }
                        BaseEpisode Y3 = subsExpansionNewDialog.Y();
                        if (Y3 != null) {
                            num3 = Integer.valueOf(Y3.getEpisodeNum());
                        } else {
                            num3 = null;
                        }
                        q qVar = q.f51745a;
                        String string = qVar.c(qVar.b()).getString("upack");
                        String c02 = subsExpansionNewDialog.c0();
                        String skuId = a03.getSkuId();
                        String productId = a03.getProductId();
                        List<SkuPaymentMethod> productExtendList = a03.getProductExtendList();
                        if (productExtendList != null && (skuPaymentMethod = (SkuPaymentMethod) CollectionsKt.firstOrNull(productExtendList)) != null) {
                            str = skuPaymentMethod.getCountryCode();
                        } else {
                            str = null;
                        }
                        List<SkuPaymentMethod> productExtendList2 = a03.getProductExtendList();
                        if (productExtendList2 != null) {
                            ArrayList<SkuPaymentMethod> arrayList = new ArrayList();
                            for (Object obj : productExtendList2) {
                                Integer payType = ((SkuPaymentMethod) obj).getPayType();
                                int a10 = qf.e.f65327a.a();
                                if (payType == null || payType.intValue() != a10) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            for (SkuPaymentMethod skuPaymentMethod2 : arrayList) {
                                Integer payType2 = skuPaymentMethod2.getPayType();
                                if (payType2 != null) {
                                    arrayList2.add(payType2);
                                }
                            }
                            str2 = CollectionsKt.A0(arrayList2, ",", null, null, 0, null, null, 62, null);
                        }
                        ABTestFactory aBTestFactory = ABTestFactory.f42224a;
                        s.f51749a.f(new s.a(2, null, skuId, productId, null, null, null, num, num2, num3, null, string, null, null, str, c02, str2, null, aBTestFactory.x1().getAbTestKey(), aBTestFactory.x1().abTestValue(), 0, a03.getEv(), a03.getH5JsonParam(), 12370, null));
                        return;
                    }
                    return;
                }
                subsExpansionNewDialog.X().W(new a.j(subsExpansionNewDialog.c0(), subsExpansionNewDialog.h(), a02, subsExpansionNewDialog.Y(), null, 0, null, null, null, null, null, null, 4080, null));
            }
        }
    }

    /* compiled from: SubsExpansionNewDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsExpansionNewDialog.this.dismiss();
        }
    }

    /* compiled from: SubsExpansionNewDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements a.b {
        f() {
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void a() {
            SubsExpansionNewDialog.this.X().W(new a.i(null, null, 3, null));
        }

        @Override // com.startshorts.androidplayer.ui.dialog.immersion.a.b
        public void onDismiss() {
            a.b.C0634a.a(this);
        }
    }

    private final void V() {
        X().W(new a.c("expansion"));
    }

    private final String W(int i10) {
        if (i10 != 2) {
            if (i10 != 4) {
                if (i10 != 6) {
                    if (i10 != 7) {
                        return fk.u.f51776a.d(R$string.subs_type_week_unit);
                    }
                }
            }
            return fk.u.f51776a.d(R$string.subs_type_year_unit);
        }
        return fk.u.f51776a.d(R$string.subs_type_month_unit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel X() {
        return (BillingViewModel) this.f46581x.getValue();
    }

    private final ViewModelProvider b0() {
        return (ViewModelProvider) this.f46580w.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c0() {
        return "retention_pop_sku_pay";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
        fk.u.j(fk.u.f51776a, R$string.subscription_detail_activity_subs_success, 0, 2, null);
        EventManager.U0(EventManager.f42463a, c0(), this.f46566i, gPayPriceInfo, str, this.f46567j, null, null, Integer.valueOf(i10), null, null, TTVideoEngineInterface.PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT, null);
        b bVar = this.f46568k;
        if (bVar != null) {
            bVar.a();
        }
        dismiss();
    }

    private final void e0() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        new fk.e(requireContext, viewLifecycleOwner, X(), new c()).d();
    }

    private final void f0() {
        m().f39060n.setOnClickListener(new d());
        m().f39053g.setOnClickListener(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0(SubsSku subsSku) {
        SkuPaymentMethod skuPaymentMethod;
        String originPriceText;
        String str;
        String str2;
        Integer num;
        this.f46566i = subsSku;
        m().f39066t.setText(W(subsSku.getType()));
        this.f46569l = true;
        SubsSku subsSku2 = this.f46566i;
        String str3 = null;
        Boolean bool = null;
        if (subsSku2 != null) {
            skuPaymentMethod = u.b(subsSku2);
        } else {
            skuPaymentMethod = null;
        }
        if (skuPaymentMethod == null || !skuPaymentMethod.isShowDiscountPrice() ? skuPaymentMethod == null || (originPriceText = skuPaymentMethod.getOriginPriceText()) == null : (originPriceText = skuPaymentMethod.getDiscountPriceText()) == null) {
            str = "";
        } else {
            str = originPriceText;
        }
        if (skuPaymentMethod != null) {
            str2 = skuPaymentMethod.getSkuId();
        } else {
            str2 = null;
        }
        this.f46571n = str2;
        b0.d(m().f39066t);
        b0.l(m().f39058l);
        BaseTextView baseTextView = m().f39065s;
        if (skuPaymentMethod != null) {
            SubsSku subsSku3 = this.f46566i;
            if (subsSku3 != null) {
                num = Integer.valueOf(subsSku3.getType());
            } else {
                num = null;
            }
            SubsSku subsSku4 = this.f46566i;
            if (subsSku4 != null) {
                bool = Boolean.valueOf(subsSku4.isDayToWeekSub());
            }
            str3 = skuPaymentMethod.formatRenewPrice(num, bool);
        }
        baseTextView.setText(str3);
        BaseTextView tvPrice = m().f39064r;
        Intrinsics.checkNotNullExpressionValue(tvPrice, "tvPrice");
        y.h(tvPrice, str, new int[]{Color.parseColor("#F6610F"), Color.parseColor("#FEDAA4")}, null, Float.valueOf(2.0f), 4, null);
        b0.d(m().f39061o);
        b0.d(m().f39067u);
        b0.d(m().f39052f);
        m().f39062p.setText(fk.u.f51776a.d(R$string.subs_expansion_dialog_first_day_special));
        b0.l(m().f39062p);
        b0.l(m().f39050d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0(SubsSku subsSku) {
        String str;
        EventManager eventManager = EventManager.f42463a;
        String c02 = c0();
        BaseEpisode baseEpisode = this.f46567j;
        ud.a aVar = ud.a.f68411a;
        EventManager.P0(eventManager, c02, subsSku, baseEpisode, aVar.p(), null, null, null, 112, null);
        String c03 = c0();
        BaseEpisode baseEpisode2 = this.f46567j;
        ActResource p10 = aVar.p();
        Integer valueOf = Integer.valueOf(this.f46569l ? 1 : 0);
        if (this.f46570m) {
            str = this.f46571n;
        } else {
            str = null;
        }
        eventManager.d1(c03, subsSku, baseEpisode2, p10, false, valueOf, str);
    }

    private final void i0() {
        GradientTextView tvTitle = m().f39068v;
        Intrinsics.checkNotNullExpressionValue(tvTitle, "tvTitle");
        y.h(tvTitle, fk.u.f51776a.d(R$string.subs_expansion_dialog_title), new int[]{Color.parseColor("#CD7FAC"), Color.parseColor("#F3AE66"), Color.parseColor("#F8E4C3"), Color.parseColor("#F9D4A5")}, new float[]{0.0f, 0.3f, 0.7f, 1.0f}, null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0(SubsSku subsSku) {
        String originPriceText;
        int i10;
        int i11;
        long j10;
        int i12;
        int i13;
        SkuPaymentMethod skuPaymentMethod;
        String originPriceText2;
        String str;
        Integer num;
        Integer discountPercent;
        this.f46566i = subsSku;
        m().f39066t.setText(W(subsSku.getType()));
        boolean o10 = h.f65328a.o(subsSku);
        String str2 = "";
        if (ABTestFactory.f42224a.X0().isEnable().invoke().booleanValue() && o10) {
            this.f46569l = true;
            SubsSku subsSku2 = this.f46566i;
            String str3 = null;
            Boolean bool = null;
            if (subsSku2 != null) {
                skuPaymentMethod = u.b(subsSku2);
            } else {
                skuPaymentMethod = null;
            }
            if (skuPaymentMethod == null || !skuPaymentMethod.isShowDiscountPrice() ? !(skuPaymentMethod == null || (originPriceText2 = skuPaymentMethod.getOriginPriceText()) == null) : (originPriceText2 = skuPaymentMethod.getDiscountPriceText()) != null) {
                str2 = originPriceText2;
            }
            if (skuPaymentMethod != null) {
                str = skuPaymentMethod.getSkuId();
            } else {
                str = null;
            }
            this.f46571n = str;
            if (skuPaymentMethod != null) {
                i10 = skuPaymentMethod.getDiscountPeriodNum();
            } else {
                i10 = 0;
            }
            if (skuPaymentMethod != null && (discountPercent = skuPaymentMethod.getDiscountPercent()) != null) {
                i11 = discountPercent.intValue();
            } else {
                i11 = 0;
            }
            b0.l(m().f39066t);
            b0.l(m().f39058l);
            BaseTextView baseTextView = m().f39065s;
            if (skuPaymentMethod != null) {
                SubsSku subsSku3 = this.f46566i;
                if (subsSku3 != null) {
                    num = Integer.valueOf(subsSku3.getType());
                } else {
                    num = null;
                }
                SubsSku subsSku4 = this.f46566i;
                if (subsSku4 != null) {
                    bool = Boolean.valueOf(subsSku4.isDayToWeekSub());
                }
                str3 = skuPaymentMethod.formatRenewPrice(num, bool);
            }
            baseTextView.setText(str3);
        } else {
            this.f46569l = false;
            if (!subsSku.enableDiscount() ? (originPriceText = subsSku.getOriginPriceText()) != null : (originPriceText = subsSku.getDiscountPriceText()) != null) {
                str2 = originPriceText;
            }
            SubsSku subsSku5 = this.f46566i;
            if (subsSku5 != null) {
                i10 = subsSku5.getFlavorPayCycleCount();
            } else {
                i10 = 0;
            }
            SubsSku subsSku6 = this.f46566i;
            if (subsSku6 != null) {
                i11 = u.d(subsSku6);
            } else {
                i11 = 0;
            }
            b0.d(m().f39058l);
            m().f39065s.setText(subsSku.formatRenewPrice());
        }
        String str4 = str2;
        int i14 = i11;
        BaseTextView tvPrice = m().f39064r;
        Intrinsics.checkNotNullExpressionValue(tvPrice, "tvPrice");
        y.h(tvPrice, str4, new int[]{Color.parseColor("#F6610F"), Color.parseColor("#FEDAA4")}, null, Float.valueOf(2.0f), 4, null);
        if (i10 > 1) {
            SkuPaymentMethod.Companion companion = SkuPaymentMethod.Companion;
            SubsSku subsSku7 = this.f46566i;
            if (subsSku7 != null) {
                i12 = subsSku7.getType();
            } else {
                i12 = 0;
            }
            String formatCycleCount = companion.formatCycleCount(i10, i12);
            m().f39061o.setText(formatCycleCount);
            BaseTextView baseTextView2 = m().f39061o;
            if (formatCycleCount.length() == 0) {
                i13 = 8;
            } else {
                i13 = 0;
            }
            baseTextView2.setVisibility(i13);
            this.f46573p = true;
        } else {
            b0.d(m().f39061o);
            this.f46573p = false;
        }
        SubsSku subsSku8 = this.f46566i;
        if (subsSku8 != null) {
            j10 = subsSku8.getExpireTime();
        } else {
            j10 = 0;
        }
        int K = (int) ((j10 - DeviceUtil.f48146a.K()) / 1000);
        if (K > 0 && i14 > 0) {
            u0(K);
            b0.l(m().f39067u);
            if (AccountRepo.f43052a.H0()) {
                au.c.d().l(new SubsExpansionShowEvent());
            }
            this.f46577t = true;
        } else {
            U();
            b0.d(m().f39067u);
            this.f46577t = false;
        }
        if (i14 > 0) {
            m().f39062p.setText(fk.u.f51776a.e(R$string.discount_label_off, Integer.valueOf(i14)));
            b0.l(m().f39062p);
            if (K > 0) {
                b0.l(m().f39052f);
            } else {
                b0.d(m().f39052f);
            }
            b0.l(m().f39050d);
            this.f46575r = true;
        } else {
            b0.d(m().f39050d);
            this.f46575r = false;
        }
        t0();
        SubsSku subsSku9 = this.f46566i;
        if (subsSku9 != null) {
            SubsExpansionManager.f42751a.v(subsSku9.getSubscriptionId(), subsSku9.getProductId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k0(String str) {
        EventManager eventManager = EventManager.f42463a;
        SubsSku subsSku = this.f46566i;
        EventManager.i1(eventManager, (subsSku == null || (r1 = subsSku.getSkuId()) == null) ? "" : "", str, null, 0, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel l0(SubsExpansionNewDialog subsExpansionNewDialog) {
        return (BillingViewModel) subsExpansionNewDialog.b0().get(BillingViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider m0(SubsExpansionNewDialog subsExpansionNewDialog) {
        return new ViewModelProvider(subsExpansionNewDialog);
    }

    private final void n0() {
        String str;
        if (!this.f46570m) {
            SubsExpansionManager.f42751a.w(this.f46566i, true);
        }
        SubsSku subsSku = this.f46566i;
        if (subsSku != null) {
            if (subsSku != null) {
                str = subsSku.getSkuId();
            } else {
                str = null;
            }
            if (str != null && str.length() != 0) {
                V();
                EventManager.W0(EventManager.f42463a, c0(), "other", this.f46567j, null, null, null, 56, null);
                return;
            }
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0() {
        SubsSku subsSku = this.f46566i;
        String str = (subsSku == null || (str = subsSku.getSkuId()) == null) ? "" : "";
        if (str.length() == 0) {
            dismiss();
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new g(le.h.f62164a.b(), CollectionsKt.t(str)));
        p0(arrayList);
    }

    private final void p0(List<g> list) {
        X().W(new a.h(list));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void t0() {
        String str = this.f46572o;
        if (str != null) {
            switch (str.hashCode()) {
                case 49:
                    if (str.equals("1")) {
                        this.f46574q = true;
                        this.f46578u = false;
                        this.f46576s = false;
                        break;
                    }
                    break;
                case 50:
                    if (str.equals("2")) {
                        this.f46574q = true;
                        this.f46578u = true;
                        this.f46576s = false;
                        break;
                    }
                    break;
                case 51:
                    if (str.equals("3")) {
                        this.f46574q = true;
                        this.f46576s = true;
                        this.f46578u = false;
                        break;
                    }
                    break;
                case 52:
                    if (str.equals("4")) {
                        this.f46578u = true;
                        this.f46576s = false;
                        this.f46574q = false;
                        break;
                    }
                    break;
                case 53:
                    if (str.equals("5")) {
                        this.f46576s = true;
                        this.f46578u = false;
                        this.f46574q = false;
                        break;
                    }
                    break;
                case 54:
                    if (str.equals(SubsSku.SCENE_AD_2_PAY)) {
                        this.f46578u = true;
                        this.f46576s = true;
                        this.f46574q = false;
                        break;
                    }
                    break;
                case 55:
                    if (str.equals("7")) {
                        this.f46574q = false;
                        this.f46578u = false;
                        this.f46576s = false;
                        break;
                    }
                    break;
            }
            if (!this.f46574q && this.f46573p) {
                b0.l(m().f39061o);
            } else {
                b0.d(m().f39061o);
            }
            if (!this.f46578u && this.f46577t) {
                b0.l(m().f39067u);
            } else {
                b0.d(m().f39067u);
                b0.d(m().f39052f);
            }
            if (!this.f46576s && this.f46575r) {
                b0.l(m().f39062p);
                b0.l(m().f39050d);
                if (this.f46578u && this.f46577t) {
                    b0.l(m().f39052f);
                    return;
                }
                return;
            }
            if (this.f46578u || !this.f46577t) {
                b0.d(m().f39050d);
            }
            b0.d(m().f39052f);
            b0.d(m().f39062p);
        }
        this.f46574q = true;
        this.f46578u = true;
        this.f46576s = true;
        if (!this.f46574q) {
        }
        b0.d(m().f39061o);
        if (!this.f46578u) {
        }
        b0.d(m().f39067u);
        b0.d(m().f39052f);
        if (!this.f46576s) {
        }
        if (this.f46578u) {
        }
        b0.d(m().f39050d);
        b0.d(m().f39052f);
        b0.d(m().f39062p);
    }

    private final void u0(int i10) {
        if (i10 == 0) {
            return;
        }
        U();
        this.f46579v = CoroutineUtil.f48072a.d(i10, new Function1() { // from class: ti.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit v02;
                v02 = SubsExpansionNewDialog.v0(SubsExpansionNewDialog.this, ((Integer) obj).intValue());
                return v02;
            }
        }, new Function0() { // from class: ti.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit w02;
                w02 = SubsExpansionNewDialog.w0(SubsExpansionNewDialog.this);
                return w02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(SubsExpansionNewDialog subsExpansionNewDialog, int i10) {
        subsExpansionNewDialog.m().f39067u.setText(TimeUtil.f48175a.c(i10, true));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(SubsExpansionNewDialog subsExpansionNewDialog) {
        SubsExpansionManager.f42751a.j();
        subsExpansionNewDialog.dismiss();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(String str) {
        X().W(new a.g(str));
    }

    public final void U() {
        r rVar = this.f46579v;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f46579v = null;
    }

    @Nullable
    public final BaseEpisode Y() {
        return this.f46567j;
    }

    @Nullable
    public final b Z() {
        return this.f46568k;
    }

    @Nullable
    public final SubsSku a0() {
        return this.f46566i;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        U();
        EventManager.f42463a.a1(c0(), this.f46566i, this.f46567j, ud.a.f68411a.p(), false);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return R$layout.dialog_fragment_subs_expansion_new;
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
    public void onResume() {
        super.onResume();
        ud.a aVar = ud.a.f68411a;
        if (aVar.O()) {
            aVar.p0(false);
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new com.startshorts.androidplayer.ui.dialog.immersion.a(requireContext, new f()).show();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        SubsSku subsSku;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        boolean z10 = false;
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
        if (AccountRepo.f43052a.I0() && (subsSku = this.f46566i) != null && subsSku.isDayToWeekSub() && h.f65328a.o(this.f46566i)) {
            z10 = true;
        }
        this.f46570m = z10;
        this.f46572o = ABTestFactory.f42224a.R0().abTestValue();
        i0();
        f0();
        e0();
        n0();
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

    public final void q0(@Nullable BaseEpisode baseEpisode) {
        this.f46567j = baseEpisode;
    }

    public final void r0(@Nullable b bVar) {
        this.f46568k = bVar;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        q("receive AcknowledgePurchaseResult -> " + result);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveTTPResultEvent(@NotNull TTPResultEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive ttppmentResultEvent");
        X().W(new a.i(event.getOrderNo(), event.getOrderType()));
    }

    public final void s0(@Nullable SubsSku subsSku) {
        this.f46566i = subsSku;
    }
}
