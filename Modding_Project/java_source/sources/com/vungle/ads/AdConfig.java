package com.vungle.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdConfig.kt */
@Metadata
/* loaded from: classes7.dex */
public class AdConfig {
    public static final int AUTO_ROTATE = 2;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int IMMEDIATE_BACK = 2;
    public static final int LANDSCAPE = 1;
    public static final int PORTRAIT = 0;
    @NotNull
    private static final String WATERMARK = "WATERMARK";
    private int settings;
    @NotNull
    private Map<String, String> extras = new LinkedHashMap();
    private int adOrientation = 2;

    /* compiled from: AdConfig.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: AdConfig.kt */
    @Retention(RetentionPolicy.RUNTIME)
    @Metadata
    /* loaded from: classes7.dex */
    public @interface Orientation {
    }

    /* compiled from: AdConfig.kt */
    @Retention(RetentionPolicy.RUNTIME)
    @Metadata
    /* loaded from: classes7.dex */
    public @interface Settings {
    }

    public final int getAdOrientation() {
        return this.adOrientation;
    }

    public final int getSettings() {
        return this.settings;
    }

    @Nullable
    public final String getWatermark$vungle_ads_release() {
        return this.extras.get(WATERMARK);
    }

    public final void setAdOrientation(int i10) {
        this.adOrientation = i10;
    }

    public final void setBackButtonImmediatelyEnabled(boolean z10) {
        int i10;
        if (z10) {
            i10 = this.settings | 2;
        } else {
            i10 = this.settings & (-3);
        }
        this.settings = i10;
    }

    public final void setWatermark(@NotNull String watermark) {
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.extras.put(WATERMARK, watermark);
    }

    @Orientation
    public static /* synthetic */ void getAdOrientation$annotations() {
    }
}
