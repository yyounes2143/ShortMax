package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.f;
import com.google.auto.value.AutoValue;
@AutoValue
/* loaded from: classes4.dex */
public abstract class ComplianceData {

    /* loaded from: classes4.dex */
    public enum ProductIdOrigin {
        NOT_SET(0),
        EVENT_OVERRIDE(5);
        
        private static final SparseArray<ProductIdOrigin> valueMap;
        private final int value;

        static {
            ProductIdOrigin productIdOrigin = NOT_SET;
            ProductIdOrigin productIdOrigin2 = EVENT_OVERRIDE;
            SparseArray<ProductIdOrigin> sparseArray = new SparseArray<>();
            valueMap = sparseArray;
            sparseArray.put(0, productIdOrigin);
            sparseArray.put(5, productIdOrigin2);
        }

        ProductIdOrigin(int i10) {
            this.value = i10;
        }

        @Nullable
        public static ProductIdOrigin forNumber(int i10) {
            return valueMap.get(i10);
        }

        public int getValue() {
            return this.value;
        }
    }

    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        @NonNull
        public abstract ComplianceData a();

        @NonNull
        public abstract a b(@Nullable p pVar);

        @NonNull
        public abstract a c(@Nullable ProductIdOrigin productIdOrigin);
    }

    @NonNull
    public static a a() {
        return new f.b();
    }

    @Nullable
    public abstract p b();

    @Nullable
    public abstract ProductIdOrigin c();
}
