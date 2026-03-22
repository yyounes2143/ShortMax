package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class QueryPurchasesParams {

    /* renamed from: a  reason: collision with root package name */
    private final String f6566a;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f6567a;

        private Builder() {
            throw null;
        }

        @NonNull
        public QueryPurchasesParams build() {
            if (this.f6567a != null) {
                return new QueryPurchasesParams(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        @NonNull
        public Builder setProductType(@NonNull String str) {
            this.f6567a = str;
            return this;
        }

        /* synthetic */ Builder(zzda zzdaVar) {
        }
    }

    /* synthetic */ QueryPurchasesParams(Builder builder, zzda zzdaVar) {
        this.f6566a = builder.f6567a;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public final String zza() {
        return this.f6566a;
    }
}
