package com.inmobi.ads;

import com.startshorts.androidplayer.bean.order.OtherOrderResp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata
/* loaded from: classes5.dex */
public final class AudioStatus {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ AudioStatus[] $VALUES;
    @NotNull
    public static final Companion Companion;
    public static final AudioStatus PLAYING = new AudioStatus("PLAYING", 0);
    public static final AudioStatus PAUSED = new AudioStatus("PAUSED", 1);
    public static final AudioStatus COMPLETED = new AudioStatus(OtherOrderResp.STATUS_COMPLETED, 2);

    @Metadata
    /* loaded from: classes5.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public /* bridge */ /* synthetic */ Object from(Object obj) {
            return from(((Number) obj).intValue());
        }

        private Companion() {
        }

        @NotNull
        public AudioStatus from(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    return AudioStatus.COMPLETED;
                }
                return AudioStatus.PAUSED;
            }
            return AudioStatus.PLAYING;
        }

        @NotNull
        public Integer to(@NotNull AudioStatus item) {
            Intrinsics.checkNotNullParameter(item, "item");
            return Integer.valueOf(item.ordinal());
        }
    }

    private static final /* synthetic */ AudioStatus[] $values() {
        return new AudioStatus[]{PLAYING, PAUSED, COMPLETED};
    }

    static {
        AudioStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
        Companion = new Companion(null);
    }

    private AudioStatus(String str, int i10) {
    }

    @NotNull
    public static AudioStatus from(int i10) {
        return Companion.from(i10);
    }

    @NotNull
    public static ss.a<AudioStatus> getEntries() {
        return $ENTRIES;
    }

    public static int to(@NotNull AudioStatus audioStatus) {
        return Companion.to(audioStatus).intValue();
    }

    public static AudioStatus valueOf(String str) {
        return (AudioStatus) Enum.valueOf(AudioStatus.class, str);
    }

    public static AudioStatus[] values() {
        return (AudioStatus[]) $VALUES.clone();
    }
}
