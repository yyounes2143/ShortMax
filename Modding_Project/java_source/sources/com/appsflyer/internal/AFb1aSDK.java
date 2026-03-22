package com.appsflyer.internal;

import android.content.Context;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public interface AFb1aSDK {
    @NotNull
    public static final AFa1zSDK AFa1zSDK = AFa1zSDK.getCurrencyIso4217Code;

    /* loaded from: classes2.dex */
    public interface AFa1tSDK {
        void getMediationNetwork();

        void getRevenue(@NotNull AFh1qSDK aFh1qSDK);
    }

    /* loaded from: classes2.dex */
    public static final class AFa1zSDK {
        static final /* synthetic */ AFa1zSDK getCurrencyIso4217Code = new AFa1zSDK();
        private static long AFAdRevenueData = 500;

        private AFa1zSDK() {
        }

        public static long getMediationNetwork() {
            return AFAdRevenueData;
        }
    }

    void AFAdRevenueData(@NotNull Context context, @NotNull AFa1tSDK aFa1tSDK);

    boolean getMediationNetwork();

    void getMonetizationNetwork();
}
