package androidx.compose.ui.text;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Placeholder.kt */
@Metadata
/* loaded from: classes.dex */
public final class PlaceholderVerticalAlign {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int AboveBaseline = m3639constructorimpl(1);
    private static final int Top = m3639constructorimpl(2);
    private static final int Bottom = m3639constructorimpl(3);
    private static final int Center = m3639constructorimpl(4);
    private static final int TextTop = m3639constructorimpl(5);
    private static final int TextBottom = m3639constructorimpl(6);
    private static final int TextCenter = m3639constructorimpl(7);

    /* compiled from: Placeholder.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAboveBaseline-J6kI3mc  reason: not valid java name */
        public final int m3645getAboveBaselineJ6kI3mc() {
            return PlaceholderVerticalAlign.AboveBaseline;
        }

        /* renamed from: getBottom-J6kI3mc  reason: not valid java name */
        public final int m3646getBottomJ6kI3mc() {
            return PlaceholderVerticalAlign.Bottom;
        }

        /* renamed from: getCenter-J6kI3mc  reason: not valid java name */
        public final int m3647getCenterJ6kI3mc() {
            return PlaceholderVerticalAlign.Center;
        }

        /* renamed from: getTextBottom-J6kI3mc  reason: not valid java name */
        public final int m3648getTextBottomJ6kI3mc() {
            return PlaceholderVerticalAlign.TextBottom;
        }

        /* renamed from: getTextCenter-J6kI3mc  reason: not valid java name */
        public final int m3649getTextCenterJ6kI3mc() {
            return PlaceholderVerticalAlign.TextCenter;
        }

        /* renamed from: getTextTop-J6kI3mc  reason: not valid java name */
        public final int m3650getTextTopJ6kI3mc() {
            return PlaceholderVerticalAlign.TextTop;
        }

        /* renamed from: getTop-J6kI3mc  reason: not valid java name */
        public final int m3651getTopJ6kI3mc() {
            return PlaceholderVerticalAlign.Top;
        }

        private Companion() {
        }
    }

    private /* synthetic */ PlaceholderVerticalAlign(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PlaceholderVerticalAlign m3638boximpl(int i10) {
        return new PlaceholderVerticalAlign(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3640equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PlaceholderVerticalAlign) || i10 != ((PlaceholderVerticalAlign) obj).m3644unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3641equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3642hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3643toStringimpl(int i10) {
        if (m3641equalsimpl0(i10, AboveBaseline)) {
            return "AboveBaseline";
        }
        if (m3641equalsimpl0(i10, Top)) {
            return "Top";
        }
        if (m3641equalsimpl0(i10, Bottom)) {
            return "Bottom";
        }
        if (m3641equalsimpl0(i10, Center)) {
            return "Center";
        }
        if (m3641equalsimpl0(i10, TextTop)) {
            return "TextTop";
        }
        if (m3641equalsimpl0(i10, TextBottom)) {
            return "TextBottom";
        }
        if (m3641equalsimpl0(i10, TextCenter)) {
            return "TextCenter";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3640equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3642hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3643toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3644unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3639constructorimpl(int i10) {
        return i10;
    }
}
