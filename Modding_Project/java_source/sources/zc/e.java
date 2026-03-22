package zc;

import com.android.billingclient.api.ProductDetails;
import com.shorttv.aar.billing.bean.ProductDataType;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
/* compiled from: CommonProductDetails.kt */
@Metadata
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final c f71572j = new c(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private ProductDataType f71573a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f71574b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f71575c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f71576d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f71577e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final String f71578f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final List<b> f71579g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final a f71580h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final Object f71581i;

    /* compiled from: CommonProductDetails.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public static final C0982a f71582f = new C0982a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f71583a;

        /* renamed from: b  reason: collision with root package name */
        private final long f71584b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final String f71585c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final String f71586d;

        /* renamed from: e  reason: collision with root package name */
        private final long f71587e;

        /* compiled from: CommonProductDetails.kt */
        @Metadata
        /* renamed from: zc.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0982a {
            public /* synthetic */ C0982a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final a a(@Nullable ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails) {
                if (oneTimePurchaseOfferDetails == null) {
                    return null;
                }
                String formattedPrice = oneTimePurchaseOfferDetails.getFormattedPrice();
                Intrinsics.checkNotNullExpressionValue(formattedPrice, "getFormattedPrice(...)");
                long priceAmountMicros = oneTimePurchaseOfferDetails.getPriceAmountMicros();
                String priceCurrencyCode = oneTimePurchaseOfferDetails.getPriceCurrencyCode();
                Intrinsics.checkNotNullExpressionValue(priceCurrencyCode, "getPriceCurrencyCode(...)");
                return new a(formattedPrice, priceAmountMicros, priceCurrencyCode, "", 0L);
            }

            private C0982a() {
            }
        }

        public a(@NotNull String formattedPrice, long j10, @NotNull String priceCurrencyCode, @NotNull String originalPrice, long j11) {
            Intrinsics.checkNotNullParameter(formattedPrice, "formattedPrice");
            Intrinsics.checkNotNullParameter(priceCurrencyCode, "priceCurrencyCode");
            Intrinsics.checkNotNullParameter(originalPrice, "originalPrice");
            this.f71583a = formattedPrice;
            this.f71584b = j10;
            this.f71585c = priceCurrencyCode;
            this.f71586d = originalPrice;
            this.f71587e = j11;
        }

        @NotNull
        public final String a() {
            return this.f71583a;
        }

        public final long b() {
            return this.f71584b;
        }

        @NotNull
        public final String c() {
            return this.f71585c;
        }
    }

    /* compiled from: CommonProductDetails.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public static final C0986b f71588f = new C0986b(null);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f71589a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f71590b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<String> f71591c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final String f71592d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final a f71593e;

        /* compiled from: CommonProductDetails.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a {
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            public static final C0985b f71594b = new C0985b(null);
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final List<C0983a> f71595a;

            /* compiled from: CommonProductDetails.kt */
            @Metadata
            /* renamed from: zc.e$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0983a {
                @NotNull

                /* renamed from: i  reason: collision with root package name */
                public static final C0984a f71596i = new C0984a(null);
                @NotNull

                /* renamed from: a  reason: collision with root package name */
                private final String f71597a;

                /* renamed from: b  reason: collision with root package name */
                private final long f71598b;
                @NotNull

                /* renamed from: c  reason: collision with root package name */
                private final String f71599c;

                /* renamed from: d  reason: collision with root package name */
                private final long f71600d;
                @NotNull

                /* renamed from: e  reason: collision with root package name */
                private final String f71601e;
                @NotNull

                /* renamed from: f  reason: collision with root package name */
                private final String f71602f;

                /* renamed from: g  reason: collision with root package name */
                private final int f71603g;

                /* renamed from: h  reason: collision with root package name */
                private final int f71604h;

                /* compiled from: CommonProductDetails.kt */
                @Metadata
                /* renamed from: zc.e$b$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes6.dex */
                public static final class C0984a {
                    public /* synthetic */ C0984a(DefaultConstructorMarker defaultConstructorMarker) {
                        this();
                    }

                    @NotNull
                    public final C0983a a(@NotNull ProductDetails.PricingPhase data) {
                        Intrinsics.checkNotNullParameter(data, "data");
                        String formattedPrice = data.getFormattedPrice();
                        Intrinsics.checkNotNullExpressionValue(formattedPrice, "getFormattedPrice(...)");
                        long priceAmountMicros = data.getPriceAmountMicros();
                        String priceCurrencyCode = data.getPriceCurrencyCode();
                        Intrinsics.checkNotNullExpressionValue(priceCurrencyCode, "getPriceCurrencyCode(...)");
                        String billingPeriod = data.getBillingPeriod();
                        Intrinsics.checkNotNullExpressionValue(billingPeriod, "getBillingPeriod(...)");
                        return new C0983a(formattedPrice, priceAmountMicros, "", 0L, priceCurrencyCode, billingPeriod, data.getBillingCycleCount(), data.getRecurrenceMode());
                    }

                    private C0984a() {
                    }
                }

                public C0983a(@NotNull String formattedPrice, long j10, @NotNull String originalPrice, long j11, @NotNull String priceCurrencyCode, @NotNull String billingPeriod, int i10, int i11) {
                    Intrinsics.checkNotNullParameter(formattedPrice, "formattedPrice");
                    Intrinsics.checkNotNullParameter(originalPrice, "originalPrice");
                    Intrinsics.checkNotNullParameter(priceCurrencyCode, "priceCurrencyCode");
                    Intrinsics.checkNotNullParameter(billingPeriod, "billingPeriod");
                    this.f71597a = formattedPrice;
                    this.f71598b = j10;
                    this.f71599c = originalPrice;
                    this.f71600d = j11;
                    this.f71601e = priceCurrencyCode;
                    this.f71602f = billingPeriod;
                    this.f71603g = i10;
                    this.f71604h = i11;
                }

                public final int a() {
                    return this.f71603g;
                }

                @NotNull
                public final String b() {
                    return this.f71597a;
                }

                @NotNull
                public final String c() {
                    return this.f71599c;
                }

                public final long d() {
                    return this.f71600d;
                }

                public final long e() {
                    return this.f71598b;
                }

                @NotNull
                public final String f() {
                    return this.f71601e;
                }
            }

            /* compiled from: CommonProductDetails.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nCommonProductDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$CommonSubscriptionOfferDetails$CommonPricingPhases$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1557#2:221\n1628#2,3:222\n*S KotlinDebug\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$CommonSubscriptionOfferDetails$CommonPricingPhases$Companion\n*L\n173#1:221\n173#1:222,3\n*E\n"})
            /* renamed from: zc.e$b$a$b  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0985b {
                public /* synthetic */ C0985b(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                @NotNull
                public final a a(@NotNull ProductDetails.PricingPhases data) {
                    Intrinsics.checkNotNullParameter(data, "data");
                    List<ProductDetails.PricingPhase> pricingPhaseList = data.getPricingPhaseList();
                    Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
                    List<ProductDetails.PricingPhase> list = pricingPhaseList;
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                    for (ProductDetails.PricingPhase pricingPhase : list) {
                        C0983a.C0984a c0984a = C0983a.f71596i;
                        Intrinsics.checkNotNull(pricingPhase);
                        arrayList.add(c0984a.a(pricingPhase));
                    }
                    return new a(arrayList);
                }

                private C0985b() {
                }
            }

            public a(@NotNull List<C0983a> pricingPhaseList) {
                Intrinsics.checkNotNullParameter(pricingPhaseList, "pricingPhaseList");
                this.f71595a = pricingPhaseList;
            }

            @NotNull
            public final List<C0983a> a() {
                return this.f71595a;
            }
        }

        /* compiled from: CommonProductDetails.kt */
        @Metadata
        /* renamed from: zc.e$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0986b {
            public /* synthetic */ C0986b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final b a(@NotNull ProductDetails.SubscriptionOfferDetails data) {
                Intrinsics.checkNotNullParameter(data, "data");
                String offerId = data.getOfferId();
                String offerToken = data.getOfferToken();
                Intrinsics.checkNotNullExpressionValue(offerToken, "getOfferToken(...)");
                List<String> offerTags = data.getOfferTags();
                Intrinsics.checkNotNullExpressionValue(offerTags, "getOfferTags(...)");
                String basePlanId = data.getBasePlanId();
                Intrinsics.checkNotNullExpressionValue(basePlanId, "getBasePlanId(...)");
                a.C0985b c0985b = a.f71594b;
                ProductDetails.PricingPhases pricingPhases = data.getPricingPhases();
                Intrinsics.checkNotNullExpressionValue(pricingPhases, "getPricingPhases(...)");
                return new b(offerId, offerToken, offerTags, basePlanId, c0985b.a(pricingPhases));
            }

            private C0986b() {
            }
        }

        public b(@Nullable String str, @NotNull String offerToken, @NotNull List<String> offerTags, @NotNull String basePlanId, @NotNull a pricingPhases) {
            Intrinsics.checkNotNullParameter(offerToken, "offerToken");
            Intrinsics.checkNotNullParameter(offerTags, "offerTags");
            Intrinsics.checkNotNullParameter(basePlanId, "basePlanId");
            Intrinsics.checkNotNullParameter(pricingPhases, "pricingPhases");
            this.f71589a = str;
            this.f71590b = offerToken;
            this.f71591c = offerTags;
            this.f71592d = basePlanId;
            this.f71593e = pricingPhases;
        }

        @Nullable
        public final String a() {
            return this.f71589a;
        }

        @NotNull
        public final String b() {
            return this.f71590b;
        }

        @NotNull
        public final a c() {
            return this.f71593e;
        }
    }

    /* compiled from: CommonProductDetails.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCommonProductDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1557#2:221\n1628#2,3:222\n*S KotlinDebug\n*F\n+ 1 CommonProductDetails.kt\ncom/shorttv/aar/billing/bean/CommonProductDetails$Companion\n*L\n41#1:221\n41#1:222,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final e a(@NotNull ProductDetails data) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(data, "data");
            ProductDataType productDataType = ProductDataType.GOOGLE_PRODUCT;
            String productId = data.getProductId();
            Intrinsics.checkNotNullExpressionValue(productId, "getProductId(...)");
            String productType = data.getProductType();
            Intrinsics.checkNotNullExpressionValue(productType, "getProductType(...)");
            String name = data.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            String description = data.getDescription();
            Intrinsics.checkNotNullExpressionValue(description, "getDescription(...)");
            String title = data.getTitle();
            Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
            List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails = data.getSubscriptionOfferDetails();
            if (subscriptionOfferDetails != null) {
                List<ProductDetails.SubscriptionOfferDetails> list = subscriptionOfferDetails;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list, 10));
                for (ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails2 : list) {
                    b.C0986b c0986b = b.f71588f;
                    Intrinsics.checkNotNull(subscriptionOfferDetails2);
                    arrayList2.add(c0986b.a(subscriptionOfferDetails2));
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            return new e(productDataType, productId, productType, name, description, title, arrayList, a.f71582f.a(data.getOneTimePurchaseOfferDetails()), data);
        }

        @Nullable
        public final e b(@NotNull String productJsonTemplate) {
            Intrinsics.checkNotNullParameter(productJsonTemplate, "productJsonTemplate");
            ProductDetails c10 = c(productJsonTemplate);
            if (c10 == null) {
                return null;
            }
            return a(c10);
        }

        @Nullable
        public final ProductDetails c(@NotNull String productJsonTemplate) {
            Intrinsics.checkNotNullParameter(productJsonTemplate, "productJsonTemplate");
            Constructor declaredConstructor = ProductDetails.class.getDeclaredConstructor(String.class);
            declaredConstructor.setAccessible(true);
            try {
                Object newInstance = declaredConstructor.newInstance(productJsonTemplate);
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type com.android.billingclient.api.ProductDetails");
                return (ProductDetails) newInstance;
            } catch (ClassNotFoundException e10) {
                e10.printStackTrace();
                return null;
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
                return null;
            } catch (InstantiationException e12) {
                e12.printStackTrace();
                return null;
            } catch (NoSuchMethodException e13) {
                e13.printStackTrace();
                return null;
            } catch (InvocationTargetException e14) {
                e14.printStackTrace();
                return null;
            } catch (JSONException e15) {
                e15.printStackTrace();
                return null;
            }
        }

        private c() {
        }
    }

    public e(@NotNull ProductDataType dataType, @NotNull String productId, @NotNull String productType, @NotNull String name, @NotNull String description, @NotNull String title, @Nullable List<b> list, @Nullable a aVar, @NotNull Object originData) {
        Intrinsics.checkNotNullParameter(dataType, "dataType");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(productType, "productType");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(originData, "originData");
        this.f71573a = dataType;
        this.f71574b = productId;
        this.f71575c = productType;
        this.f71576d = name;
        this.f71577e = description;
        this.f71578f = title;
        this.f71579g = list;
        this.f71580h = aVar;
        this.f71581i = originData;
    }

    @NotNull
    public final ProductDataType a() {
        return this.f71573a;
    }

    @Nullable
    public final a b() {
        return this.f71580h;
    }

    @NotNull
    public final Object c() {
        return this.f71581i;
    }

    @NotNull
    public final String d() {
        return this.f71574b;
    }

    @Nullable
    public final List<b> e() {
        return this.f71579g;
    }
}
