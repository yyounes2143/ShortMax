package com.shorttv.aar.billing.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: CommonProductDetails.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ProductDataType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ProductDataType[] $VALUES;
    public static final ProductDataType GOOGLE_PRODUCT = new ProductDataType("GOOGLE_PRODUCT", 0);
    public static final ProductDataType GOOGLE_SKU = new ProductDataType("GOOGLE_SKU", 1);
    public static final ProductDataType XIAOMI_SKU = new ProductDataType("XIAOMI_SKU", 2);
    public static final ProductDataType HUAWEI_SKU = new ProductDataType("HUAWEI_SKU", 3);

    private static final /* synthetic */ ProductDataType[] $values() {
        return new ProductDataType[]{GOOGLE_PRODUCT, GOOGLE_SKU, XIAOMI_SKU, HUAWEI_SKU};
    }

    static {
        ProductDataType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private ProductDataType(String str, int i10) {
    }

    @NotNull
    public static a<ProductDataType> getEntries() {
        return $ENTRIES;
    }

    public static ProductDataType valueOf(String str) {
        return (ProductDataType) Enum.valueOf(ProductDataType.class, str);
    }

    public static ProductDataType[] values() {
        return (ProductDataType[]) $VALUES.clone();
    }
}
