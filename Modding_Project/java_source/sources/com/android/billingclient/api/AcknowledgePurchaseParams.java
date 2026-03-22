package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class AcknowledgePurchaseParams {

    /* renamed from: a  reason: collision with root package name */
    private String f6446a;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f6447a;

        private Builder() {
            throw null;
        }

        @NonNull
        public AcknowledgePurchaseParams build() {
            String str = this.f6447a;
            if (str != null) {
                AcknowledgePurchaseParams acknowledgePurchaseParams = new AcknowledgePurchaseParams(null);
                acknowledgePurchaseParams.f6446a = str;
                return acknowledgePurchaseParams;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        @NonNull
        public Builder setPurchaseToken(@NonNull String str) {
            this.f6447a = str;
            return this;
        }

        /* synthetic */ Builder(zza zzaVar) {
        }
    }

    private AcknowledgePurchaseParams() {
        throw null;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getPurchaseToken() {
        return this.f6446a;
    }

    /* synthetic */ AcknowledgePurchaseParams(zza zzaVar) {
    }
}
