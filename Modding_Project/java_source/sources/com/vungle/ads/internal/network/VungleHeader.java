package com.vungle.ads.internal.network;

import android.os.Build;
import com.vungle.ads.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleHeader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleHeader {
    @NotNull
    public static final VungleHeader INSTANCE;
    @Nullable
    private static String appId;
    @Nullable
    private static String appVersion;
    @NotNull
    private static String headerUa;

    static {
        VungleHeader vungleHeader = new VungleHeader();
        INSTANCE = vungleHeader;
        headerUa = vungleHeader.defaultHeader();
    }

    private VungleHeader() {
    }

    private final String defaultHeader() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
            str = "VungleAmazon/";
        } else {
            str = "VungleDroid/";
        }
        sb2.append(str);
        sb2.append(BuildConfig.VERSION_NAME);
        return sb2.toString();
    }

    @Nullable
    public final String getAppId() {
        return appId;
    }

    @Nullable
    public final String getAppVersion() {
        return appVersion;
    }

    @NotNull
    public final String getHeaderUa() {
        return headerUa;
    }

    public final void reset() {
        headerUa = defaultHeader();
    }

    public final void setAppId(@Nullable String str) {
        appId = str;
    }

    public final void setAppVersion(@Nullable String str) {
        appVersion = str;
    }

    public final void setHeaderUa(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        headerUa = str;
    }
}
