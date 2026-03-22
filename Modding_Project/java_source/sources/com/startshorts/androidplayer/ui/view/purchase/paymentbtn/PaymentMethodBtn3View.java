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
import com.startshorts.androidplayer.databinding.ViewPaymentMethodBtn3Binding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtn3View;
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
/* compiled from: PaymentMethodBtn3View.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPaymentMethodBtn3View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,507:1\n254#2:508\n774#3:509\n865#3,2:510\n1611#3,9:512\n1863#3:521\n1864#3:524\n1620#3:525\n295#3,2:526\n295#3,2:528\n774#3:530\n865#3,2:531\n774#3:533\n865#3,2:534\n1971#3,14:536\n774#3:550\n865#3,2:551\n1611#3,9:553\n1863#3:562\n1864#3:564\n1620#3:565\n295#3,2:566\n295#3,2:568\n774#3:570\n865#3,2:571\n774#3:573\n865#3,2:574\n1971#3,14:576\n1#4:522\n1#4:523\n1#4:563\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View\n*L\n70#1:508\n323#1:509\n323#1:510,2\n323#1:512,9\n323#1:521\n323#1:524\n323#1:525\n329#1:526,2\n335#1:528,2\n359#1:530\n359#1:531,2\n368#1:533\n368#1:534,2\n370#1:536,14\n427#1:550\n427#1:551,2\n427#1:553,9\n427#1:562\n427#1:564\n427#1:565\n433#1:566,2\n439#1:568,2\n460#1:570\n460#1:571,2\n472#1:573\n472#1:574,2\n474#1:576,14\n323#1:523\n427#1:563\n*E\n"})
/* loaded from: classes7.dex */
public final class PaymentMethodBtn3View extends ConstraintLayout implements tj.a {

    /* renamed from: a  reason: collision with root package name */
    private int f47689a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f47690b;

