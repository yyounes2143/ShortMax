package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerEventType {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m3160constructorimpl(0);
    private static final int Press = m3160constructorimpl(1);
    private static final int Release = m3160constructorimpl(2);
    private static final int Move = m3160constructorimpl(3);
    private static final int Enter = m3160constructorimpl(4);
    private static final int Exit = m3160constructorimpl(5);
    private static final int Scroll = m3160constructorimpl(6);

    /* compiled from: PointerEvent.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getEnter-7fucELk  reason: not valid java name */
        public final int m3166getEnter7fucELk() {
            return PointerEventType.Enter;
        }

        /* renamed from: getExit-7fucELk  reason: not valid java name */
        public final int m3167getExit7fucELk() {
            return PointerEventType.Exit;
        }

        /* renamed from: getMove-7fucELk  reason: not valid java name */
        public final int m3168getMove7fucELk() {
            return PointerEventType.Move;
        }

        /* renamed from: getPress-7fucELk  reason: not valid java name */
        public final int m3169getPress7fucELk() {
            return PointerEventType.Press;
        }

        /* renamed from: getRelease-7fucELk  reason: not valid java name */
        public final int m3170getRelease7fucELk() {
            return PointerEventType.Release;
        }

        /* renamed from: getScroll-7fucELk  reason: not valid java name */
        public final int m3171getScroll7fucELk() {
            return PointerEventType.Scroll;
        }

        /* renamed from: getUnknown-7fucELk  reason: not valid java name */
        public final int m3172getUnknown7fucELk() {
            return PointerEventType.Unknown;
        }

        private Companion() {
        }
    }

    private /* synthetic */ PointerEventType(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PointerEventType m3159boximpl(int i10) {
        return new PointerEventType(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3161equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PointerEventType) || i10 != ((PointerEventType) obj).m3165unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3162equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3163hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3164toStringimpl(int i10) {
        if (m3162equalsimpl0(i10, Press)) {
            return "Press";
        }
        if (m3162equalsimpl0(i10, Release)) {
            return "Release";
        }
        if (m3162equalsimpl0(i10, Move)) {
            return "Move";
        }
        if (m3162equalsimpl0(i10, Enter)) {
            return "Enter";
        }
        if (m3162equalsimpl0(i10, Exit)) {
            return "Exit";
        }
        if (m3162equalsimpl0(i10, Scroll)) {
            return "Scroll";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m3161equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3163hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3164toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3165unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m3160constructorimpl(int i10) {
        return i10;
    }
}
