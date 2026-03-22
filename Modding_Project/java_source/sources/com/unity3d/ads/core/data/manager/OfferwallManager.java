package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: OfferwallManager.kt */
@Metadata
/* loaded from: classes7.dex */
public interface OfferwallManager {
    @Nullable
    Object getVersion(@NotNull c<? super String> cVar);

    @Nullable
    Object isAdReady(@NotNull String str, @NotNull c<? super Boolean> cVar);

    @Nullable
    Object isConnected(@NotNull c<? super Boolean> cVar);

    @Nullable
    Object loadAd(@NotNull String str, @NotNull c<? super Unit> cVar);

    @NotNull
    kt.b<OfferwallEventData> showAd(@NotNull String str);
}