    /* compiled from: PaymentMethodBtn3View.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47692f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47693g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47694h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsSku f47695i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            super(0L, 1, null);
            this.f47692f = aVar;
            this.f47693g = coinSku;
            this.f47694h = subsSku;
            this.f47695i = subsSku2;
        }

        @Override // yd.d
        public void a(View v10) {
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar;
            Intrinsics.checkNotNullParameter(v10, "v");
            int i10 = PaymentMethodBtn3View.this.f47689a;
            if (i10 != 1) {
                if (i10 == 2 && (aVar = this.f47692f) != null) {
                    a.C0648a.b(aVar, PaymentMethodBtn3View.this.f47689a, null, this.f47694h, this.f47695i, 2, null);
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47692f;
            if (aVar2 != null) {
                a.C0648a.b(aVar2, PaymentMethodBtn3View.this.f47689a, this.f47693g, null, null, 12, null);
            }
        }
    }

    /* compiled from: PaymentMethodBtn3View.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47697f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47698g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47699h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ SubsSku f47700i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2) {
            super(0L, 1, null);
            this.f47697f = aVar;
            this.f47698g = coinSku;
            this.f47699h = subsSku;
            this.f47700i = subsSku2;
        }

        @Override // yd.d
        public void a(View v10) {
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar;
            Intrinsics.checkNotNullParameter(v10, "v");
            int i10 = PaymentMethodBtn3View.this.f47689a;
            if (i10 != 1) {
                if (i10 == 2 && (aVar = this.f47697f) != null) {
                    a.C0648a.b(aVar, PaymentMethodBtn3View.this.f47689a, null, this.f47699h, this.f47700i, 2, null);
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47697f;
            if (aVar2 != null) {
                a.C0648a.b(aVar2, PaymentMethodBtn3View.this.f47689a, this.f47698g, null, null, 12, null);
            }
        }
    }

    /* compiled from: PaymentMethodBtn3View.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPaymentMethodBtn3View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$initData$5\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,507:1\n774#2:508\n865#2,2:509\n1611#2,9:511\n1863#2:520\n1864#2:522\n1620#2:523\n774#2:524\n865#2,2:525\n1611#2,9:527\n1863#2:536\n1864#2:538\n1620#2:539\n1#3:521\n1#3:537\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$initData$5\n*L\n211#1:508\n211#1:509,2\n211#1:511,9\n211#1:520\n211#1:522\n211#1:523\n239#1:524\n239#1:525,2\n239#1:527,9\n239#1:536\n239#1:538\n239#1:539\n211#1:521\n239#1:537\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47702f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47703g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47704h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f47705i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f47706j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ String f47707k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ String f47708l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f47709m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ String f47710n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, BaseEpisode baseEpisode, String str, String str2, String str3, String str4, String str5) {
            super(0L, 1, null);
            this.f47702f = aVar;
            this.f47703g = coinSku;
            this.f47704h = subsSku;
            this.f47705i = baseEpisode;
            this.f47706j = str;
            this.f47707k = str2;
            this.f47708l = str3;
            this.f47709m = str4;
            this.f47710n = str5;
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
            int i10 = PaymentMethodBtn3View.this.f47689a;
            String str3 = null;
            if (i10 != 1) {
                if (i10 == 2) {
                    com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar = this.f47702f;
                    if (aVar != null) {
                        a.C0648a.c(aVar, PaymentMethodBtn3View.this.f47689a, null, this.f47704h, 2, null);
                    }
                    SubsSku subsSku = this.f47704h;
                    if (subsSku != null) {
                        BaseEpisode baseEpisode = this.f47705i;
                        PaymentMethodBtn3View paymentMethodBtn3View = PaymentMethodBtn3View.this;
                        String str4 = this.f47706j;
                        String str5 = this.f47707k;
                        String str6 = this.f47708l;
                        String str7 = this.f47709m;
                        String str8 = this.f47710n;
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
                        int i11 = paymentMethodBtn3View.f47689a;
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
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47702f;
            if (aVar2 != null) {
                a.C0648a.c(aVar2, PaymentMethodBtn3View.this.f47689a, this.f47703g, null, 4, null);
            }
            CoinSku coinSku = this.f47703g;
            if (coinSku != null) {
                BaseEpisode baseEpisode2 = this.f47705i;
                PaymentMethodBtn3View paymentMethodBtn3View2 = PaymentMethodBtn3View.this;
                String str10 = this.f47706j;
                String str11 = this.f47707k;
                String str12 = this.f47708l;
                String str13 = this.f47709m;
                String str14 = this.f47710n;
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
                int i12 = paymentMethodBtn3View2.f47689a;
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

    /* compiled from: PaymentMethodBtn3View.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPaymentMethodBtn3View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$initData$6\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,507:1\n774#2:508\n865#2,2:509\n1611#2,9:511\n1863#2:520\n1864#2:522\n1620#2:523\n774#2:524\n865#2,2:525\n1611#2,9:527\n1863#2:536\n1864#2:538\n1620#2:539\n1#3:521\n1#3:537\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$initData$6\n*L\n276#1:508\n276#1:509,2\n276#1:511,9\n276#1:520\n276#1:522\n276#1:523\n304#1:524\n304#1:525,2\n304#1:527,9\n304#1:536\n304#1:538\n304#1:539\n276#1:521\n304#1:537\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a f47712f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ CoinSku f47713g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ SubsSku f47714h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f47715i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f47716j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ String f47717k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ String f47718l;

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ String f47719m;

        /* renamed from: n  reason: collision with root package name */
        final /* synthetic */ String f47720n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, CoinSku coinSku, SubsSku subsSku, BaseEpisode baseEpisode, String str, String str2, String str3, String str4, String str5) {
            super(0L, 1, null);
            this.f47712f = aVar;
            this.f47713g = coinSku;
            this.f47714h = subsSku;
            this.f47715i = baseEpisode;
            this.f47716j = str;
            this.f47717k = str2;
            this.f47718l = str3;
            this.f47719m = str4;
            this.f47720n = str5;
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
            int i10 = PaymentMethodBtn3View.this.f47689a;
            String str3 = null;
            if (i10 != 1) {
                if (i10 == 2) {
                    com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar = this.f47712f;
                    if (aVar != null) {
                        a.C0648a.a(aVar, PaymentMethodBtn3View.this.f47689a, null, this.f47714h, 2, null);
                    }
                    SubsSku subsSku = this.f47714h;
                    if (subsSku != null) {
                        BaseEpisode baseEpisode = this.f47715i;
                        PaymentMethodBtn3View paymentMethodBtn3View = PaymentMethodBtn3View.this;
                        String str4 = this.f47716j;
                        String str5 = this.f47717k;
                        String str6 = this.f47718l;
                        String str7 = this.f47719m;
                        String str8 = this.f47720n;
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
                        int i11 = paymentMethodBtn3View.f47689a;
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
                        s.f51749a.f(new s.a(i11, null, skuId, productId, null, str4, null, num4, num5, num6, str5, str6, null, null, str2, str7, str9, str8, aBTestFactory.x1().getAbTestKey(), aBTestFactory.x1().abTestValue(), 1, subsSku.getEv(), subsSku.getH5JsonParam(), 12370, null));
                        return;
                    }
                    return;
                }
                return;
            }
            com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar2 = this.f47712f;
            if (aVar2 != null) {
                a.C0648a.a(aVar2, PaymentMethodBtn3View.this.f47689a, this.f47713g, null, 4, null);
            }
            CoinSku coinSku = this.f47713g;
            if (coinSku != null) {
                BaseEpisode baseEpisode2 = this.f47715i;
                PaymentMethodBtn3View paymentMethodBtn3View2 = PaymentMethodBtn3View.this;
                String str10 = this.f47716j;
                String str11 = this.f47717k;
                String str12 = this.f47718l;
                String str13 = this.f47719m;
                String str14 = this.f47720n;
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
                int i12 = paymentMethodBtn3View2.f47689a;
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
                s.f51749a.f(new s.a(i12, null, gpSkuId, skuProductId, null, str10, skuModelConfigId, num, num2, num3, str11, str12, null, null, str, str13, str3, str14, aBTestFactory2.x1().getAbTestKey(), aBTestFactory2.x1().abTestValue(), 1, coinSku.getEv(), coinSku.getH5JsonParam(), 12306, null));
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtn3View(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final ViewPaymentMethodBtn3Binding getBinding() {
        return (ViewPaymentMethodBtn3Binding) this.f47690b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewPaymentMethodBtn3Binding s(Context context, PaymentMethodBtn3View paymentMethodBtn3View) {
        ViewPaymentMethodBtn3Binding b10 = ViewPaymentMethodBtn3Binding.b(LayoutInflater.from(context), paymentMethodBtn3View, true);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        return b10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x0273, code lost:
        if (r5 != null) goto L121;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void t(com.startshorts.androidplayer.bean.purchase.CoinSku r10) {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtn3View.t(com.startshorts.androidplayer.bean.purchase.CoinSku):void");
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
        if (this.f47689a == 2) {
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
        getBinding().f41324g.setVisibility(0);
        getBinding().f41323f.setVisibility(8);
        getBinding().f41319b.setVisibility(0);
        getBinding().f41318a.setVisibility(8);
        getBinding().f41329l.setVisibility(0);
        getBinding().f41322e.setVisibility(8);
        int i10 = this.f47689a;
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
        if (!z02 || N0 || this.f47689a != 2) {
            z12 = false;
        }
        if (n10 && !z12) {
            getBinding().f41322e.setVisibility(8);
        } else {
            getBinding().f41324g.setVisibility(8);
            getBinding().f41323f.setVisibility(8);
            getBinding().f41319b.setVisibility(8);
            getBinding().f41318a.setVisibility(8);
            getBinding().f41329l.setVisibility(8);
            getBinding().f41322e.setVisibility(0);
        }
        getBinding().f41322e.setOnClickListener(new a(aVar, coinSku, subsSku, subsSku2));
        getBinding().f41329l.setOnClickListener(new b(aVar, coinSku, subsSku, subsSku2));
        getBinding().f41324g.setOnClickListener(new c(aVar, coinSku, subsSku, baseEpisode, str2, str4, str3, str, str5));
        getBinding().f41319b.setOnClickListener(new d(aVar, coinSku, subsSku, baseEpisode, str2, str4, str3, str, str5));
    }

    static /* synthetic */ void v(PaymentMethodBtn3View paymentMethodBtn3View, String str, CoinSku coinSku, SubsSku subsSku, SubsSku subsSku2, String str2, BaseEpisode baseEpisode, String str3, String str4, com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, String str5, int i10, Object obj) {
        paymentMethodBtn3View.u(str, (i10 & 2) != 0 ? null : coinSku, (i10 & 4) != 0 ? null : subsSku, (i10 & 8) != 0 ? null : subsSku2, (i10 & 16) != 0 ? null : str2, (i10 & 32) != 0 ? null : baseEpisode, (i10 & 64) != 0 ? null : str3, (i10 & 128) != 0 ? null : str4, (i10 & 256) != 0 ? null : aVar, (i10 & 512) == 0 ? str5 : null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x0275, code lost:
        if (r7 != null) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x03bd, code lost:
        if (r1 != 7) goto L162;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void w(com.startshorts.androidplayer.bean.subs.SubsSku r13) {
        /*
            Method dump skipped, instructions count: 1066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.view.purchase.paymentbtn.PaymentMethodBtn3View.w(com.startshorts.androidplayer.bean.subs.SubsSku):void");
    }

    @Override // tj.a
    public void l(@NotNull String scene, @Nullable CoinSku coinSku, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f47689a = 1;
        v(this, scene, coinSku, null, null, str, baseEpisode, null, null, aVar, str2, MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, null);
    }

    @Override // tj.a
    public void n(@NotNull String scene, @Nullable SubsSku subsSku, @Nullable String str, @Nullable BaseEpisode baseEpisode, @Nullable com.startshorts.androidplayer.ui.view.purchase.paymentbtn.a aVar, @Nullable String str2, @Nullable SubsSku subsSku2) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f47689a = 2;
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
    public PaymentMethodBtn3View(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ PaymentMethodBtn3View(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaymentMethodBtn3View(@NotNull final Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47689a = 2;
        this.f47690b = kotlin.c.b(new Function0() { // from class: tj.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ViewPaymentMethodBtn3Binding s10;
                s10 = PaymentMethodBtn3View.s(context, this);
                return s10;
            }
        });
    }
}
