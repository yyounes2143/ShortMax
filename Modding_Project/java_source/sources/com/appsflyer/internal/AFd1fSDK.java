package com.appsflyer.internal;

import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.browser.trusted.sharing.ShareTarget;
import com.appsflyer.AppsFlyerLib;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes2.dex */
public final class AFd1fSDK extends AFd1bSDK {
    @NotNull
    public static final AFa1uSDK AFa1uSDK = new AFa1uSDK(null);

    @Metadata
    /* loaded from: classes2.dex */
    public static final class AFa1uSDK {
        private AFa1uSDK() {
        }

        @VisibleForTesting
        public static String getMediationNetwork(@NotNull String str, @NotNull String str2, @Nullable String str3, @NotNull String str4, @NotNull String str5) {
            Intrinsics.checkNotNullParameter(str, "");
            Intrinsics.checkNotNullParameter(str2, "");
            Intrinsics.checkNotNullParameter(str4, "");
            Intrinsics.checkNotNullParameter(str5, "");
            return AFj1dSDK.getMonetizationNetwork(TextUtils.join("\u2063", new String[]{str5, str3, str + str2}), str4);
        }

        static String getMonetizationNetwork(String str, String str2, String str3) {
            String format = String.format(AFd1nSDK.getMonetizationNetwork, AppsFlyerLib.getInstance().getHostPrefix(), AFa1ySDK.getRevenue().getHostName());
            return format + str + str3 + "?device_id=" + str2;
        }

        public /* synthetic */ AFa1uSDK(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* synthetic */ AFd1fSDK(String str, Map map, byte[] bArr, String str2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, map, (i10 & 4) != 0 ? null : bArr, (i10 & 8) != 0 ? ShareTarget.METHOD_GET : str2, (i10 & 16) != 0 ? false : z10);
    }

    @NotNull
    public static final AFd1fSDK getRevenue(@NotNull String str, @Nullable String str2, @NotNull String str3, @NotNull String str4) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str3, "");
        Intrinsics.checkNotNullParameter(str4, "");
        String monetizationNetwork = AFa1uSDK.getMonetizationNetwork(str, str2, str3);
        String valueOf = String.valueOf(System.currentTimeMillis());
        AFd1fSDK aFd1fSDK = new AFd1fSDK(monetizationNetwork, p0.m(ms.k.a("Connection", "close"), ms.k.a("af_request_epoch_ms", valueOf), ms.k.a("af_sig", AFa1uSDK.getMediationNetwork(str, str3, str2, str4, valueOf))), null, null, false, 28, null);
        aFd1fSDK.component4 = 10000;
        return aFd1fSDK;
    }

    private AFd1fSDK(String str, Map<String, String> map, byte[] bArr, String str2, boolean z10) {
        super(str, bArr, str2, map, z10);
    }
}
