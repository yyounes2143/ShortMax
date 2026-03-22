package com.hades.aar.admanager.core;

import ca.j;
import com.bytedance.vodsetting.Module;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.vungle.ads.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata
/* loaded from: classes5.dex */
public abstract class AdFormat implements j {
    public static final AdFormat ALL = new AdFormat() { // from class: ad-manager.b.c
        @Override // com.hades.aar.admanager.core.AdFormat, ca.j
        public final String formatName() {
            return Module.ALL;
        }
    };
    public static final AdFormat APP_OPEN = new AdFormat() { // from class: ad-manager.b.d
        @Override // com.hades.aar.admanager.core.AdFormat, ca.j
        public final String formatName() {
            return "appOpen";
        }
    };
    public static final AdFormat INTERSTITIAL = new AdFormat() { // from class: ad-manager.b.f
        @Override // com.hades.aar.admanager.core.AdFormat, ca.j
        public final String formatName() {
            return Constants.PLACEMENT_TYPE_INTERSTITIAL;
        }
    };
    public static final AdFormat NATIVE = new AdFormat() { // from class: ad-manager.b.h
        @Override // com.hades.aar.admanager.core.AdFormat, ca.j
        public final String formatName() {
            return "native";
        }
    };
    public static final AdFormat REWARDED_VIDEO = new AdFormat() { // from class: ad-manager.b.i
        @Override // com.hades.aar.admanager.core.AdFormat, ca.j
        public final String formatName() {
            return AdmobPreloadConfig.REWARD;
        }
    };
    public static final AdFormat BANNER = new AdFormat() { // from class: ad-manager.b.e
        @Override // com.hades.aar.admanager.core.AdFormat, ca.j
        public final String formatName() {
            return "banner";
        }
    };
    public static final AdFormat MEDIA_VIDEO = new AdFormat() { // from class: ad-manager.b.g
        @Override // com.hades.aar.admanager.core.AdFormat, ca.j
        public final String formatName() {
            return "mediaVideo";
        }
    };
    private static final /* synthetic */ AdFormat[] $VALUES = $values();

    private static final /* synthetic */ AdFormat[] $values() {
        return new AdFormat[]{ALL, APP_OPEN, INTERSTITIAL, NATIVE, REWARDED_VIDEO, BANNER, MEDIA_VIDEO};
    }

    public /* synthetic */ AdFormat(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i10);
    }

    public static AdFormat valueOf(String str) {
        return (AdFormat) Enum.valueOf(AdFormat.class, str);
    }

    public static AdFormat[] values() {
        return (AdFormat[]) $VALUES.clone();
    }

    @NotNull
    public abstract /* synthetic */ String formatName();

    private AdFormat(String str, int i10) {
    }
}
