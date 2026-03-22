package com.vungle.ads.internal.load;

import com.vungle.ads.internal.network.VungleApiClient;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RTADebugger.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RTADebugger {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String RTA_DEBUG_ENDPOINT = "https://events.ads.vungle.com/rtadebugging";
    @NotNull
    private final VungleApiClient apiClient;

    /* compiled from: RTADebugger.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RTADebugger(@NotNull VungleApiClient apiClient) {
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        this.apiClient = apiClient;
    }

    public final void reportAdMarkup(@NotNull String adm) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        this.apiClient.sendAdMarkup(adm, RTA_DEBUG_ENDPOINT);
    }
}
