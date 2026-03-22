package com.startshorts.androidplayer.bean.ad;

import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.vungle.ads.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: AdScene.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AdScene {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ AdScene[] $VALUES;
    @NotNull
    private final String value;
    public static final AdScene REWARD = new AdScene("REWARD", 0, AdmobPreloadConfig.REWARD);
    public static final AdScene INTERSTITIAL = new AdScene("INTERSTITIAL", 1, Constants.PLACEMENT_TYPE_INTERSTITIAL);
    public static final AdScene APP_OPEN = new AdScene("APP_OPEN", 2, "appOpen");
    public static final AdScene NATIVE = new AdScene("NATIVE", 3, "native");
    public static final AdScene BANNER = new AdScene("BANNER", 4, "banner");
    public static final AdScene MEDIA_VIDEO = new AdScene("MEDIA_VIDEO", 5, "mediaVideo");

    private static final /* synthetic */ AdScene[] $values() {
        return new AdScene[]{REWARD, INTERSTITIAL, APP_OPEN, NATIVE, BANNER, MEDIA_VIDEO};
    }

    static {
        AdScene[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private AdScene(String str, int i10, String str2) {
        this.value = str2;
    }

    @NotNull
    public static a<AdScene> getEntries() {
        return $ENTRIES;
    }

    public static AdScene valueOf(String str) {
        return (AdScene) Enum.valueOf(AdScene.class, str);
    }

    public static AdScene[] values() {
        return (AdScene[]) $VALUES.clone();
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
