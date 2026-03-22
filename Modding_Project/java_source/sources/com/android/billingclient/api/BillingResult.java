package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class BillingResult {

    /* renamed from: a  reason: collision with root package name */
    private int f6481a;

    /* renamed from: b  reason: collision with root package name */
    private int f6482b;

    /* renamed from: c  reason: collision with root package name */
    private String f6483c;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private int f6484a;

        /* renamed from: b  reason: collision with root package name */
        private int f6485b = 0;

        /* renamed from: c  reason: collision with root package name */
        private String f6486c = "";

        private Builder() {
        }

        @NonNull
        public BillingResult build() {
            BillingResult billingResult = new BillingResult();
            billingResult.f6481a = this.f6484a;
            billingResult.f6482b = this.f6485b;
            billingResult.f6483c = this.f6486c;
            return billingResult;
        }

        @NonNull
        public Builder setDebugMessage(@NonNull String str) {
            this.f6486c = str;
            return this;
        }

        @NonNull
        @zzk
        public Builder setOnPurchasesUpdatedSubResponseCode(int i10) {
            this.f6485b = i10;
            return this;
        }

        @NonNull
        public Builder setResponseCode(int i10) {
            this.f6484a = i10;
            return this;
        }

        /* synthetic */ Builder(zzci zzciVar) {
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getDebugMessage() {
        return this.f6483c;
    }

    @zzk
    public int getOnPurchasesUpdatedSubResponseCode() {
        return this.f6482b;
    }

    public int getResponseCode() {
        return this.f6481a;
    }

    @NonNull
    public String toString() {
        String zzk = com.google.android.gms.internal.play_billing.zzc.zzk(this.f6481a);
        String str = this.f6483c;
        return "Response Code: " + zzk + ", Debug Message: " + str;
    }
}
