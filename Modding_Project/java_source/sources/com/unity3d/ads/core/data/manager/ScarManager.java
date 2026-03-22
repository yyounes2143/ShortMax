package com.unity3d.ads.core.data.manager;

import android.content.Context;
import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ScarManager.kt */
@Metadata
/* loaded from: classes7.dex */
public interface ScarManager {
    @Nullable
    Object getSignals(@Nullable List<? extends InitializationResponseOuterClass.AdFormat> list, @NotNull c<? super BiddingSignals> cVar);

    @Nullable
    Object getVersion(@NotNull c<? super String> cVar);

    @Nullable
    Object loadAd(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @NotNull String str5, int i10, @NotNull c<? super Unit> cVar);

    @NotNull
    kt.b<GmaEventData> loadBannerAd(@NotNull Context context, @NotNull BannerView bannerView, @NotNull nl.c cVar, @NotNull UnityBannerSize unityBannerSize, @NotNull String str);

    @NotNull
    kt.b<GmaEventData> show(@NotNull String str, @NotNull String str2);
}
