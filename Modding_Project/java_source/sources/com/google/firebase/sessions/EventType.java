package com.google.firebase.sessions;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: SessionEvent.kt */
@Metadata
/* loaded from: classes5.dex */
public final class EventType implements r8.f {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ EventType[] $VALUES;
    public static final EventType EVENT_TYPE_UNKNOWN = new EventType("EVENT_TYPE_UNKNOWN", 0, 0);
    public static final EventType SESSION_START = new EventType("SESSION_START", 1, 1);
    private final int number;

    private static final /* synthetic */ EventType[] $values() {
        return new EventType[]{EVENT_TYPE_UNKNOWN, SESSION_START};
    }

    static {
        EventType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private EventType(String str, int i10, int i11) {
        this.number = i11;
    }

    @NotNull
    public static ss.a<EventType> getEntries() {
        return $ENTRIES;
    }

    public static EventType valueOf(String str) {
        return (EventType) Enum.valueOf(EventType.class, str);
    }

    public static EventType[] values() {
        return (EventType[]) $VALUES.clone();
    }

    @Override // r8.f
    public int getNumber() {
        return this.number;
    }
}
