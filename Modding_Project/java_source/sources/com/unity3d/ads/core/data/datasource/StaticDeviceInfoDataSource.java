package com.unity3d.ads.core.data.datasource;

import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: StaticDeviceInfoDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public interface StaticDeviceInfoDataSource {
    @Nullable
    Object fetch(@NotNull List<String> list, @NotNull c<? super StaticDeviceInfoOuterClass.StaticDeviceInfo> cVar);

    @NotNull
    StaticDeviceInfoOuterClass.StaticDeviceInfo fetchCached();

    @Nullable
    String getAnalyticsUserId();

    @NotNull
    String getAppName();

    @Nullable
    Object getAuid(@NotNull c<? super String> cVar);

    @Nullable
    Object getIdfi(@NotNull c<? super String> cVar);

    @NotNull
    String getManufacturer();

    @NotNull
    String getModel();

    @NotNull
    String getOsVersion();

    long getSystemBootTime();
}
