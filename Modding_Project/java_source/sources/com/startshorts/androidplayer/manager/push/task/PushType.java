package com.startshorts.androidplayer.manager.push.task;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PushType.kt */
@Metadata
/* loaded from: classes6.dex */
public final class PushType {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ PushType[] $VALUES;
    public static final PushType CUSTOM = new PushType("CUSTOM", 0);
    public static final PushType CHECK_IN = new PushType("CHECK_IN", 1);
    public static final PushType SUBS_BONUS = new PushType("SUBS_BONUS", 2);
    public static final PushType NEW_SHORTS = new PushType("NEW_SHORTS", 3);
    public static final PushType RECOMMEND_SHORTS = new PushType("RECOMMEND_SHORTS", 4);
    public static final PushType START_RECHARGING = new PushType("START_RECHARGING", 5);
    public static final PushType MISS_CHECK_IN = new PushType("MISS_CHECK_IN", 6);
    public static final PushType BONUS_WILL_EXPIRED = new PushType("BONUS_WILL_EXPIRED", 7);

    private static final /* synthetic */ PushType[] $values() {
        return new PushType[]{CUSTOM, CHECK_IN, SUBS_BONUS, NEW_SHORTS, RECOMMEND_SHORTS, START_RECHARGING, MISS_CHECK_IN, BONUS_WILL_EXPIRED};
    }

    static {
        PushType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private PushType(String str, int i10) {
    }

    @NotNull
    public static a<PushType> getEntries() {
        return $ENTRIES;
    }

    public static PushType valueOf(String str) {
        return (PushType) Enum.valueOf(PushType.class, str);
    }

    public static PushType[] values() {
        return (PushType[]) $VALUES.clone();
    }
}
