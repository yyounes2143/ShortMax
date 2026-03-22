package com.startshorts.androidplayer.ui.view.purchase.paymentbtn;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtnBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtnView;
import com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a;
import fk.s;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qf.e;
import qf.h;
import yd.d;
/* compiled from: PaymentMethodBtnView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPaymentMethodBtnView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtnView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n254#2:416\n774#3:417\n865#3,2:418\n1611#3,9:420\n1863#3:429\n1864#3:432\n1620#3:433\n295#3,2:434\n295#3,2:436\n774#3:438\n865#3,2:439\n1971#3,14:441\n774#3:455\n865#3,2:456\n1611#3,9:458\n1863#3:467\n1864#3:469\n1620#3:470\n295#3,2:471\n295#3,2:473\n774#3:475\n865#3,2:476\n1#4:430\n1#4:431\n1#4:468\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtnView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView\n*L\n68#1:416\n251#1:417\n251#1:418,2\n251#1:420,9\n251#1:429\n251#1:432\n251#1:433\n257#1:434,2\n263#1:436,2\n298#1:438\n298#1:439,2\n298#1:441,14\n352#1:455\n352#1:456,2\n352#1:458,9\n352#1:467\n352#1:469\n352#1:470\n358#1:471,2\n364#1:473,2\n388#1:475\n388#1:476,2\n251#1:431\n352#1:468\n*E\n"})
/* loaded from: classes7.dex */
public final class PaymentMethodBtnView extends ConstraintLayout implements tj.a {

    /* renamed from: a  reason: collision with root package name */
    private int f47721a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f47722b;

