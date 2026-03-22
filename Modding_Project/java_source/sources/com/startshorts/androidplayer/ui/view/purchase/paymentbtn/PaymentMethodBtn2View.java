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
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtn2Binding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtn2View;
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
/* compiled from: PaymentMethodBtn2View.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPaymentMethodBtn2View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtn2View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,419:1\n254#2:420\n774#3:421\n865#3,2:422\n1611#3,9:424\n1863#3:433\n1864#3:436\n1620#3:437\n295#3,2:438\n295#3,2:440\n774#3:442\n865#3,2:443\n1971#3,14:445\n774#3:459\n865#3,2:460\n1611#3,9:462\n1863#3:471\n1864#3:473\n1620#3:474\n295#3,2:475\n295#3,2:477\n774#3:479\n865#3,2:480\n1#4:434\n1#4:435\n1#4:472\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtn2View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View\n*L\n68#1:420\n252#1:421\n252#1:422,2\n252#1:424,9\n252#1:433\n252#1:436\n252#1:437\n258#1:438,2\n264#1:440,2\n299#1:442\n299#1:443,2\n299#1:445,14\n353#1:459\n353#1:460,2\n353#1:462,9\n353#1:471\n353#1:473\n353#1:474\n359#1:475,2\n365#1:477,2\n389#1:479\n389#1:480,2\n252#1:435\n353#1:472\n*E\n"})
/* loaded from: classes7.dex */
public final class PaymentMethodBtn2View extends ConstraintLayout implements tj.a {

    /* renamed from: a  reason: collision with root package name */
    private int f47667a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f47668b;

