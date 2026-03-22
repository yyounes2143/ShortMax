package com.startshorts.androidplayer.manager.push.task;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PushPriority.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PushPriority {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ PushPriority[] $VALUES;
    private final int value;
    public static final PushPriority CUSTOM_PUSH = new PushPriority("CUSTOM_PUSH", 0, 0);
    public static final PushPriority CHECK_IN = new PushPriority("CHECK_IN", 1, 1);
    public static final PushPriority SUBS_BONUS = new PushPriority("SUBS_BONUS", 2, 2);
    public static final PushPriority START_RECHARGING = new PushPriority("START_RECHARGING", 3, 3);
    public static final PushPriority MISS_CHECK_IN = new PushPriority("MISS_CHECK_IN", 4, 4);
    public static final PushPriority BONUS_WILL_EXPIRED = new PushPriority("BONUS_WILL_EXPIRED", 5, 5);
    public static final PushPriority NEW_SHORTS = new PushPriority("NEW_SHORTS", 6, 6);
    public static final PushPriority RECOMMEND_SHORTS = new PushPriority("RECOMMEND_SHORTS", 7, 7);

    private static final /* synthetic */ PushPriority[] $values() {
        return new PushPriority[]{CUSTOM_PUSH, CHECK_IN, SUBS_BONUS, START_RECHARGING, MISS_CHECK_IN, BONUS_WILL_EXPIRED, NEW_SHORTS, RECOMMEND_SHORTS};
    }

    static {
        PushPriority[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private PushPriority(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<PushPriority> getEntries() {
        return $ENTRIES;
    }

    public static PushPriority valueOf(String str) {
        return (PushPriority) Enum.valueOf(PushPriority.class, str);
    }

    public static PushPriority[] values() {
        return (PushPriority[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
