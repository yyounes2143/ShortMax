package com.facebook.imagepipeline.common;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: Priority.kt */
@Metadata
/* loaded from: classes3.dex */
public final class Priority {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ Priority[] $VALUES;
    @NotNull
    public static final a Companion;
    public static final Priority LOW = new Priority("LOW", 0);
    public static final Priority MEDIUM = new Priority("MEDIUM", 1);
    public static final Priority HIGH = new Priority("HIGH", 2);

    /* compiled from: Priority.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Priority a(@NotNull Priority priority1, @NotNull Priority priority2) {
            Intrinsics.checkNotNullParameter(priority1, "priority1");
            Intrinsics.checkNotNullParameter(priority2, "priority2");
            if (priority1.ordinal() <= priority2.ordinal()) {
                return priority2;
            }
            return priority1;
        }

        private a() {
        }
    }

    private static final /* synthetic */ Priority[] $values() {
        return new Priority[]{LOW, MEDIUM, HIGH};
    }

    static {
        Priority[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
        Companion = new a(null);
    }

    private Priority(String str, int i10) {
    }

    @NotNull
    public static ss.a<Priority> getEntries() {
        return $ENTRIES;
    }

    @NotNull
    public static final Priority getHigherPriority(@NotNull Priority priority, @NotNull Priority priority2) {
        return Companion.a(priority, priority2);
    }

    public static Priority valueOf(String str) {
        return (Priority) Enum.valueOf(Priority.class, str);
    }

    public static Priority[] values() {
        return (Priority[]) $VALUES.clone();
    }
}
