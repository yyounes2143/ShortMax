package io.ktor.util.date;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Date.kt */
@Metadata
/* loaded from: classes8.dex */
public enum WeekDay {
    MONDAY("Mon"),
    TUESDAY("Tue"),
    WEDNESDAY("Wed"),
    THURSDAY("Thu"),
    FRIDAY("Fri"),
    SATURDAY("Sat"),
    SUNDAY("Sun");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull
    private final String value;

    /* compiled from: Date.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Date.kt\nio/ktor/util/date/WeekDay$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final WeekDay a(int i10) {
            return WeekDay.values()[i10];
        }

        private a() {
        }
    }

    WeekDay(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
