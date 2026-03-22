package com.startshorts.androidplayer.bean.fb;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FBDeviceInfo.kt */
@Metadata
/* loaded from: classes6.dex */
public final class FBDeviceInfo {
    @Nullable
    private String carrier;
    @Nullable
    private String cpuCores;
    @Nullable
    private String deviceModelName;
    @Nullable
    private String deviceTimezone;
    @Nullable
    private String externalStorageSize;
    @Nullable
    private String freeSpaceInExternalStorageSize;
    @Nullable
    private String osVersion;
    @Nullable
    private String screenDensity;
    @Nullable
    private String screenHeight;
    @Nullable
    private String screenWidth;
    @Nullable
    private String timezoneAbbreviation;

    @Nullable
    public final String getCarrier() {
        return this.carrier;
    }

    @Nullable
    public final String getCpuCores() {
        return this.cpuCores;
    }

    @Nullable
    public final String getDeviceModelName() {
        return this.deviceModelName;
    }

    @Nullable
    public final String getDeviceTimezone() {
        return this.deviceTimezone;
    }

    @Nullable
    public final String getExternalStorageSize() {
        return this.externalStorageSize;
    }

    @Nullable
    public final String getFreeSpaceInExternalStorageSize() {
        return this.freeSpaceInExternalStorageSize;
    }

    @Nullable
    public final String getOsVersion() {
        return this.osVersion;
    }

    @Nullable
    public final String getScreenDensity() {
        return this.screenDensity;
    }

    @Nullable
    public final String getScreenHeight() {
        return this.screenHeight;
    }

    @Nullable
    public final String getScreenWidth() {
        return this.screenWidth;
    }

    @Nullable
    public final String getTimezoneAbbreviation() {
        return this.timezoneAbbreviation;
    }

    public final void setCarrier(@Nullable String str) {
        this.carrier = str;
    }

    public final void setCpuCores(@Nullable String str) {
        this.cpuCores = str;
    }

    public final void setDeviceModelName(@Nullable String str) {
        this.deviceModelName = str;
    }

    public final void setDeviceTimezone(@Nullable String str) {
        this.deviceTimezone = str;
    }

    public final void setExternalStorageSize(@Nullable String str) {
        this.externalStorageSize = str;
    }

    public final void setFreeSpaceInExternalStorageSize(@Nullable String str) {
        this.freeSpaceInExternalStorageSize = str;
    }

    public final void setOsVersion(@Nullable String str) {
        this.osVersion = str;
    }

    public final void setScreenDensity(@Nullable String str) {
        this.screenDensity = str;
    }

    public final void setScreenHeight(@Nullable String str) {
        this.screenHeight = str;
    }

    public final void setScreenWidth(@Nullable String str) {
        this.screenWidth = str;
    }

    public final void setTimezoneAbbreviation(@Nullable String str) {
        this.timezoneAbbreviation = str;
    }

    @NotNull
    public String toString() {
        return "FBDeviceInfo(deviceTimezone=" + this.deviceTimezone + ", carrier=" + this.carrier + ", cpuCores=" + this.cpuCores + ", externalStorageSize=" + this.externalStorageSize + ", freeSpaceInExternalStorageSize=" + this.freeSpaceInExternalStorageSize + ", deviceModelName=" + this.deviceModelName + ", screenWidth=" + this.screenWidth + ", screenHeight=" + this.screenHeight + ", screenDensity=" + this.screenDensity + ", osVersion=" + this.osVersion + ", timezoneAbbreviation=" + this.timezoneAbbreviation + ')';
    }
}
