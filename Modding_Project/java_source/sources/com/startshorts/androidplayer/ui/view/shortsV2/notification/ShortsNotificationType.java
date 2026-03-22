package com.startshorts.androidplayer.ui.view.shortsV2.notification;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ShortsNotificationType.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortsNotificationType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ShortsNotificationType[] $VALUES;
    public static final ShortsNotificationType CURR_EPISODE_END = new ShortsNotificationType("CURR_EPISODE_END", 0);
    public static final ShortsNotificationType NEXT_EPISODE_PREPARED = new ShortsNotificationType("NEXT_EPISODE_PREPARED", 1);
    public static final ShortsNotificationType TRAILER_RESERVATION = new ShortsNotificationType("TRAILER_RESERVATION", 2);

    private static final /* synthetic */ ShortsNotificationType[] $values() {
        return new ShortsNotificationType[]{CURR_EPISODE_END, NEXT_EPISODE_PREPARED, TRAILER_RESERVATION};
    }

    static {
        ShortsNotificationType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private ShortsNotificationType(String str, int i10) {
    }

    @NotNull
    public static a<ShortsNotificationType> getEntries() {
        return $ENTRIES;
    }

    public static ShortsNotificationType valueOf(String str) {
        return (ShortsNotificationType) Enum.valueOf(ShortsNotificationType.class, str);
    }

    public static ShortsNotificationType[] values() {
        return (ShortsNotificationType[]) $VALUES.clone();
    }
}
