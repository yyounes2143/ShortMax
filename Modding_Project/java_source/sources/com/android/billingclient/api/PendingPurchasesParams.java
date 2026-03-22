package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@zzn
/* loaded from: classes2.dex */
public final class PendingPurchasesParams {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f6494a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f6495b;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @zzn
    /* loaded from: classes2.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private boolean f6496a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f6497b;

        private Builder() {
        }

        @NonNull
        public PendingPurchasesParams build() {
            if (this.f6496a) {
                return new PendingPurchasesParams(true, this.f6497b);
            }
            throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
        }

        @NonNull
        public Builder enableOneTimeProducts() {
            this.f6496a = true;
            return this;
        }

        @NonNull
        public Builder enablePrepaidPlans() {
            this.f6497b = true;
            return this;
        }
    }

    private PendingPurchasesParams(boolean z10, boolean z11) {
        this.f6494a = z10;
        this.f6495b = z11;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f6494a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f6495b;
    }
}
