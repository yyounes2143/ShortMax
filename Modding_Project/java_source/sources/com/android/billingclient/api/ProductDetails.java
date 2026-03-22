package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class ProductDetails {
    private final String zza;
    private final JSONObject zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;
    @Nullable
    private final String zzi;
    @Nullable
    private final List zzj;
    @Nullable
    private final List zzk;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @zzj
    /* loaded from: classes2.dex */
    public static final class InstallmentPlanDetails {

        /* renamed from: a  reason: collision with root package name */
        private final int f6498a;

        /* renamed from: b  reason: collision with root package name */
        private final int f6499b;

        InstallmentPlanDetails(JSONObject jSONObject) throws JSONException {
            this.f6498a = jSONObject.getInt("commitmentPaymentsCount");
            this.f6499b = jSONObject.optInt("subsequentCommitmentPaymentsCount");
        }

        @zzj
        public int getInstallmentPlanCommitmentPaymentsCount() {
            return this.f6498a;
        }

        @zzj
        public int getSubsequentInstallmentPlanCommitmentPaymentsCount() {
            return this.f6499b;
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static final class OneTimePurchaseOfferDetails {

        /* renamed from: a  reason: collision with root package name */
        private final String f6500a;

        /* renamed from: b  reason: collision with root package name */
        private final long f6501b;

        /* renamed from: c  reason: collision with root package name */
        private final String f6502c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final String f6503d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final String f6504e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final String f6505f;

        /* renamed from: g  reason: collision with root package name */
        private final List f6506g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private final Long f6507h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private final DiscountDisplayInfo f6508i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private final ValidTimeWindow f6509j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        private final LimitedQuantityInfo f6510k;
        @Nullable

        /* renamed from: l  reason: collision with root package name */
        private final String f6511l;
        @Nullable

        /* renamed from: m  reason: collision with root package name */
        private final RentalDetails f6512m;
        @Nullable

        /* renamed from: n  reason: collision with root package name */
        private final zzcs f6513n;

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        @zzl
        /* loaded from: classes2.dex */
        public static final class DiscountDisplayInfo {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private final Integer f6514a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private final DiscountAmount f6515b;

            /* compiled from: com.android.billingclient:billing@@8.0.0 */
            @zzl
            /* loaded from: classes2.dex */
            public static final class DiscountAmount {

                /* renamed from: a  reason: collision with root package name */
                private final String f6516a;

                /* renamed from: b  reason: collision with root package name */
                private final long f6517b;

                /* renamed from: c  reason: collision with root package name */
                private final String f6518c;

                DiscountAmount(JSONObject jSONObject) {
                    this.f6516a = jSONObject.optString("formattedDiscountAmount");
                    this.f6517b = jSONObject.optLong("discountAmountMicros");
                    this.f6518c = jSONObject.optString("discountAmountCurrencyCode");
                }

                @NonNull
                public String getDiscountAmountCurrencyCode() {
                    return this.f6518c;
                }

                public long getDiscountAmountMicros() {
                    return this.f6517b;
                }

                @NonNull
                public String getFormattedDiscountAmount() {
                    return this.f6516a;
                }
            }

            DiscountDisplayInfo(JSONObject jSONObject) throws JSONException {
                Integer num;
                if (jSONObject.has("percentageDiscount")) {
                    num = Integer.valueOf(jSONObject.optInt("percentageDiscount"));
                } else {
                    num = null;
                }
                this.f6514a = num;
                JSONObject optJSONObject = jSONObject.optJSONObject("discountAmount");
                this.f6515b = optJSONObject != null ? new DiscountAmount(optJSONObject) : null;
            }

            @Nullable
            @zzl
            public DiscountAmount getDiscountAmount() {
                return this.f6515b;
            }

            @Nullable
            @zzl
            public Integer getPercentageDiscount() {
                return this.f6514a;
            }
        }

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        @zzl
        /* loaded from: classes2.dex */
        public static final class LimitedQuantityInfo {

            /* renamed from: a  reason: collision with root package name */
            private final int f6519a;

            /* renamed from: b  reason: collision with root package name */
            private final int f6520b;

            LimitedQuantityInfo(JSONObject jSONObject) throws JSONException {
                this.f6519a = jSONObject.getInt("maximumQuantity");
                this.f6520b = jSONObject.getInt("remainingQuantity");
            }

            @zzl
            public int getMaximumQuantity() {
                return this.f6519a;
            }

            @zzl
            public int getRemainingQuantity() {
                return this.f6520b;
            }
        }

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        @zzm
        /* loaded from: classes2.dex */
        public static final class RentalDetails {

            /* renamed from: a  reason: collision with root package name */
            private final String f6521a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private final String f6522b;

            RentalDetails(JSONObject jSONObject) throws JSONException {
                this.f6521a = jSONObject.getString("rentalPeriod");
                String optString = jSONObject.optString("rentalExpirationPeriod");
                this.f6522b = true == optString.isEmpty() ? null : optString;
            }

            @Nullable
            @zzm
            public String getRentalExpirationPeriod() {
                return this.f6522b;
            }

            @NonNull
            @zzm
            public String getRentalPeriod() {
                return this.f6521a;
            }
        }

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        @zzl
        /* loaded from: classes2.dex */
        public static final class ValidTimeWindow {
            @Nullable

            /* renamed from: a  reason: collision with root package name */
            private final Long f6523a;
            @Nullable

            /* renamed from: b  reason: collision with root package name */
            private final Long f6524b;

            ValidTimeWindow(JSONObject jSONObject) throws JSONException {
                Long l10;
                if (jSONObject.has("startTimeMillis")) {
                    l10 = Long.valueOf(jSONObject.optLong("startTimeMillis"));
                } else {
                    l10 = null;
                }
                this.f6523a = l10;
                this.f6524b = jSONObject.has("endTimeMillis") ? Long.valueOf(jSONObject.optLong("endTimeMillis")) : null;
            }

            @Nullable
            @zzl
            public Long getEndTimeMillis() {
                return this.f6524b;
            }

            @Nullable
            @zzl
            public Long getStartTimeMillis() {
                return this.f6523a;
            }
        }

        OneTimePurchaseOfferDetails(JSONObject jSONObject) throws JSONException {
            Long l10;
            DiscountDisplayInfo discountDisplayInfo;
            ValidTimeWindow validTimeWindow;
            LimitedQuantityInfo limitedQuantityInfo;
            RentalDetails rentalDetails;
            this.f6500a = jSONObject.optString("formattedPrice");
            this.f6501b = jSONObject.optLong("priceAmountMicros");
            this.f6502c = jSONObject.optString("priceCurrencyCode");
            String optString = jSONObject.optString("offerIdToken");
            this.f6503d = true == optString.isEmpty() ? null : optString;
            String optString2 = jSONObject.optString("offerId");
            this.f6504e = true == optString2.isEmpty() ? null : optString2;
            String optString3 = jSONObject.optString("purchaseOptionId");
            this.f6505f = true == optString3.isEmpty() ? null : optString3;
            jSONObject.optInt("offerType");
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            this.f6506g = new ArrayList();
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    this.f6506g.add(optJSONArray.getString(i10));
                }
            }
            if (jSONObject.has("fullPriceMicros")) {
                l10 = Long.valueOf(jSONObject.optLong("fullPriceMicros"));
            } else {
                l10 = null;
            }
            this.f6507h = l10;
            JSONObject optJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            if (optJSONObject == null) {
                discountDisplayInfo = null;
            } else {
                discountDisplayInfo = new DiscountDisplayInfo(optJSONObject);
            }
            this.f6508i = discountDisplayInfo;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            if (optJSONObject2 == null) {
                validTimeWindow = null;
            } else {
                validTimeWindow = new ValidTimeWindow(optJSONObject2);
            }
            this.f6509j = validTimeWindow;
            JSONObject optJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            if (optJSONObject3 == null) {
                limitedQuantityInfo = null;
            } else {
                limitedQuantityInfo = new LimitedQuantityInfo(optJSONObject3);
            }
            this.f6510k = limitedQuantityInfo;
            this.f6511l = jSONObject.optString("serializedDocid");
            JSONObject optJSONObject4 = jSONObject.optJSONObject("preorderDetails");
            if (optJSONObject4 != null) {
                optJSONObject4.getLong("preorderReleaseTimeMillis");
                optJSONObject4.getLong("preorderPresaleEndTimeMillis");
            }
            JSONObject optJSONObject5 = jSONObject.optJSONObject("rentalDetails");
            if (optJSONObject5 == null) {
                rentalDetails = null;
            } else {
                rentalDetails = new RentalDetails(optJSONObject5);
            }
            this.f6512m = rentalDetails;
            JSONObject optJSONObject6 = jSONObject.optJSONObject("autoPayDetails");
            this.f6513n = optJSONObject6 != null ? new zzcs(optJSONObject6) : null;
            JSONArray optJSONArray2 = jSONObject.optJSONArray("pricingPhases");
            if (optJSONArray2 == null) {
                return;
            }
            new PricingPhases(optJSONArray2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Nullable
        public final String a() {
            return this.f6511l;
        }

        @Nullable
        @zzl
        public DiscountDisplayInfo getDiscountDisplayInfo() {
            return this.f6508i;
        }

        @NonNull
        public String getFormattedPrice() {
            return this.f6500a;
        }

        @Nullable
        @zzl
        public Long getFullPriceMicros() {
            return this.f6507h;
        }

        @Nullable
        @zzl
        public LimitedQuantityInfo getLimitedQuantityInfo() {
            return this.f6510k;
        }

        @Nullable
        @zzm
        @zzl
        public String getOfferId() {
            return this.f6504e;
        }

        @Nullable
        @zzl
        public List<String> getOfferTags() {
            return this.f6506g;
        }

        @Nullable
        @zzm
        @zzl
        public String getOfferToken() {
            return this.f6503d;
        }

        public long getPriceAmountMicros() {
            return this.f6501b;
        }

        @NonNull
        public String getPriceCurrencyCode() {
            return this.f6502c;
        }

        @Nullable
        @zzm
        public String getPurchaseOptionId() {
            return this.f6505f;
        }

        @Nullable
        @zzm
        public RentalDetails getRentalDetails() {
            return this.f6512m;
        }

        @Nullable
        @zzl
        public ValidTimeWindow getValidTimeWindow() {
            return this.f6509j;
        }

        @Nullable
        public final zzcs zza() {
            return this.f6513n;
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static final class PricingPhase {

        /* renamed from: a  reason: collision with root package name */
        private final String f6525a;

        /* renamed from: b  reason: collision with root package name */
        private final long f6526b;

        /* renamed from: c  reason: collision with root package name */
        private final String f6527c;

        /* renamed from: d  reason: collision with root package name */
        private final String f6528d;

        /* renamed from: e  reason: collision with root package name */
        private final int f6529e;

        /* renamed from: f  reason: collision with root package name */
        private final int f6530f;

        PricingPhase(JSONObject jSONObject) {
            this.f6528d = jSONObject.optString("billingPeriod");
            this.f6527c = jSONObject.optString("priceCurrencyCode");
            this.f6525a = jSONObject.optString("formattedPrice");
            this.f6526b = jSONObject.optLong("priceAmountMicros");
            this.f6530f = jSONObject.optInt("recurrenceMode");
            this.f6529e = jSONObject.optInt("billingCycleCount");
        }

        public int getBillingCycleCount() {
            return this.f6529e;
        }

        @NonNull
        public String getBillingPeriod() {
            return this.f6528d;
        }

        @NonNull
        public String getFormattedPrice() {
            return this.f6525a;
        }

        public long getPriceAmountMicros() {
            return this.f6526b;
        }

        @NonNull
        public String getPriceCurrencyCode() {
            return this.f6527c;
        }

        public int getRecurrenceMode() {
            return this.f6530f;
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class PricingPhases {

        /* renamed from: a  reason: collision with root package name */
        private final List f6531a;

        PricingPhases(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    if (optJSONObject != null) {
                        arrayList.add(new PricingPhase(optJSONObject));
                    }
                }
            }
            this.f6531a = arrayList;
        }

        @NonNull
        public List<PricingPhase> getPricingPhaseList() {
            return this.f6531a;
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface RecurrenceMode {
        public static final int FINITE_RECURRING = 2;
        public static final int INFINITE_RECURRING = 1;
        public static final int NON_RECURRING = 3;
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static final class SubscriptionOfferDetails {

        /* renamed from: a  reason: collision with root package name */
        private final String f6532a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f6533b;

        /* renamed from: c  reason: collision with root package name */
        private final String f6534c;

        /* renamed from: d  reason: collision with root package name */
        private final PricingPhases f6535d;

        /* renamed from: e  reason: collision with root package name */
        private final List f6536e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private final InstallmentPlanDetails f6537f;

        SubscriptionOfferDetails(JSONObject jSONObject) throws JSONException {
            this.f6532a = jSONObject.optString("basePlanId");
            String optString = jSONObject.optString("offerId");
            this.f6533b = true == optString.isEmpty() ? null : optString;
            this.f6534c = jSONObject.getString("offerIdToken");
            this.f6535d = new PricingPhases(jSONObject.getJSONArray("pricingPhases"));
            JSONObject optJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            this.f6537f = optJSONObject != null ? new InstallmentPlanDetails(optJSONObject) : null;
            JSONObject optJSONObject2 = jSONObject.optJSONObject("transitionPlanDetails");
            if (optJSONObject2 != null) {
                optJSONObject2.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                optJSONObject2.optString("title");
                optJSONObject2.optString("name");
                optJSONObject2.optString(InMobiNetworkValues.DESCRIPTION);
                optJSONObject2.optString("basePlanId");
                JSONObject optJSONObject3 = optJSONObject2.optJSONObject("pricingPhase");
                if (optJSONObject3 != null) {
                    new PricingPhase(optJSONObject3);
                }
            }
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("offerTags");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.getString(i10));
                }
            }
            this.f6536e = arrayList;
        }

        @NonNull
        public String getBasePlanId() {
            return this.f6532a;
        }

        @Nullable
        @zzj
        public InstallmentPlanDetails getInstallmentPlanDetails() {
            return this.f6537f;
        }

        @Nullable
        public String getOfferId() {
            return this.f6533b;
        }

        @NonNull
        public List<String> getOfferTags() {
            return this.f6536e;
        }

        @NonNull
        public String getOfferToken() {
            return this.f6534c;
        }

        @NonNull
        public PricingPhases getPricingPhases() {
            return this.f6535d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProductDetails(String str) throws JSONException {
        ArrayList arrayList;
        this.zza = str;
        JSONObject jSONObject = new JSONObject(str);
        this.zzb = jSONObject;
        String optString = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        this.zzc = optString;
        String optString2 = jSONObject.optString("type");
        this.zzd = optString2;
        if (!TextUtils.isEmpty(optString)) {
            if (!TextUtils.isEmpty(optString2)) {
                this.zze = jSONObject.optString("title");
                this.zzf = jSONObject.optString("name");
                this.zzg = jSONObject.optString(InMobiNetworkValues.DESCRIPTION);
                jSONObject.optString("packageDisplayName");
                jSONObject.optString("iconUrl");
                this.zzh = jSONObject.optString("skuDetailsToken");
                this.zzi = jSONObject.optString("serializedDocid");
                JSONArray optJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
                if (optJSONArray != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                        arrayList2.add(new SubscriptionOfferDetails(optJSONArray.getJSONObject(i10)));
                    }
                    this.zzj = arrayList2;
                } else {
                    if (!optString2.equals("subs") && !optString2.equals("play_pass_subs")) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList();
                    }
                    this.zzj = arrayList;
                }
                JSONObject optJSONObject = this.zzb.optJSONObject("oneTimePurchaseOfferDetails");
                JSONArray optJSONArray2 = this.zzb.optJSONArray("oneTimePurchaseOfferDetailsList");
                ArrayList arrayList3 = new ArrayList();
                if (optJSONArray2 != null) {
                    for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                        arrayList3.add(new OneTimePurchaseOfferDetails(optJSONArray2.getJSONObject(i11)));
                    }
                    this.zzk = arrayList3;
                    return;
                } else if (optJSONObject != null) {
                    arrayList3.add(new OneTimePurchaseOfferDetails(optJSONObject));
                    this.zzk = arrayList3;
                    return;
                } else {
                    this.zzk = null;
                    return;
                }
            }
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        throw new IllegalArgumentException("Product id cannot be empty.");
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductDetails)) {
            return false;
        }
        return TextUtils.equals(this.zza, ((ProductDetails) obj).zza);
    }

    @NonNull
    public String getDescription() {
        return this.zzg;
    }

    @NonNull
    public String getName() {
        return this.zzf;
    }

    @Nullable
    public OneTimePurchaseOfferDetails getOneTimePurchaseOfferDetails() {
        List list = this.zzk;
        if (list != null && !list.isEmpty()) {
            return (OneTimePurchaseOfferDetails) list.get(0);
        }
        return null;
    }

    @Nullable
    @zzm
    @zzl
    public List<OneTimePurchaseOfferDetails> getOneTimePurchaseOfferDetailsList() {
        return this.zzk;
    }

    @NonNull
    public String getProductId() {
        return this.zzc;
    }

    @NonNull
    public String getProductType() {
        return this.zzd;
    }

    @Nullable
    public List<SubscriptionOfferDetails> getSubscriptionOfferDetails() {
        return this.zzj;
    }

    @NonNull
    public String getTitle() {
        return this.zze;
    }

    public int hashCode() {
        return this.zza.hashCode();
    }

    @NonNull
    public String toString() {
        List list = this.zzj;
        String obj = this.zzb.toString();
        String valueOf = String.valueOf(list);
        return "ProductDetails{jsonString='" + this.zza + "', parsedJson=" + obj + ", productId='" + this.zzc + "', productType='" + this.zzd + "', title='" + this.zze + "', productDetailsToken='" + this.zzh + "', subscriptionOfferDetails=" + valueOf + "}";
    }

    @NonNull
    public final String zza() {
        return this.zzb.optString("packageName");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzb() {
        return this.zzh;
    }

    @Nullable
    public String zzc() {
        return this.zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final List zzd() {
        return this.zzk;
    }
}
