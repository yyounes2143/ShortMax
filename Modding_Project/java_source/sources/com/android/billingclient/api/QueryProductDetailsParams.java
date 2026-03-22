package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.HashSet;
import java.util.List;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class QueryProductDetailsParams {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.gms.internal.play_billing.zzbt f6557a;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private com.google.android.gms.internal.play_billing.zzbt f6558a;

        private Builder() {
            throw null;
        }

        @NonNull
        public QueryProductDetailsParams build() {
            if (this.f6558a != null) {
                return new QueryProductDetailsParams(this, null);
            }
            throw new IllegalArgumentException("Product list must be set to a non empty list.");
        }

        @NonNull
        public Builder setProductList(@NonNull List<Product> list) {
            if (list != null && !list.isEmpty()) {
                HashSet hashSet = new HashSet();
                for (Product product : list) {
                    if (!"play_pass_subs".equals(product.zzb())) {
                        hashSet.add(product.zzb());
                    }
                }
                if (hashSet.size() <= 1) {
                    this.f6558a = com.google.android.gms.internal.play_billing.zzbt.zzj(list);
                    return this;
                }
                throw new IllegalArgumentException("All products should be of the same product type.");
            }
            throw new IllegalArgumentException("Product list cannot be empty.");
        }

        /* synthetic */ Builder(zzcy zzcyVar) {
        }
    }

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class Product {

        /* renamed from: a  reason: collision with root package name */
        private final String f6559a;

        /* renamed from: b  reason: collision with root package name */
        private final String f6560b;

        /* compiled from: com.android.billingclient:billing@@8.0.0 */
        /* loaded from: classes2.dex */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private String f6561a;

            /* renamed from: b  reason: collision with root package name */
            private String f6562b;

            private Builder() {
                throw null;
            }

            @NonNull
            public Product build() {
                if (!"first_party".equals(this.f6562b)) {
                    if (this.f6561a != null) {
                        if (this.f6562b != null) {
                            return new Product(this, null);
                        }
                        throw new IllegalArgumentException("Product type must be provided.");
                    }
                    throw new IllegalArgumentException("Product id must be provided.");
                }
                throw new IllegalArgumentException("Serialized doc id must be provided for first party products.");
            }

            @NonNull
            public Builder setProductId(@NonNull String str) {
                this.f6561a = str;
                return this;
            }

            @NonNull
            public Builder setProductType(@NonNull String str) {
                this.f6562b = str;
                return this;
            }

            /* synthetic */ Builder(zzcy zzcyVar) {
            }
        }

        /* synthetic */ Product(Builder builder, zzcy zzcyVar) {
            this.f6559a = builder.f6561a;
            this.f6560b = builder.f6562b;
        }

        @NonNull
        public static Builder newBuilder() {
            return new Builder(null);
        }

        @NonNull
        public final String zza() {
            return this.f6559a;
        }

        @NonNull
        public final String zzb() {
            return this.f6560b;
        }
    }

    /* synthetic */ QueryProductDetailsParams(Builder builder, zzcy zzcyVar) {
        this.f6557a = builder.f6558a;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    public final com.google.android.gms.internal.play_billing.zzbt zza() {
        return this.f6557a;
    }

    @NonNull
    public final String zzb() {
        return ((Product) this.f6557a.get(0)).zzb();
    }
}
