package com.unity3d.ads.beta;

import android.content.Context;
import com.unity3d.services.core.log.DeviceLog;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InitializationConfiguration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class InitializationConfiguration {
    @NotNull
    private final Context context;
    @NotNull
    private final Map<String, String> extras;
    @NotNull
    private final String gameID;
    private final boolean isTestModeEnabled;
    @NotNull
    private final DeviceLog.UnityAdsLogLevel logLevel;
    @Nullable
    private final MediationInfo mediationInfo;

    /* compiled from: InitializationConfiguration.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Builder {
        @NotNull
        private final Context context;
        @NotNull
        private Map<String, String> extras;
        @NotNull
        private final String gameID;
        private final boolean isTestModeEnabled;
        @NotNull
        private DeviceLog.UnityAdsLogLevel logLevel;
        @Nullable
        private MediationInfo mediationInfo;

        public Builder(@NotNull Context context, @NotNull String gameID, boolean z10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(gameID, "gameID");
            this.context = context;
            this.gameID = gameID;
            this.isTestModeEnabled = z10;
            this.logLevel = DeviceLog.UnityAdsLogLevel.INFO;
            this.extras = p0.i();
        }

        @NotNull
        public final InitializationConfiguration build() {
            return new InitializationConfiguration(this.context, this.gameID, this.isTestModeEnabled, this.logLevel, this.extras, this.mediationInfo);
        }

        @NotNull
        public final Builder withExtras(@NotNull Map<String, String> extras) {
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.extras = extras;
            return this;
        }

        @NotNull
        public final Builder withLogLevel(@NotNull DeviceLog.UnityAdsLogLevel logLevel) {
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            this.logLevel = logLevel;
            return this;
        }

        @NotNull
        public final Builder withMediationInfo(@Nullable MediationInfo mediationInfo) {
            this.mediationInfo = mediationInfo;
            return this;
        }
    }

    public InitializationConfiguration(@NotNull Context context, @NotNull String gameID, boolean z10, @NotNull DeviceLog.UnityAdsLogLevel logLevel, @NotNull Map<String, String> extras, @Nullable MediationInfo mediationInfo) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameID, "gameID");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.context = context;
        this.gameID = gameID;
        this.isTestModeEnabled = z10;
        this.logLevel = logLevel;
        this.extras = extras;
        this.mediationInfo = mediationInfo;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final Map<String, String> getExtras() {
        return this.extras;
    }

    @NotNull
    public final String getGameID() {
        return this.gameID;
    }

    @NotNull
    public final DeviceLog.UnityAdsLogLevel getLogLevel() {
        return this.logLevel;
    }

    @Nullable
    public final MediationInfo getMediationInfo() {
        return this.mediationInfo;
    }

    public final boolean isTestModeEnabled() {
        return this.isTestModeEnabled;
    }

    public /* synthetic */ InitializationConfiguration(Context context, String str, boolean z10, DeviceLog.UnityAdsLogLevel unityAdsLogLevel, Map map, MediationInfo mediationInfo, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, z10, (i10 & 8) != 0 ? DeviceLog.UnityAdsLogLevel.INFO : unityAdsLogLevel, (i10 & 16) != 0 ? p0.i() : map, (i10 & 32) != 0 ? null : mediationInfo);
    }
}