    /* compiled from: PaymentMethodBtn2View.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47670f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47671g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47672h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsSku f47673i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            super(0L, 1, null);
            this.f47670f = aVar;
            this.f47671g = coinSku;
            this.f47672h = subsSku;
            this.f47673i = subsSku2;
        }

        @Override // yd.d
        public void a(View v10) {
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar;
            Intrinsics.checkNotNullParameter(v10, "v");
            int i10 = PaymentMethodBtn2View.this.f47667a;
            if (i10 != 1) {
                if (i10 == 2 && (aVar = this.f47670f) != null) {
                    a.C0648a.b(aVar, PaymentMethodBtn2View.this.f47667a, null, this.f47672h, this.f47673i, 2, null);
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47670f;
            if (aVar2 != null) {
                a.C0648a.b(aVar2, PaymentMethodBtn2View.this.f47667a, this.f47671g, null, null, 12, null);
            }
        }
    }

    /* compiled from: PaymentMethodBtn2View.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47675f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47676g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47677h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsSku f47678i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            super(0L, 1, null);
            this.f47675f = aVar;
            this.f47676g = coinSku;
            this.f47677h = subsSku;
            this.f47678i = subsSku2;
        }

        @Override // yd.d
        public void a(View v10) {
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar;
            Intrinsics.checkNotNullParameter(v10, "v");
            int i10 = PaymentMethodBtn2View.this.f47667a;
            if (i10 != 1) {
                if (i10 == 2 && (aVar = this.f47675f) != null) {
                    a.C0648a.b(aVar, PaymentMethodBtn2View.this.f47667a, null, this.f47677h, this.f47678i, 2, null);
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47675f;
            if (aVar2 != null) {
                a.C0648a.b(aVar2, PaymentMethodBtn2View.this.f47667a, this.f47676g, null, null, 12, null);
            }
        }
    }

    /* compiled from: PaymentMethodBtn2View.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPaymentMethodBtn2View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtn2View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$initData$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,419:1\n774#2:420\n865#2,2:421\n1611#2,9:423\n1863#2:432\n1864#2:434\n1620#2:435\n774#2:436\n865#2,2:437\n1611#2,9:439\n1863#2:448\n1864#2:450\n1620#2:451\n1#3:433\n1#3:449\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtn2View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$initData$5\n*L\n205#1:420\n205#1:421,2\n205#1:423,9\n205#1:432\n205#1:434\n205#1:435\n233#1:436\n233#1:437,2\n233#1:439,9\n233#1:448\n233#1:450\n233#1:451\n205#1:433\n233#1:449\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c extends d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47680f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47681g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47682h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f47683i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f47684j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ String f47685k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ String f47686l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f47687m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ String f47688n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, BaseEpisode baseEpisode, String str, String str2, String str3, String str4, String str5) {
            super(0L, 1, null);
            this.f47680f = aVar;
            this.f47681g = coinSku;
            this.f47682h = subsSku;
            this.f47683i = baseEpisode;
            this.f47684j = str;
            this.f47685k = str2;
            this.f47686l = str3;
            this.f47687m = str4;
            this.f47688n = str5;
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
            int i10 = PaymentMethodBtn2View.this.f47667a;
            String str3 = null;
            if (i10 != 1) {
                if (i10 == 2) {
                    com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar = this.f47680f;
                    if (aVar != null) {
                        a.C0648a.c(aVar, PaymentMethodBtn2View.this.f47667a, null, this.f47682h, 2, null);
                    }
                    SubsSku subsSku = this.f47682h;
                    if (subsSku != null) {
                        BaseEpisode baseEpisode = this.f47683i;
                        PaymentMethodBtn2View paymentMethodBtn2View = PaymentMethodBtn2View.this;
                        String str4 = this.f47684j;
                        String str5 = this.f47685k;
                        String str6 = this.f47686l;
                        String str7 = this.f47687m;
                        String str8 = this.f47688n;
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
                        int i11 = paymentMethodBtn2View.f47667a;
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
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47680f;
            if (aVar2 != null) {
                a.C0648a.c(aVar2, PaymentMethodBtn2View.this.f47667a, this.f47681g, null, 4, null);
            }
            CoinSku coinSku = this.f47681g;
            if (coinSku != null) {
                BaseEpisode baseEpisode2 = this.f47683i;
                PaymentMethodBtn2View paymentMethodBtn2View2 = PaymentMethodBtn2View.this;
                String str10 = this.f47684j;
                String str11 = this.f47685k;
                String str12 = this.f47686l;
                String str13 = this.f47687m;
                String str14 = this.f47688n;
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
                int i12 = paymentMethodBtn2View2.f47667a;
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
    public PaymentMethodBtn2View(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final ViewPaymentMethodBtn2Binding getBinding() {
        return (ViewPaymentMethodBtn2Binding) this.f47668b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewPaymentMethodBtn2Binding s(Context context, PaymentMethodBtn2View paymentMethodBtn2View) {
        ViewPaymentMethodBtn2Binding b10 = ViewPaymentMethodBtn2Binding.b(LayoutInflater.from(context), paymentMethodBtn2View, true);
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
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtn2View.t(com.startshorts.androidplayer.bean.purchase.CoinSku):void");
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
        if (this.f47667a == 2) {
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
        setVisibility(0);
        getBinding().f41303c.setVisibility(0);
        getBinding().f41302b.setVisibility(8);
        getBinding().f41309i.setVisibility(0);
        getBinding().f41301a.setVisibility(8);
        int i10 = this.f47667a;
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
        if (!z02 || N0 || this.f47667a != 2) {
            z12 = false;
        }
        if (n10 && !z12) {
            getBinding().f41301a.setVisibility(8);
        } else {
            getBinding().f41303c.setVisibility(8);
            getBinding().f41302b.setVisibility(8);
            getBinding().f41309i.setVisibility(8);
            getBinding().f41301a.setVisibility(0);
        }
        getBinding().f41301a.setOnClickListener(new a(aVar, coinSku, subsSku, subsSku2));
        getBinding().f41309i.setOnClickListener(new b(aVar, coinSku, subsSku, subsSku2));
        getBinding().f41303c.setOnClickListener(new c(aVar, coinSku, subsSku, baseEpisode, str2, str4, str3, str, str5));
    }

    static /* synthetic */ void v(PaymentMethodBtn2View paymentMethodBtn2View, String str, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2, String str2, BaseEpisode baseEpisode, String str3, String str4, com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, String str5, int i10, Object obj) {
        paymentMethodBtn2View.u(str, (i10 & 2) != 0 ? null : coinSku, (i10 & 4) != 0 ? null : subsSku, (i10 & 8) != 0 ? null : subsSku2, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : baseEpisode, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : str4, (i10 & 256) != 0 ? null : aVar, (i10 & 512) == 0 ? str5 : null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x0320, code lost:
        if (r0 != 7) goto L132;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0383  */
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
            Method dump skipped, instructions count: 909
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtn2View.w(com.startshorts.androidplayer.bean.subs.SubsSku):void");
    }

    @Override // tj.a
    public void l(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f47667a = 1;
        v(this, scene, coinSku, null, null, str, baseEpisode, null, null, aVar, str2, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, null);
    }

    @Override // tj.a
    public void n(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str2, @Nullable SubsSku subsSku2) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f47667a = 2;
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
    public PaymentMethodBtn2View(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ PaymentMethodBtn2View(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtn2View(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47667a = 2;
        this.f47668b = kotlin.c.b(new Function0() { // from class: tj.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ViewPaymentMethodBtn2Binding s10;
                s10 = PaymentMethodBtn2View.s(context, this);
                return s10;
            }
        });
    }
}
