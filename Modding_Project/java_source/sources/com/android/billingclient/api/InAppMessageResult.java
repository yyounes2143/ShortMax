package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public final class InAppMessageResult {

    /* renamed from: a  reason: collision with root package name */
    private final int f6492a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f6493b;

    /* compiled from: com.android.billingclient:billing@@8.0.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface InAppMessageResponseCode {
        public static final int NO_ACTION_NEEDED = 0;
        public static final int SUBSCRIPTION_STATUS_UPDATED = 1;
    }

    public InAppMessageResult(int i10, @Nullable String str) {
        this.f6492a = i10;
        this.f6493b = str;
    }

    @Nullable
    public String getPurchaseToken() {
        return this.f6493b;
    }

    public int getResponseCode() {
        return this.f6492a;
    }
}
