package com.startshorts.androidplayer.ui.view.immersion.notification;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ImmersionNotificationType.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionNotificationType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ImmersionNotificationType[] $VALUES;
    public static final ImmersionNotificationType TRAILER_RESERVATION = new ImmersionNotificationType("TRAILER_RESERVATION", 0);
    public static final ImmersionNotificationType SHORTS_COLLECTION = new ImmersionNotificationType("SHORTS_COLLECTION", 1);
    public static final ImmersionNotificationType CURR_EPISODE_END = new ImmersionNotificationType("CURR_EPISODE_END", 2);
    public static final ImmersionNotificationType NEXT_EPISODE_PREPARED = new ImmersionNotificationType("NEXT_EPISODE_PREPARED", 3);

    private static final /* synthetic */ ImmersionNotificationType[] $values() {
        return new ImmersionNotificationType[]{TRAILER_RESERVATION, SHORTS_COLLECTION, CURR_EPISODE_END, NEXT_EPISODE_PREPARED};
    }

    static {
        ImmersionNotificationType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private ImmersionNotificationType(String str, int i10) {
    }

    @NotNull
    public static a<ImmersionNotificationType> getEntries() {
        return $ENTRIES;
    }

    public static ImmersionNotificationType valueOf(String str) {
        return (ImmersionNotificationType) Enum.valueOf(ImmersionNotificationType.class, str);
    }

    public static ImmersionNotificationType[] values() {
        return (ImmersionNotificationType[]) $VALUES.clone();
    }
}
