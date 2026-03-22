package io.ktor.util.date;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Date.kt */
@Metadata
/* loaded from: classes8.dex */
public enum Month {
    JANUARY("Jan"),
    FEBRUARY("Feb"),
    MARCH("Mar"),
    APRIL("Apr"),
    MAY("May"),
    JUNE("Jun"),
    JULY("Jul"),
    AUGUST("Aug"),
    SEPTEMBER("Sep"),
    OCTOBER("Oct"),
    NOVEMBER("Nov"),
    DECEMBER("Dec");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull
    private final String value;

    /* compiled from: Date.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Date.kt\nio/ktor/util/date/Month$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Month a(int i10) {
            return Month.values()[i10];
        }

        private a() {
        }
    }

    Month(String str) {
        this.value = str;
    }

    @NotNull
    public final String getValue() {
        return this.value;
    }
}
