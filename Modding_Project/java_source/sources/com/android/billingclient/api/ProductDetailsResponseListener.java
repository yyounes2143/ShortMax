package com.android.billingclient.api;

import androidx.annotation.NonNull;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes2.dex */
public interface ProductDetailsResponseListener {
    void onProductDetailsResponse(@NonNull BillingResult billingResult, @NonNull QueryProductDetailsResult queryProductDetailsResult);
}
