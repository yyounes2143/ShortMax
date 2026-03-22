package com.unity3d.ads.core.data.datasource;

import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import java.util.List;
import kotlin.Metadata;
import kt.b;
import org.jetbrains.annotations.NotNull;
/* compiled from: DynamicDeviceInfoDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public interface DynamicDeviceInfoDataSource {
    @NotNull
    DynamicDeviceInfoOuterClass.DynamicDeviceInfo fetch();

    @NotNull
    String getConnectionTypeStr();

    int getCurrentUiTheme();

    @NotNull
    List<String> getLocaleList();

    @NotNull
    String getOrientation();

    int getRingerMode();

    @NotNull
    b<VolumeSettingsChange> getVolumeSettingsChange();

    boolean hasInternet();
}
