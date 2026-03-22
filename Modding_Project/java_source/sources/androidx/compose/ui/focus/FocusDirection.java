package androidx.compose.ui.focus;

import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FocusTraversal.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusDirection {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Next = m1540constructorimpl(1);
    private static final int Previous = m1540constructorimpl(2);
    private static final int Left = m1540constructorimpl(3);
    private static final int Right = m1540constructorimpl(4);
    private static final int Up = m1540constructorimpl(5);
    private static final int Down = m1540constructorimpl(6);
    private static final int In = m1540constructorimpl(7);
    private static final int Out = m1540constructorimpl(8);

    /* compiled from: FocusTraversal.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDown-dhqQ-8s  reason: not valid java name */
        public final int m1548getDowndhqQ8s() {
            return FocusDirection.Down;
        }

        /* renamed from: getIn-dhqQ-8s  reason: not valid java name */
        public final int m1549getIndhqQ8s() {
            return FocusDirection.In;
        }

        /* renamed from: getLeft-dhqQ-8s  reason: not valid java name */
        public final int m1550getLeftdhqQ8s() {
            return FocusDirection.Left;
        }

        /* renamed from: getNext-dhqQ-8s  reason: not valid java name */
        public final int m1551getNextdhqQ8s() {
            return FocusDirection.Next;
        }

        /* renamed from: getOut-dhqQ-8s  reason: not valid java name */
        public final int m1552getOutdhqQ8s() {
            return FocusDirection.Out;
        }

        /* renamed from: getPrevious-dhqQ-8s  reason: not valid java name */
        public final int m1553getPreviousdhqQ8s() {
            return FocusDirection.Previous;
        }

        /* renamed from: getRight-dhqQ-8s  reason: not valid java name */
        public final int m1554getRightdhqQ8s() {
            return FocusDirection.Right;
        }

        /* renamed from: getUp-dhqQ-8s  reason: not valid java name */
        public final int m1555getUpdhqQ8s() {
            return FocusDirection.Up;
        }

        private Companion() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getIn-dhqQ-8s$annotations  reason: not valid java name */
        public static /* synthetic */ void m1546getIndhqQ8s$annotations() {
        }

        @ExperimentalComposeUiApi
        /* renamed from: getOut-dhqQ-8s$annotations  reason: not valid java name */
        public static /* synthetic */ void m1547getOutdhqQ8s$annotations() {
        }
    }

    private /* synthetic */ FocusDirection(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ FocusDirection m1539boximpl(int i10) {
        return new FocusDirection(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1541equalsimpl(int i10, Object obj) {
        if (!(obj instanceof FocusDirection) || i10 != ((FocusDirection) obj).m1545unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1542equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1543hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1544toStringimpl(int i10) {
        if (m1542equalsimpl0(i10, Next)) {
            return "Next";
        }
        if (m1542equalsimpl0(i10, Previous)) {
            return "Previous";
        }
        if (m1542equalsimpl0(i10, Left)) {
            return "Left";
        }
        if (m1542equalsimpl0(i10, Right)) {
            return "Right";
        }
        if (m1542equalsimpl0(i10, Up)) {
            return "Up";
        }
        if (m1542equalsimpl0(i10, Down)) {
            return "Down";
        }
        if (m1542equalsimpl0(i10, In)) {
            return "In";
        }
        if (m1542equalsimpl0(i10, Out)) {
            return "Out";
        }
        return "Invalid FocusDirection";
    }

    public boolean equals(Object obj) {
        return m1541equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1543hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m1544toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1545unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1540constructorimpl(int i10) {
        return i10;
    }
}
