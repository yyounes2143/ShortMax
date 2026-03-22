package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class ConsumeParams {

    /* renamed from: a  reason: collision with root package name */
    private String f6487a;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f6488a;

        private Builder() {
            throw null;
        }

        @NonNull
        public ConsumeParams build() {
            String str = this.f6488a;
            if (str != null) {
                ConsumeParams consumeParams = new ConsumeParams(null);
                consumeParams.f6487a = str;
                return consumeParams;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        @NonNull
        public Builder setPurchaseToken(@NonNull String str) {
            this.f6488a = str;
            return this;
        }

        /* synthetic */ Builder(zzck zzckVar) {
        }
    }

    private ConsumeParams() {
        throw null;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getPurchaseToken() {
        return this.f6487a;
    }

    /* synthetic */ ConsumeParams(zzck zzckVar) {
    }
}
