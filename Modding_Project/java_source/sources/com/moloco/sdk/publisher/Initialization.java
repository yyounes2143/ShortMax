package com.moloco.sdk.publisher;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata
/* loaded from: classes6.dex */
public final class Initialization {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ Initialization[] $VALUES;
    public static final Initialization SUCCESS = new Initialization("SUCCESS", 0);
    public static final Initialization FAILURE = new Initialization("FAILURE", 1);

    private static final /* synthetic */ Initialization[] $values() {
        return new Initialization[]{SUCCESS, FAILURE};
    }

    static {
        Initialization[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private Initialization(String str, int i10) {
    }

    @NotNull
    public static ss.a<Initialization> getEntries() {
        return $ENTRIES;
    }

    public static Initialization valueOf(String str) {
        return (Initialization) Enum.valueOf(Initialization.class, str);
    }

    public static Initialization[] values() {
        return (Initialization[]) $VALUES.clone();
    }
}
