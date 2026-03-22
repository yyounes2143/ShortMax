package com.startshorts.androidplayer.ui.activity.test;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: TestRepository.kt */
@Metadata
/* loaded from: classes7.dex */
public final class Type {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ Type[] $VALUES;
    public static final Type TEXT_TYPE = new Type("TEXT_TYPE", 0);

    private static final /* synthetic */ Type[] $values() {
        return new Type[]{TEXT_TYPE};
    }

    static {
        Type[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private Type(String str, int i10) {
    }

    @NotNull
    public static a<Type> getEntries() {
        return $ENTRIES;
    }

    public static Type valueOf(String str) {
        return (Type) Enum.valueOf(Type.class, str);
    }

    public static Type[] values() {
        return (Type[]) $VALUES.clone();
    }
}
