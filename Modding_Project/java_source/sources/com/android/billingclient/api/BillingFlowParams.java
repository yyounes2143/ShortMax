package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.billingclient.api.ProductDetails;
import com.google.android.gms.internal.play_billing.zzbg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public class BillingFlowParams {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6457a;

    /* renamed from: b  reason: collision with root package name */
    private String f6458b;

    /* renamed from: c  reason: collision with root package name */
    private String f6459c;

    /* renamed from: d  reason: collision with root package name */
    private SubscriptionUpdateParams f6460d;

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.gms.internal.play_billing.zzbt f6461e;

    /* renamed from: f  reason: collision with root package name */
    private ArrayList f6462f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f6463g;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f6464a;

        /* renamed from: b  reason: collision with root package name */
        private String f6465b;

        /* renamed from: c  reason: collision with root package name */
        private List f6466c;

        /* renamed from: d  reason: collision with root package name */
        private ArrayList f6467d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f6468e;

        /* renamed from: f  reason: collision with root package name */
        private SubscriptionUpdateParams.Builder f6469f;

        private Builder() {
            SubscriptionUpdateParams.Builder newBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.a(newBuilder);
            this.f6469f = newBuilder;
        }

        @NonNull
        public BillingFlowParams build() {
            boolean z10;
            boolean z11;
            ArrayList arrayList;
            com.google.android.gms.internal.play_billing.zzbt zzk;
            ArrayList arrayList2 = this.f6467d;
            boolean z12 = true;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                z10 = true;
            } else {
                z10 = false;
            }
            List list = this.f6466c;
            if (list != null && !list.isEmpty()) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z10 && !z11) {
                throw new IllegalArgumentException("Details of the products must be provided.");
            }
            if (z10 && z11) {
                throw new IllegalArgumentException("Set SkuDetails or ProductDetailsParams, not both.");
            }
            if (z10) {
                if (!this.f6467d.contains(null)) {
                    if (this.f6467d.size() > 1) {
                        SkuDetails skuDetails = (SkuDetails) this.f6467d.get(0);
                        String type = skuDetails.getType();
                        ArrayList arrayList3 = this.f6467d;
                        int size = arrayList3.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            SkuDetails skuDetails2 = (SkuDetails) arrayList3.get(i10);
                            if (!type.equals("play_pass_subs") && !skuDetails2.getType().equals("play_pass_subs") && !type.equals(skuDetails2.getType())) {
                                throw new IllegalArgumentException("SKUs should have the same type.");
                            }
                        }
                        String zzd = skuDetails.zzd();
                        ArrayList arrayList4 = this.f6467d;
                        int size2 = arrayList4.size();
                        for (int i11 = 0; i11 < size2; i11++) {
                            SkuDetails skuDetails3 = (SkuDetails) arrayList4.get(i11);
                            if (!type.equals("play_pass_subs") && !skuDetails3.getType().equals("play_pass_subs") && !zzd.equals(skuDetails3.zzd())) {
                                throw new IllegalArgumentException("All SKUs must have the same package name.");
                            }
                        }
                    }
                } else {
                    throw new IllegalArgumentException("SKU cannot be null.");
                }
            } else {
                List<ProductDetailsParams> list2 = this.f6466c;
                if (list2 != null) {
                    for (ProductDetailsParams productDetailsParams : list2) {
                        if (productDetailsParams == null) {
                            throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                        }
                    }
                }
            }
            BillingFlowParams billingFlowParams = new BillingFlowParams(null);
            if ((!z10 || ((SkuDetails) this.f6467d.get(0)).zzd().isEmpty()) && (!z11 || ((ProductDetailsParams) this.f6466c.get(0)).zza().zza().isEmpty())) {
                z12 = false;
            }
            billingFlowParams.f6457a = z12;
            billingFlowParams.f6458b = this.f6464a;
            billingFlowParams.f6459c = this.f6465b;
            billingFlowParams.f6460d = this.f6469f.build();
            ArrayList arrayList5 = this.f6467d;
            if (arrayList5 != null) {
                arrayList = new ArrayList(arrayList5);
            } else {
                arrayList = new ArrayList();
            }
            billingFlowParams.f6462f = arrayList;
            billingFlowParams.f6463g = this.f6468e;
            List list3 = this.f6466c;
            if (list3 != null) {
                zzk = com.google.android.gms.internal.play_billing.zzbt.zzj(list3);
            } else {
                zzk = com.google.android.gms.internal.play_billing.zzbt.zzk();
            }
            billingFlowParams.f6461e = zzk;
            return billingFlowParams;
        }

        @NonNull
        public Builder setIsOfferPersonalized(boolean z10) {
            this.f6468e = z10;
            return this;
        }

        @NonNull
        public Builder setObfuscatedAccountId(@NonNull String str) {
            this.f6464a = str;
            return this;
        }

        @NonNull
        public Builder setObfuscatedProfileId(@NonNull String str) {
            this.f6465b = str;
            return this;
        }

        @NonNull
        public Builder setProductDetailsParamsList(@NonNull List<ProductDetailsParams> list) {
            this.f6466c = new ArrayList(list);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setSkuDetails(@NonNull SkuDetails skuDetails) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(skuDetails);
            this.f6467d = arrayList;
            return this;
        }

        @NonNull
        public Builder setSubscriptionUpdateParams(@NonNull SubscriptionUpdateParams subscriptionUpdateParams) {
            this.f6469f = SubscriptionUpdateParams.b(subscriptionUpdateParams);
            return this;
        }

        /* synthetic */ Builder(zzcf zzcfVar) {
            SubscriptionUpdateParams.Builder newBuilder = SubscriptionUpdateParams.newBuilder();
            SubscriptionUpdateParams.Builder.a(newBuilder);
            this.f6469f = newBuilder;
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static final class ProductDetailsParams {

        /* renamed from: a  reason: collision with root package name */
        private final ProductDetails f6470a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f6471b;

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        /* loaded from: classes2.dex */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private ProductDetails f6472a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private String f6473b;

            private Builder() {
                throw null;
            }

            @NonNull
            public ProductDetailsParams build() {
                zzbg.zzc(this.f6472a, "ProductDetails is required for constructing ProductDetailsParams.");
                return new ProductDetailsParams(this, null);
            }

            @NonNull
            public Builder setOfferToken(@NonNull String str) {
                if (!TextUtils.isEmpty(str)) {
                    this.f6473b = str;
                    return this;
                }
                throw new IllegalArgumentException("offerToken can not be empty");
            }

            @NonNull
            public Builder setProductDetails(@NonNull ProductDetails productDetails) {
                this.f6472a = productDetails;
                if (productDetails.getOneTimePurchaseOfferDetails() != null) {
                    productDetails.getOneTimePurchaseOfferDetails().getClass();
                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                    if (oneTimePurchaseOfferDetails.getOfferToken() != null) {
                        this.f6473b = oneTimePurchaseOfferDetails.getOfferToken();
                    }
                }
                return this;
            }

            /* synthetic */ Builder(zzcf zzcfVar) {
            }
        }

        /* synthetic */ ProductDetailsParams(Builder builder, zzcf zzcfVar) {
            this.f6470a = builder.f6472a;
            this.f6471b = builder.f6473b;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @NonNull
        public final ProductDetails zza() {
            return this.f6470a;
        }

        @Nullable
        public final String zzb() {
            return this.f6471b;
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class SubscriptionUpdateParams {

        /* renamed from: a  reason: collision with root package name */
        private String f6474a;

        /* renamed from: b  reason: collision with root package name */
        private String f6475b;

        /* renamed from: c  reason: collision with root package name */
        private int f6476c = 0;

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        /* loaded from: classes2.dex */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private String f6477a;

            /* renamed from: b  reason: collision with root package name */
            private String f6478b;

            /* renamed from: c  reason: collision with root package name */
            private boolean f6479c;

            /* renamed from: d  reason: collision with root package name */
            private int f6480d = 0;

            private Builder() {
            }

            static /* synthetic */ Builder a(Builder builder) {
                builder.f6479c = true;
                return builder;
            }

            @NonNull
            public SubscriptionUpdateParams build() {
                boolean z10 = true;
                if (TextUtils.isEmpty(this.f6477a) && TextUtils.isEmpty(null)) {
                    z10 = false;
                }
                boolean isEmpty = TextUtils.isEmpty(this.f6478b);
                if (z10 && !isEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                if (!this.f6479c && !z10 && isEmpty) {
                    throw new IllegalArgumentException("Old SKU purchase information(token/id) or original external transaction id must be provided.");
                }
                SubscriptionUpdateParams subscriptionUpdateParams = new SubscriptionUpdateParams(null);
                subscriptionUpdateParams.f6474a = this.f6477a;
                subscriptionUpdateParams.f6476c = this.f6480d;
                subscriptionUpdateParams.f6475b = this.f6478b;
                return subscriptionUpdateParams;
            }

            @NonNull
            public Builder setOldPurchaseToken(@NonNull String str) {
                this.f6477a = str;
                return this;
            }

            @NonNull
            @zze
            public Builder setOriginalExternalTransactionId(@NonNull String str) {
                this.f6478b = str;
                return this;
            }

            @NonNull
            public Builder setSubscriptionReplacementMode(int i10) {
                this.f6480d = i10;
                return this;
            }

            @NonNull
            @Deprecated
            public final Builder zzb(@NonNull String str) {
                this.f6477a = str;
                return this;
            }

            /* synthetic */ Builder(zzcf zzcfVar) {
            }
        }

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes2.dex */
        public @interface ReplacementMode {
            public static final int CHARGE_FULL_PRICE = 5;
            public static final int CHARGE_PRORATED_PRICE = 2;
            public static final int DEFERRED = 6;
            public static final int UNKNOWN_REPLACEMENT_MODE = 0;
            public static final int WITHOUT_PRORATION = 3;
            public static final int WITH_TIME_PRORATION = 1;
        }

        private SubscriptionUpdateParams() {
        }

        static /* bridge */ /* synthetic */ Builder b(SubscriptionUpdateParams subscriptionUpdateParams) {
            Builder newBuilder = newBuilder();
            newBuilder.zzb(subscriptionUpdateParams.f6474a);
            newBuilder.setSubscriptionReplacementMode(subscriptionUpdateParams.f6476c);
            newBuilder.setOriginalExternalTransactionId(subscriptionUpdateParams.f6475b);
            return newBuilder;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        final int a() {
            return this.f6476c;
        }

        final String c() {
            return this.f6474a;
        }

        final String d() {
            return this.f6475b;
        }

        /* synthetic */ SubscriptionUpdateParams(zzcf zzcfVar) {
        }
    }

    private BillingFlowParams() {
        throw null;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final BillingResult a() {
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
        if (this.f6461e.isEmpty()) {
            return u.f6671i;
        }
        ProductDetailsParams productDetailsParams = (ProductDetailsParams) this.f6461e.get(0);
        for (int i10 = 1; i10 < this.f6461e.size(); i10++) {
            ProductDetailsParams productDetailsParams2 = (ProductDetailsParams) this.f6461e.get(i10);
            if (!productDetailsParams2.zza().getProductType().equals(productDetailsParams.zza().getProductType()) && !productDetailsParams2.zza().getProductType().equals("play_pass_subs")) {
                return u.a(5, "All products should have same ProductType.");
            }
        }
        String zza = productDetailsParams.zza().zza();
        HashMap hashMap = new HashMap();
        HashSet hashSet = new HashSet();
        com.google.android.gms.internal.play_billing.zzbt zzbtVar = this.f6461e;
        int size = zzbtVar.size();
        for (int i11 = 0; i11 < size; i11++) {
            ProductDetailsParams productDetailsParams3 = (ProductDetailsParams) zzbtVar.get(i11);
            if (productDetailsParams3.zza().getSubscriptionOfferDetails() != null && productDetailsParams3.zzb() == null) {
                return u.a(5, String.format("offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: %s", productDetailsParams3.zza().getProductId()));
            }
            if (hashMap.containsKey(productDetailsParams3.zza().getProductId())) {
                return u.a(5, String.format("ProductId can not be duplicated. Invalid product id: %s.", productDetailsParams3.zza().getProductId()));
            }
            hashMap.put(productDetailsParams3.zza().getProductId(), productDetailsParams3);
            if (!productDetailsParams.zza().getProductType().equals("play_pass_subs") && !productDetailsParams3.zza().getProductType().equals("play_pass_subs") && !zza.equals(productDetailsParams3.zza().zza())) {
                return u.a(5, "All products must have the same package name.");
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (hashMap.containsKey(str)) {
                ProductDetailsParams productDetailsParams4 = (ProductDetailsParams) hashMap.get(str);
                return u.a(5, String.format("OldProductId must not be one of the products to be purchased. Invalid old product id: %s.", str));
            }
        }
        List<ProductDetails.OneTimePurchaseOfferDetails> oneTimePurchaseOfferDetailsList = productDetailsParams.zza().getOneTimePurchaseOfferDetailsList();
        String zzb = productDetailsParams.zzb();
        if (zzb != null && oneTimePurchaseOfferDetailsList != null) {
            Iterator<ProductDetails.OneTimePurchaseOfferDetails> it2 = oneTimePurchaseOfferDetailsList.iterator();
            while (true) {
                if (it2.hasNext()) {
                    oneTimePurchaseOfferDetails = it2.next();
                    if (zzb.equals(oneTimePurchaseOfferDetails.getOfferToken())) {
                        break;
                    }
                } else {
                    oneTimePurchaseOfferDetails = null;
                    break;
                }
            }
            if (oneTimePurchaseOfferDetails != null && oneTimePurchaseOfferDetails.zza() != null) {
                return u.a(5, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay.");
            }
        }
        return u.f6671i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean i() {
        if (this.f6458b == null && this.f6459c == null && this.f6460d.d() == null && this.f6460d.a() == 0 && !this.f6457a && !this.f6463g) {
            com.google.android.gms.internal.play_billing.zzbt zzbtVar = this.f6461e;
            if (zzbtVar != null) {
                int size = zzbtVar.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ProductDetailsParams productDetailsParams = (ProductDetailsParams) zzbtVar.get(i10);
                }
            }
            return false;
        }
        return true;
    }

    public int zza() {
        return 0;
    }

    public final int zzb() {
        return this.f6460d.a();
    }

    public long zzc() {
        return 0L;
    }

    @Nullable
    public final String zze() {
        return this.f6458b;
    }

    @Nullable
    public final String zzf() {
        return this.f6459c;
    }

    @Nullable
    public String zzg() {
        return null;
    }

    @Nullable
    public final String zzh() {
        return this.f6460d.c();
    }

    @Nullable
    public final String zzi() {
        return this.f6460d.d();
    }

    @NonNull
    public final ArrayList zzj() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f6462f);
        return arrayList;
    }

    @NonNull
    public final List zzk() {
        return this.f6461e;
    }

    public final boolean zzs() {
        return this.f6463g;
    }

    /* synthetic */ BillingFlowParams(zzcf zzcfVar) {
    }
}
