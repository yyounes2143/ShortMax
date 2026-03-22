package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@Deprecated
/* loaded from: classes2.dex */
public class SkuDetailsParams {

    /* renamed from: a  reason: collision with root package name */
    private String f6570a;

    /* renamed from: b  reason: collision with root package name */
    private List f6571b;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f6572a;

        /* renamed from: b  reason: collision with root package name */
        private List f6573b;

        private Builder() {
            throw null;
        }

        @NonNull
        public SkuDetailsParams build() {
            String str = this.f6572a;
            if (str != null) {
                if (this.f6573b != null) {
                    SkuDetailsParams skuDetailsParams = new SkuDetailsParams();
                    skuDetailsParams.f6570a = str;
                    skuDetailsParams.f6571b = this.f6573b;
                    return skuDetailsParams;
                }
                throw new IllegalArgumentException("SKU list must be set");
            }
            throw new IllegalArgumentException("SKU type must be set");
        }

        @NonNull
        public Builder setSkusList(@NonNull List<String> list) {
            this.f6573b = new ArrayList(list);
            return this;
        }

        @NonNull
        public Builder setType(@NonNull String str) {
            this.f6572a = str;
            return this;
        }

        /* synthetic */ Builder(zzdb zzdbVar) {
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getSkuType() {
        return this.f6570a;
    }

    @NonNull
    public List<String> getSkusList() {
        return this.f6571b;
    }
}
