package com.startshorts.androidplayer.bean.region;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Region.kt */
@Metadata
/* loaded from: classes6.dex */
public final class Region {
    @Nullable
    private String areaCode;
    @Nullable
    private String countryName;

    @Nullable
    public final String getAreaCode() {
        return this.areaCode;
    }

    @Nullable
    public final String getCountryName() {
        return this.countryName;
    }

    public final void setAreaCode(@Nullable String str) {
        this.areaCode = str;
    }

    public final void setCountryName(@Nullable String str) {
        this.countryName = str;
    }
}
