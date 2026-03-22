package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class QueryPurchaseHistoryParams {

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f6565a;

        private Builder() {
            throw null;
        }

        @NonNull
        public QueryPurchaseHistoryParams build() {
            if (this.f6565a != null) {
                return new QueryPurchaseHistoryParams(this, null);
            }
            throw new IllegalArgumentException("Product type must be set");
        }

        @NonNull
        public Builder setProductType(@NonNull String str) {
            this.f6565a = str;
            return this;
        }

        /* synthetic */ Builder(zzcz zzczVar) {
        }
    }

    /* synthetic */ QueryPurchaseHistoryParams(Builder builder, zzcz zzczVar) {
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }
}
