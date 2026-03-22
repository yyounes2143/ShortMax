package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextUnit.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextUnitType {
    private final long type;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = m4256constructorimpl(0);
    private static final long Sp = m4256constructorimpl(4294967296L);
    private static final long Em = m4256constructorimpl(8589934592L);

    /* compiled from: TextUnit.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getEm-UIouoOA  reason: not valid java name */
        public final long m4262getEmUIouoOA() {
            return TextUnitType.Em;
        }

        /* renamed from: getSp-UIouoOA  reason: not valid java name */
        public final long m4263getSpUIouoOA() {
            return TextUnitType.Sp;
        }

        /* renamed from: getUnspecified-UIouoOA  reason: not valid java name */
        public final long m4264getUnspecifiedUIouoOA() {
            return TextUnitType.Unspecified;
        }

        private Companion() {
        }
    }

    private /* synthetic */ TextUnitType(long j10) {
        this.type = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TextUnitType m4255boximpl(long j10) {
        return new TextUnitType(j10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m4257equalsimpl(long j10, Object obj) {
        if (!(obj instanceof TextUnitType) || j10 != ((TextUnitType) obj).m4261unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m4258equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4259hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4260toStringimpl(long j10) {
        if (m4258equalsimpl0(j10, Unspecified)) {
            return "Unspecified";
        }
        if (m4258equalsimpl0(j10, Sp)) {
            return "Sp";
        }
        if (m4258equalsimpl0(j10, Em)) {
            return "Em";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m4257equalsimpl(this.type, obj);
    }

    public int hashCode() {
        return m4259hashCodeimpl(this.type);
    }

    @NotNull
    public String toString() {
        return m4260toStringimpl(this.type);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4261unboximpl() {
        return this.type;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m4256constructorimpl(long j10) {
        return j10;
    }
}