    /* compiled from: PaymentMethodBtnView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47724f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47725g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47726h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsSku f47727i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            super(0L, 1, null);
            this.f47724f = aVar;
            this.f47725g = coinSku;
            this.f47726h = subsSku;
            this.f47727i = subsSku2;
        }

        @Override // yd.d
        public void a(View v10) {
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar;
            Intrinsics.checkNotNullParameter(v10, "v");
            int i10 = PaymentMethodBtnView.this.f47721a;
            if (i10 != 1) {
                if (i10 == 2 && (aVar = this.f47724f) != null) {
                    a.C0648a.b(aVar, PaymentMethodBtnView.this.f47721a, null, this.f47726h, this.f47727i, 2, null);
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47724f;
            if (aVar2 != null) {
                a.C0648a.b(aVar2, PaymentMethodBtnView.this.f47721a, this.f47725g, null, null, 12, null);
            }
        }
    }

    /* compiled from: PaymentMethodBtnView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47729f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47730g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47731h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsSku f47732i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            super(0L, 1, null);
            this.f47729f = aVar;
            this.f47730g = coinSku;
            this.f47731h = subsSku;
            this.f47732i = subsSku2;
        }

        @Override // yd.d
        public void a(View v10) {
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar;
            Intrinsics.checkNotNullParameter(v10, "v");
            int i10 = PaymentMethodBtnView.this.f47721a;
            if (i10 != 1) {
                if (i10 == 2 && (aVar = this.f47729f) != null) {
                    a.C0648a.b(aVar, PaymentMethodBtnView.this.f47721a, null, this.f47731h, this.f47732i, 2, null);
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47729f;
            if (aVar2 != null) {
                a.C0648a.b(aVar2, PaymentMethodBtnView.this.f47721a, this.f47730g, null, null, 12, null);
            }
        }
    }

    /* compiled from: PaymentMethodBtnView.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPaymentMethodBtnView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtnView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$initData$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,415:1\n774#2:416\n865#2,2:417\n1611#2,9:419\n1863#2:428\n1864#2:430\n1620#2:431\n774#2:432\n865#2,2:433\n1611#2,9:435\n1863#2:444\n1864#2:446\n1620#2:447\n1#3:429\n1#3:445\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtnView.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtnView$initData$5\n*L\n204#1:416\n204#1:417,2\n204#1:419,9\n204#1:428\n204#1:430\n204#1:431\n232#1:432\n232#1:433,2\n232#1:435,9\n232#1:444\n232#1:446\n232#1:447\n204#1:429\n232#1:445\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47734f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47735g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47736h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f47737i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f47738j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ String f47739k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ String f47740l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f47741m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ String f47742n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, BaseEpisode baseEpisode, String str, String str2, String str3, String str4, String str5) {
            super(0L, 1, null);
            this.f47734f = aVar;
            this.f47735g = coinSku;
            this.f47736h = subsSku;
            this.f47737i = baseEpisode;
            this.f47738j = str;
            this.f47739k = str2;
            this.f47740l = str3;
            this.f47741m = str4;
            this.f47742n = str5;
        }

        @Override // yd.d
        public void a(View v10) {
            Integer num;
            Integer num2;
            Integer num3;
            String str;
            SkuPaymentMethod skuPaymentMethod;
            Integer num4;
            Integer num5;
            Integer num6;
            String str2;
            SkuPaymentMethod skuPaymentMethod2;
            Intrinsics.checkNotNullParameter(v10, "v");
            int i10 = PaymentMethodBtnView.this.f47721a;
            String str3 = null;
            if (i10 != 1) {
                if (i10 == 2) {
                    com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar = this.f47734f;
                    if (aVar != null) {
                        a.C0648a.c(aVar, PaymentMethodBtnView.this.f47721a, null, this.f47736h, 2, null);
                    }
                    SubsSku subsSku = this.f47736h;
                    if (subsSku != null) {
                        BaseEpisode baseEpisode = this.f47737i;
                        PaymentMethodBtnView paymentMethodBtnView = PaymentMethodBtnView.this;
                        String str4 = this.f47738j;
                        String str5 = this.f47739k;
                        String str6 = this.f47740l;
                        String str7 = this.f47741m;
                        String str8 = this.f47742n;
                        if (baseEpisode != null) {
                            num4 = Integer.valueOf(baseEpisode.getShortPlayId());
                        } else {
                            num4 = null;
                        }
                        if (baseEpisode != null) {
                            num5 = Integer.valueOf(baseEpisode.getId());
                        } else {
                            num5 = null;
                        }
                        if (baseEpisode != null) {
                            num6 = Integer.valueOf(baseEpisode.getEpisodeNum());
                        } else {
                            num6 = null;
                        }
                        int i11 = paymentMethodBtnView.f47721a;
                        String skuId = subsSku.getSkuId();
                        String productId = subsSku.getProductId();
                        List<SkuPaymentMethod> productExtendList = subsSku.getProductExtendList();
                        if (productExtendList != null && (skuPaymentMethod2 = (SkuPaymentMethod) CollectionsKt.firstOrNull(productExtendList)) != null) {
                            str2 = skuPaymentMethod2.getCountryCode();
                        } else {
                            str2 = null;
                        }
                        List<SkuPaymentMethod> productExtendList2 = subsSku.getProductExtendList();
                        if (productExtendList2 != null) {
                            ArrayList<SkuPaymentMethod> arrayList = new ArrayList();
                            for (Object obj : productExtendList2) {
                                Integer payType = ((SkuPaymentMethod) obj).getPayType();
                                int a10 = e.f65327a.a();
                                if (payType == null || payType.intValue() != a10) {
                                    arrayList.add(obj);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList();
                            for (SkuPaymentMethod skuPaymentMethod3 : arrayList) {
                                Integer payType2 = skuPaymentMethod3.getPayType();
                                if (payType2 != null) {
                                    arrayList2.add(payType2);
                                }
                            }
                            str3 = CollectionsKt.A0(arrayList2, ",", null, null, 0, null, null, 62, null);
                        }
                        String str9 = str3;
                        ABTestFactory aBTestFactory = ABTestFactory.f42224a;
                        s.f51749a.f(new s.a(i11, null, skuId, productId, null, str4, null, num4, num5, num6, str5, str6, null, null, str2, str7, str9, str8, aBTestFactory.x1().getAbTestKey(), aBTestFactory.x1().abTestValue(), 0, subsSku.getEv(), subsSku.getH5JsonParam(), 12370, null));
                        return;
                    }
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47734f;
            if (aVar2 != null) {
                a.C0648a.c(aVar2, PaymentMethodBtnView.this.f47721a, this.f47735g, null, 4, null);
            }
            CoinSku coinSku = this.f47735g;
            if (coinSku != null) {
                BaseEpisode baseEpisode2 = this.f47737i;
                PaymentMethodBtnView paymentMethodBtnView2 = PaymentMethodBtnView.this;
                String str10 = this.f47738j;
                String str11 = this.f47739k;
                String str12 = this.f47740l;
                String str13 = this.f47741m;
                String str14 = this.f47742n;
                if (baseEpisode2 != null) {
                    num = Integer.valueOf(baseEpisode2.getShortPlayId());
                } else {
                    num = null;
                }
                if (baseEpisode2 != null) {
                    num2 = Integer.valueOf(baseEpisode2.getId());
                } else {
                    num2 = null;
                }
                if (baseEpisode2 != null) {
                    num3 = Integer.valueOf(baseEpisode2.getEpisodeNum());
                } else {
                    num3 = null;
                }
                int i12 = paymentMethodBtnView2.f47721a;
                String gpSkuId = coinSku.getGpSkuId();
                String skuProductId = coinSku.getSkuProductId();
                String skuModelConfigId = coinSku.getSkuModelConfigId();
                List<SkuPaymentMethod> productExtendList3 = coinSku.getProductExtendList();
                if (productExtendList3 != null && (skuPaymentMethod = (SkuPaymentMethod) CollectionsKt.firstOrNull(productExtendList3)) != null) {
                    str = skuPaymentMethod.getCountryCode();
                } else {
                    str = null;
                }
                List<SkuPaymentMethod> productExtendList4 = coinSku.getProductExtendList();
                if (productExtendList4 != null) {
                    ArrayList<SkuPaymentMethod> arrayList3 = new ArrayList();
                    for (Object obj2 : productExtendList4) {
                        Integer payType3 = ((SkuPaymentMethod) obj2).getPayType();
                        int a11 = e.f65327a.a();
                        if (payType3 == null || payType3.intValue() != a11) {
                            arrayList3.add(obj2);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (SkuPaymentMethod skuPaymentMethod4 : arrayList3) {
                        Integer payType4 = skuPaymentMethod4.getPayType();
                        if (payType4 != null) {
                            arrayList4.add(payType4);
                        }
                    }
                    str3 = CollectionsKt.A0(arrayList4, ",", null, null, 0, null, null, 62, null);
                }
                ABTestFactory aBTestFactory2 = ABTestFactory.f42224a;
                s.f51749a.f(new s.a(i12, null, gpSkuId, skuProductId, null, str10, skuModelConfigId, num, num2, num3, str11, str12, null, null, str, str13, str3, str14, aBTestFactory2.x1().getAbTestKey(), aBTestFactory2.x1().abTestValue(), 0, coinSku.getEv(), coinSku.getH5JsonParam(), 12306, null));
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtnView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final ViewPaymentMethodBtnBinding getBinding() {
        return (ViewPaymentMethodBtnBinding) this.f47722b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewPaymentMethodBtnBinding s(Context context, PaymentMethodBtnView paymentMethodBtnView) {
        ViewPaymentMethodBtnBinding b10 = ViewPaymentMethodBtnBinding.b(LayoutInflater.from(context), paymentMethodBtnView, true);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        return b10;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void t(com.startshorts.androidplayer.bean.purchase.CoinSku r8) {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtnView.t(com.startshorts.androidplayer.bean.purchase.CoinSku):void");
    }

    private final void u(String str, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2, String str2, BaseEpisode baseEpisode, String str3, String str4, com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, String str5) {
        boolean n10;
        boolean z10;
        boolean z11;
        if (subsSku == null && coinSku == null) {
            setVisibility(8);
            return;
        }
        AccountRepo accountRepo = AccountRepo.f43052a;
        boolean N0 = accountRepo.N0();
        boolean z02 = accountRepo.z0();
        boolean z12 = true;
        if (this.f47721a == 2) {
            if (subsSku != null) {
                z10 = subsSku.getInSubscription();
            } else {
                z10 = false;
            }
            if (z02 && subsSku2 == null && !z10) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 || N0 || z11) {
                setVisibility(8);
                return;
            }
        }
        getBinding().f41341d.setVisibility(0);
        getBinding().f41340c.setVisibility(8);
        getBinding().f41338a.setVisibility(0);
        getBinding().f41339b.setVisibility(8);
        setVisibility(0);
        int i10 = this.f47721a;
        if (i10 != 1) {
            if (i10 == 2 && subsSku != null) {
                n10 = h.f65328a.o(subsSku);
                w(subsSku);
            }
            n10 = false;
        } else {
            if (coinSku != null) {
                n10 = h.f65328a.n(coinSku);
                t(coinSku);
            }
            n10 = false;
        }
        if (!z02 || N0 || this.f47721a != 2) {
            z12 = false;
        }
        if (n10 && !z12) {
            getBinding().f41339b.setVisibility(8);
        } else {
            getBinding().f41341d.setVisibility(8);
            getBinding().f41340c.setVisibility(8);
            getBinding().f41338a.setVisibility(8);
            getBinding().f41339b.setVisibility(0);
        }
        getBinding().f41339b.setOnClickListener(new a(aVar, coinSku, subsSku, subsSku2));
        getBinding().f41338a.setOnClickListener(new b(aVar, coinSku, subsSku, subsSku2));
        getBinding().f41341d.setOnClickListener(new c(aVar, coinSku, subsSku, baseEpisode, str2, str4, str3, str, str5));
    }

    static /* synthetic */ void v(PaymentMethodBtnView paymentMethodBtnView, String str, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2, String str2, BaseEpisode baseEpisode, String str3, String str4, com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, String str5, int i10, Object obj) {
        paymentMethodBtnView.u(str, (i10 & 2) != 0 ? null : coinSku, (i10 & 4) != 0 ? null : subsSku, subsSku2, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : baseEpisode, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : str4, (i10 & 256) != 0 ? null : aVar, (i10 & 512) != 0 ? null : str5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x0327, code lost:
        if (r0 != 7) goto L132;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void w(com.startshorts.androidplayer.bean.subs.SubsSku r15) {
        /*
            Method dump skipped, instructions count: 916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtnView.w(com.startshorts.androidplayer.bean.subs.SubsSku):void");
    }

    @Override // tj.a
    public void l(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f47721a = 1;
        v(this, scene, coinSku, null, null, str, baseEpisode, null, null, aVar, str2, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, null);
    }

    @Override // tj.a
    public void n(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str2, @Nullable SubsSku subsSku2) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f47721a = 2;
        v(this, scene, null, subsSku, subsSku2, str, baseEpisode, null, null, aVar, str2, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, null);
    }

    @Override // tj.a
    public boolean p() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // tj.a
    public void setBtnVisibility(int i10) {
        setVisibility(i10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtnView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ PaymentMethodBtnView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtnView(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47721a = 2;
        this.f47722b = kotlin.c.b(new Function0() { // from class: tj.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ViewPaymentMethodBtnBinding s10;
                s10 = PaymentMethodBtnView.s(context, this);
                return s10;
            }
        });
    }
}
