package com.google.android.recaptcha.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbe {
    public zzbe() {
        new ConcurrentHashMap();
        zzb();
    }

    @NotNull
    public static final Set zza(@NotNull Context context) {
        try {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Object systemService = context.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
                linkedHashSet.add(zzqi.TRANSPORT_WIFI);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(0)) {
                linkedHashSet.add(zzqi.TRANSPORT_CELLULAR);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                linkedHashSet.add(zzqi.TRANSPORT_VPN);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                linkedHashSet.add(zzqi.TRANSPORT_ETHERNET);
            }
            if (networkCapabilities != null && networkCapabilities.hasCapability(16)) {
                linkedHashSet.add(zzqi.NET_CAPABILITY_VALIDATED);
            }
            return linkedHashSet;
        } catch (Exception unused) {
            return y0.f();
        }
    }

    private static final Map zzb() {
        Map o10 = p0.o(k.a(0, zzqi.NET_CAPABILITY_MMS), k.a(1, zzqi.NET_CAPABILITY_SUPL), k.a(2, zzqi.NET_CAPABILITY_DUN), k.a(3, zzqi.NET_CAPABILITY_FOTA), k.a(4, zzqi.NET_CAPABILITY_IMS), k.a(5, zzqi.NET_CAPABILITY_CBS), k.a(6, zzqi.NET_CAPABILITY_WIFI_P2P), k.a(7, zzqi.NET_CAPABILITY_IA), k.a(8, zzqi.NET_CAPABILITY_RCS), k.a(9, zzqi.NET_CAPABILITY_XCAP), k.a(10, zzqi.NET_CAPABILITY_EIMS), k.a(11, zzqi.NET_CAPABILITY_NOT_METERED), k.a(12, zzqi.NET_CAPABILITY_INTERNET), k.a(13, zzqi.NET_CAPABILITY_NOT_RESTRICTED), k.a(14, zzqi.NET_CAPABILITY_TRUSTED), k.a(15, zzqi.NET_CAPABILITY_NOT_VPN));
        int i10 = Build.VERSION.SDK_INT;
        o10.put(17, zzqi.NET_CAPABILITY_CAPTIVE_PORTAL);
        o10.put(16, zzqi.NET_CAPABILITY_VALIDATED);
        if (i10 >= 28) {
            o10.put(18, zzqi.NET_CAPABILITY_NOT_ROAMING);
            o10.put(19, zzqi.NET_CAPABILITY_FOREGROUND);
            o10.put(20, zzqi.NET_CAPABILITY_NOT_CONGESTED);
            o10.put(21, zzqi.NET_CAPABILITY_NOT_SUSPENDED);
        }
        if (i10 >= 29) {
            o10.put(23, zzqi.NET_CAPABILITY_MCX);
        }
        if (i10 >= 30) {
            o10.put(25, zzqi.NET_CAPABILITY_TEMPORARILY_NOT_METERED);
        }
        if (i10 >= 31) {
            o10.put(32, zzqi.NET_CAPABILITY_HEAD_UNIT);
            o10.put(29, zzqi.NET_CAPABILITY_ENTERPRISE);
        }
        if (i10 >= 33) {
            o10.put(35, zzqi.NET_CAPABILITY_PRIORITIZE_BANDWIDTH);
            o10.put(34, zzqi.NET_CAPABILITY_PRIORITIZE_LATENCY);
            o10.put(33, zzqi.NET_CAPABILITY_MMTEL);
        }
        return o10;
    }
}
