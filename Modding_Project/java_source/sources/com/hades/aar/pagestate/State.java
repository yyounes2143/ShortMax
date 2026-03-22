package com.hades.aar.pagestate;

import kotlin.Metadata;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata
/* loaded from: classes5.dex */
public final class State {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ State[] $VALUES;
    public static final State LOADING = new State("LOADING", 0);
    public static final State EMPTY = new State("EMPTY", 1);
    public static final State NETWORK_ERROR = new State("NETWORK_ERROR", 2);
    public static final State OTHER_ERROR = new State("OTHER_ERROR", 3);

    private static final /* synthetic */ State[] $values() {
        return new State[]{LOADING, EMPTY, NETWORK_ERROR, OTHER_ERROR};
    }

    static {
        State[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private State(String str, int i10) {
    }

    public static a<State> getEntries() {
        return $ENTRIES;
    }

    public static State valueOf(String str) {
        return (State) Enum.valueOf(State.class, str);
    }

    public static State[] values() {
        return (State[]) $VALUES.clone();
    }
}
