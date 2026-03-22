package com.appsflyer.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFa1jSDK {
    @NotNull
    public static final AFa1ySDK AFa1ySDK = new AFa1ySDK(null);
    @Nullable
    final AFa1lSDK AFAdRevenueData;
    @NotNull
    final Map<String, Object> getMonetizationNetwork;

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1ySDK {
        private AFa1ySDK() {
        }

        @NotNull
        public static AFa1jSDK AFAdRevenueData(@NotNull AFh1mSDK aFh1mSDK) {
            Intrinsics.checkNotNullParameter(aFh1mSDK, "");
            Map<String, Object> map = aFh1mSDK.AFAdRevenueData;
            Intrinsics.checkNotNullExpressionValue(map, "");
            return new AFa1jSDK(map, null, 2, null);
        }

        @NotNull
        public static AFa1jSDK getRevenue(@NotNull AFa1lSDK aFa1lSDK) {
            Intrinsics.checkNotNullParameter(aFa1lSDK, "");
            return new AFa1jSDK(new LinkedHashMap(), aFa1lSDK, null);
        }

        public /* synthetic */ AFa1ySDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private AFa1jSDK(Map<String, Object> map, AFa1lSDK aFa1lSDK) {
        this.getMonetizationNetwork = map;
        this.AFAdRevenueData = aFa1lSDK;
    }

    @NotNull
    public static final AFa1jSDK getCurrencyIso4217Code(@NotNull AFh1mSDK aFh1mSDK) {
        return AFa1ySDK.AFAdRevenueData(aFh1mSDK);
    }

    @NotNull
    public static final AFa1jSDK getMediationNetwork(@NotNull AFa1lSDK aFa1lSDK) {
        return AFa1ySDK.getRevenue(aFa1lSDK);
    }

    public final boolean getMonetizationNetwork(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "");
        return this.getMonetizationNetwork.containsKey(str);
    }

    public final void getRevenue(@NotNull String str, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(str, "");
        this.getMonetizationNetwork.put(str, obj);
        AFa1lSDK aFa1lSDK = this.AFAdRevenueData;
        if (aFa1lSDK != null) {
            aFa1lSDK.getMonetizationNetwork(this.getMonetizationNetwork);
        }
    }

    /* synthetic */ AFa1jSDK(Map map, AFa1lSDK aFa1lSDK, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, (i10 & 2) != 0 ? null : aFa1lSDK);
    }

    public /* synthetic */ AFa1jSDK(Map map, AFa1lSDK aFa1lSDK, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, aFa1lSDK);
    }
}
