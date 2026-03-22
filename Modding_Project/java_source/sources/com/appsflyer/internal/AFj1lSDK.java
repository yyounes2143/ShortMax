package com.appsflyer.internal;

import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes2.dex */
public interface AFj1lSDK {
    @NotNull
    public static final AFa1zSDK AFa1zSDK = AFa1zSDK.getCurrencyIso4217Code;

    /* loaded from: classes2.dex */
    public static final class AFa1zSDK {
        static final /* synthetic */ AFa1zSDK getCurrencyIso4217Code = new AFa1zSDK();

        private AFa1zSDK() {
        }
    }

    void AFAdRevenueData();

    @NotNull
    Map<String, Object> getMediationNetwork();

    void getMonetizationNetwork();
}
