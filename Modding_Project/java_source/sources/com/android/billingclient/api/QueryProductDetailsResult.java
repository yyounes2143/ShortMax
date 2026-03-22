package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.List;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
@zzo
/* loaded from: classes2.dex */
public final class QueryProductDetailsResult {

    /* renamed from: a  reason: collision with root package name */
    private final List<ProductDetails> f6563a;

    /* renamed from: b  reason: collision with root package name */
    private final List<UnfetchedProduct> f6564b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public QueryProductDetailsResult(List<ProductDetails> list, List<UnfetchedProduct> list2) {
        this.f6563a = list;
        this.f6564b = list2;
    }

    @NonNull
    public static QueryProductDetailsResult create(@NonNull List<ProductDetails> list, @NonNull List<UnfetchedProduct> list2) {
        return new QueryProductDetailsResult(list, list2);
    }

    @NonNull
    @zzo
    public List<ProductDetails> getProductDetailsList() {
        return this.f6563a;
    }

    @NonNull
    @zzo
    public List<UnfetchedProduct> getUnfetchedProductList() {
        return this.f6564b;
    }
}
