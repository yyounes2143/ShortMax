package com.facebook.internal;

import java.util.EnumSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SmartLoginOption.kt */
@Metadata
/* loaded from: classes3.dex */
public enum SmartLoginOption {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    
    @NotNull
    private static final EnumSet<SmartLoginOption> ALL;
    @NotNull
    public static final a Companion = new a(null);
    private final long value;

    /* compiled from: SmartLoginOption.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final EnumSet<SmartLoginOption> a(long j10) {
            EnumSet<SmartLoginOption> result = EnumSet.noneOf(SmartLoginOption.class);
            Iterator it = SmartLoginOption.ALL.iterator();
            while (it.hasNext()) {
                SmartLoginOption smartLoginOption = (SmartLoginOption) it.next();
                if ((smartLoginOption.getValue() & j10) != 0) {
                    result.add(smartLoginOption);
                }
            }
            Intrinsics.checkNotNullExpressionValue(result, "result");
            return result;
        }

        private a() {
        }
    }

    static {
        EnumSet<SmartLoginOption> allOf = EnumSet.allOf(SmartLoginOption.class);
        Intrinsics.checkNotNullExpressionValue(allOf, "allOf(SmartLoginOption::class.java)");
        ALL = allOf;
    }

    SmartLoginOption(long j10) {
        this.value = j10;
    }

    @NotNull
    public static final EnumSet<SmartLoginOption> parseOptions(long j10) {
        return Companion.a(j10);
    }

    public final long getValue() {
        return this.value;
    }
}
