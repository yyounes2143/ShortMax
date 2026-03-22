package com.vungle.ads.internal.platform;

import androidx.core.util.Consumer;
import com.vungle.ads.internal.model.AdvertisingInfo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Platform.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Platform {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final String MANUFACTURER_AMAZON = "Amazon";

    /* compiled from: Platform.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        public static final String MANUFACTURER_AMAZON = "Amazon";

        private Companion() {
        }
    }

    @Nullable
    AdvertisingInfo getAdvertisingInfo();

    @Nullable
    String getAppSetId();

    @Nullable
    Integer getAppSetIdScope();

    long getBuildTime();

    @NotNull
    String getCarrierName();

    long getLastBootTime();

    long getOSInstallationTime();

    long getSDKInstallationTime();

    @Nullable
    String getUserAgent();

    void getUserAgentLazy(@NotNull Consumer<String> consumer);

    float getVolumeLevel();

    boolean isBatterySaverEnabled();

    boolean isSdCardPresent();

    boolean isSideLoaded();

    boolean isSilentModeEnabled();

    boolean isSoundEnabled();
}
