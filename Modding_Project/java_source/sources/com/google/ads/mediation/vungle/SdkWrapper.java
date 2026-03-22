package com.google.ads.mediation.vungle;

import android.content.Context;
import com.vungle.ads.InitializationListener;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VungleSdkWrapper.kt */
@Metadata
/* loaded from: classes4.dex */
public interface SdkWrapper {
    @Nullable
    String getBiddingToken(@NotNull Context context);

    @NotNull
    String getSdkVersion();

    void init(@NotNull Context context, @NotNull String str, @NotNull InitializationListener initializationListener);

    boolean isInitialized();
}
