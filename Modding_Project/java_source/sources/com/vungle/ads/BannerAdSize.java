package com.vungle.ads;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdSize.kt */
@ms.c
@Metadata
/* loaded from: classes7.dex */
public enum BannerAdSize {
    VUNGLE_MREC("mrec", 300, 250),
    BANNER("banner", 320, 50),
    BANNER_SHORT("banner_short", 300, 50),
    BANNER_LEADERBOARD("banner_leaderboard", 728, 90);
    
    private final int height;
    @NotNull
    private final String sizeName;
    private final int width;

    BannerAdSize(String str, int i10, int i11) {
        this.sizeName = str;
        this.width = i10;
        this.height = i11;
    }

    public final int getHeight() {
        return this.height;
    }

    @NotNull
    public final String getSizeName() {
        return this.sizeName;
    }

    public final int getWidth() {
        return this.width;
    }
}
