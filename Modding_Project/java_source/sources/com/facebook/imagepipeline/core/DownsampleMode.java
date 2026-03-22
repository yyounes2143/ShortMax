package com.facebook.imagepipeline.core;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: DownsampleMode.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DownsampleMode {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ DownsampleMode[] $VALUES;
    public static final DownsampleMode ALWAYS = new DownsampleMode("ALWAYS", 0);
    public static final DownsampleMode AUTO = new DownsampleMode("AUTO", 1);
    public static final DownsampleMode NEVER = new DownsampleMode("NEVER", 2);

    private static final /* synthetic */ DownsampleMode[] $values() {
        return new DownsampleMode[]{ALWAYS, AUTO, NEVER};
    }

    static {
        DownsampleMode[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private DownsampleMode(String str, int i10) {
    }

    @NotNull
    public static a<DownsampleMode> getEntries() {
        return $ENTRIES;
    }

    public static DownsampleMode valueOf(String str) {
        return (DownsampleMode) Enum.valueOf(DownsampleMode.class, str);
    }

    public static DownsampleMode[] values() {
        return (DownsampleMode[]) $VALUES.clone();
    }
}
