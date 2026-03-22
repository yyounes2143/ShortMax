package androidx.compose.foundation.layout;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: WindowInsets.kt */
@Metadata
/* loaded from: classes.dex */
public final class WindowInsetsSides {
    private static final int AllowLeftInLtr;
    private static final int AllowLeftInRtl;
    private static final int AllowRightInLtr;
    private static final int AllowRightInRtl;
    private static final int Bottom;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int End;
    private static final int Horizontal;
    private static final int Left;
    private static final int Right;
    private static final int Start;
    private static final int Top;
    private static final int Vertical;
    private final int value;

    /* compiled from: WindowInsets.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAllowLeftInLtr-JoeWqyM$foundation_layout_release  reason: not valid java name */
        public final int m522getAllowLeftInLtrJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowLeftInLtr;
        }

        /* renamed from: getAllowLeftInRtl-JoeWqyM$foundation_layout_release  reason: not valid java name */
        public final int m523getAllowLeftInRtlJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowLeftInRtl;
        }

        /* renamed from: getAllowRightInLtr-JoeWqyM$foundation_layout_release  reason: not valid java name */
        public final int m524getAllowRightInLtrJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowRightInLtr;
        }

        /* renamed from: getAllowRightInRtl-JoeWqyM$foundation_layout_release  reason: not valid java name */
        public final int m525getAllowRightInRtlJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowRightInRtl;
        }

        /* renamed from: getBottom-JoeWqyM  reason: not valid java name */
        public final int m526getBottomJoeWqyM() {
            return WindowInsetsSides.Bottom;
        }

        /* renamed from: getEnd-JoeWqyM  reason: not valid java name */
        public final int m527getEndJoeWqyM() {
            return WindowInsetsSides.End;
        }

        /* renamed from: getHorizontal-JoeWqyM  reason: not valid java name */
        public final int m528getHorizontalJoeWqyM() {
            return WindowInsetsSides.Horizontal;
        }

        /* renamed from: getLeft-JoeWqyM  reason: not valid java name */
        public final int m529getLeftJoeWqyM() {
            return WindowInsetsSides.Left;
        }

        /* renamed from: getRight-JoeWqyM  reason: not valid java name */
        public final int m530getRightJoeWqyM() {
            return WindowInsetsSides.Right;
        }

        /* renamed from: getStart-JoeWqyM  reason: not valid java name */
        public final int m531getStartJoeWqyM() {
            return WindowInsetsSides.Start;
        }

        /* renamed from: getTop-JoeWqyM  reason: not valid java name */
        public final int m532getTopJoeWqyM() {
            return WindowInsetsSides.Top;
        }

        /* renamed from: getVertical-JoeWqyM  reason: not valid java name */
        public final int m533getVerticalJoeWqyM() {
            return WindowInsetsSides.Vertical;
        }

        private Companion() {
        }
    }

    static {
        int m512constructorimpl = m512constructorimpl(8);
        AllowLeftInLtr = m512constructorimpl;
        int m512constructorimpl2 = m512constructorimpl(4);
        AllowRightInLtr = m512constructorimpl2;
        int m512constructorimpl3 = m512constructorimpl(2);
        AllowLeftInRtl = m512constructorimpl3;
        int m512constructorimpl4 = m512constructorimpl(1);
        AllowRightInRtl = m512constructorimpl4;
        Start = m517plusgK_yJZ4(m512constructorimpl, m512constructorimpl4);
        End = m517plusgK_yJZ4(m512constructorimpl2, m512constructorimpl3);
        int m512constructorimpl5 = m512constructorimpl(16);
        Top = m512constructorimpl5;
        int m512constructorimpl6 = m512constructorimpl(32);
        Bottom = m512constructorimpl6;
        int m517plusgK_yJZ4 = m517plusgK_yJZ4(m512constructorimpl, m512constructorimpl3);
        Left = m517plusgK_yJZ4;
        int m517plusgK_yJZ42 = m517plusgK_yJZ4(m512constructorimpl2, m512constructorimpl4);
        Right = m517plusgK_yJZ42;
        Horizontal = m517plusgK_yJZ4(m517plusgK_yJZ4, m517plusgK_yJZ42);
        Vertical = m517plusgK_yJZ4(m512constructorimpl5, m512constructorimpl6);
    }

    private /* synthetic */ WindowInsetsSides(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ WindowInsetsSides m511boximpl(int i10) {
        return new WindowInsetsSides(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m513equalsimpl(int i10, Object obj) {
        if (!(obj instanceof WindowInsetsSides) || i10 != ((WindowInsetsSides) obj).m521unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m514equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hasAny-bkgdKaI$foundation_layout_release  reason: not valid java name */
    public static final boolean m515hasAnybkgdKaI$foundation_layout_release(int i10, int i11) {
        if ((i10 & i11) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m516hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: plus-gK_yJZ4  reason: not valid java name */
    public static final int m517plusgK_yJZ4(int i10, int i11) {
        return m512constructorimpl(i10 | i11);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m518toStringimpl(int i10) {
        return "WindowInsetsSides(" + m519valueToStringimpl(i10) + ')';
    }

    /* renamed from: valueToString-impl  reason: not valid java name */
    private static final String m519valueToStringimpl(int i10) {
        StringBuilder sb2 = new StringBuilder();
        int i11 = Start;
        if ((i10 & i11) == i11) {
            m520valueToString_impl$lambda0$appendPlus(sb2, "Start");
        }
        int i12 = Left;
        if ((i10 & i12) == i12) {
            m520valueToString_impl$lambda0$appendPlus(sb2, "Left");
        }
        int i13 = Top;
        if ((i10 & i13) == i13) {
            m520valueToString_impl$lambda0$appendPlus(sb2, "Top");
        }
        int i14 = End;
        if ((i10 & i14) == i14) {
            m520valueToString_impl$lambda0$appendPlus(sb2, "End");
        }
        int i15 = Right;
        if ((i10 & i15) == i15) {
            m520valueToString_impl$lambda0$appendPlus(sb2, "Right");
        }
        int i16 = Bottom;
        if ((i10 & i16) == i16) {
            m520valueToString_impl$lambda0$appendPlus(sb2, "Bottom");
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    /* renamed from: valueToString_impl$lambda-0$appendPlus  reason: not valid java name */
    private static final void m520valueToString_impl$lambda0$appendPlus(StringBuilder sb2, String str) {
        if (sb2.length() > 0) {
            sb2.append('+');
        }
        sb2.append(str);
    }

    public boolean equals(Object obj) {
        return m513equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m516hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m518toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m521unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m512constructorimpl(int i10) {
        return i10;
    }
}
