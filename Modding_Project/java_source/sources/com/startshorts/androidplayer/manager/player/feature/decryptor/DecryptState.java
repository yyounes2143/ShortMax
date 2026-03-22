package com.startshorts.androidplayer.manager.player.feature.decryptor;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: DecryptState.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DecryptState {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ DecryptState[] $VALUES;
    private final int value;
    public static final DecryptState START = new DecryptState("START", 0, 1);
    public static final DecryptState END = new DecryptState("END", 1, 2);

    private static final /* synthetic */ DecryptState[] $values() {
        return new DecryptState[]{START, END};
    }

    static {
        DecryptState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private DecryptState(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<DecryptState> getEntries() {
        return $ENTRIES;
    }

    public static DecryptState valueOf(String str) {
        return (DecryptState) Enum.valueOf(DecryptState.class, str);
    }

    public static DecryptState[] values() {
        return (DecryptState[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
