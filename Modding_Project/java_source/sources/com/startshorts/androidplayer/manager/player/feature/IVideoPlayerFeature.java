package com.startshorts.androidplayer.manager.player.feature;

import com.ss.ttvideoengine.TTVideoEngine;
import kotlin.Metadata;
import lf.s;
import org.jetbrains.annotations.NotNull;
/* compiled from: IVideoPlayerFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public interface IVideoPlayerFeature {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: IVideoPlayerFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class FeatureType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ FeatureType[] $VALUES;
        public static final FeatureType BASE = new FeatureType("BASE", 0);
        public static final FeatureType SUBTITLE = new FeatureType("SUBTITLE", 1);
        public static final FeatureType SEAMLESS_SWITCH = new FeatureType("SEAMLESS_SWITCH", 2);
        public static final FeatureType ABR_STARTUP = new FeatureType("ABR_STARTUP", 3);
        public static final FeatureType REQUEST_HEADERS = new FeatureType("REQUEST_HEADERS", 4);
        public static final FeatureType DECRYPT = new FeatureType("DECRYPT", 5);

        private static final /* synthetic */ FeatureType[] $values() {
            return new FeatureType[]{BASE, SUBTITLE, SEAMLESS_SWITCH, ABR_STARTUP, REQUEST_HEADERS, DECRYPT};
        }

        static {
            FeatureType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private FeatureType(String str, int i10) {
        }

        @NotNull
        public static ss.a<FeatureType> getEntries() {
            return $ENTRIES;
        }

        public static FeatureType valueOf(String str) {
            return (FeatureType) Enum.valueOf(FeatureType.class, str);
        }

        public static FeatureType[] values() {
            return (FeatureType[]) $VALUES.clone();
        }
    }

    void a(@NotNull TTVideoEngine tTVideoEngine, @NotNull s sVar);

    void release();

    @NotNull
    FeatureType type();
}
