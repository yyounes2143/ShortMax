package androidx.compose.ui.text.style;

import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LineHeightStyle.kt */
@ExperimentalTextApi
@Metadata
/* loaded from: classes.dex */
public final class LineHeightStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final LineHeightStyle Default = new LineHeightStyle(Alignment.Companion.m3935getProportionalPIaL0Z0(), Trim.Companion.m3946getBothEVpEnUU(), null);
    private final int alignment;
    private final int trim;

    /* compiled from: LineHeightStyle.kt */
    @ExperimentalTextApi
    @Metadata
    /* loaded from: classes.dex */
    public static final class Alignment {
        private final int topPercentage;
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int Top = m3927constructorimpl(0);
        private static final int Center = m3927constructorimpl(50);
        private static final int Proportional = m3927constructorimpl(-1);
        private static final int Bottom = m3927constructorimpl(100);

        /* compiled from: LineHeightStyle.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: getBottom-PIaL0Z0  reason: not valid java name */
            public final int m3933getBottomPIaL0Z0() {
                return Alignment.Bottom;
            }

            /* renamed from: getCenter-PIaL0Z0  reason: not valid java name */
            public final int m3934getCenterPIaL0Z0() {
                return Alignment.Center;
            }

            /* renamed from: getProportional-PIaL0Z0  reason: not valid java name */
            public final int m3935getProportionalPIaL0Z0() {
                return Alignment.Proportional;
            }

            /* renamed from: getTop-PIaL0Z0  reason: not valid java name */
            public final int m3936getTopPIaL0Z0() {
                return Alignment.Top;
            }

            private Companion() {
            }
        }

        private /* synthetic */ Alignment(int i10) {
            this.topPercentage = i10;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ Alignment m3926boximpl(int i10) {
            return new Alignment(i10);
        }

        /* renamed from: constructor-impl  reason: not valid java name */
        private static int m3927constructorimpl(int i10) {
            if ((i10 >= 0 && i10 < 101) || i10 == -1) {
                return i10;
            }
            throw new IllegalStateException("topRatio should be in [0..100] range or -1");
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m3928equalsimpl(int i10, Object obj) {
            if (!(obj instanceof Alignment) || i10 != ((Alignment) obj).m3932unboximpl()) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m3929equalsimpl0(int i10, int i11) {
            if (i10 == i11) {
                return true;
            }
            return false;
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m3930hashCodeimpl(int i10) {
            return Integer.hashCode(i10);
        }

        @NotNull
        /* renamed from: toString-impl  reason: not valid java name */
        public static String m3931toStringimpl(int i10) {
            if (i10 == Top) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (i10 == Center) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (i10 == Proportional) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (i10 == Bottom) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + i10 + ')';
        }

        public boolean equals(Object obj) {
            return m3928equalsimpl(this.topPercentage, obj);
        }

        public int hashCode() {
            return m3930hashCodeimpl(this.topPercentage);
        }

        @NotNull
        public String toString() {
            return m3931toStringimpl(this.topPercentage);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ int m3932unboximpl() {
            return this.topPercentage;
        }
    }

    /* compiled from: LineHeightStyle.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LineHeightStyle getDefault() {
            return LineHeightStyle.Default;
        }

        private Companion() {
        }
    }

    public /* synthetic */ LineHeightStyle(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LineHeightStyle)) {
            return false;
        }
        LineHeightStyle lineHeightStyle = (LineHeightStyle) obj;
        if (Alignment.m3929equalsimpl0(this.alignment, lineHeightStyle.alignment) && Trim.m3940equalsimpl0(this.trim, lineHeightStyle.trim)) {
            return true;
        }
        return false;
    }

    /* renamed from: getAlignment-PIaL0Z0  reason: not valid java name */
    public final int m3924getAlignmentPIaL0Z0() {
        return this.alignment;
    }

    /* renamed from: getTrim-EVpEnUU  reason: not valid java name */
    public final int m3925getTrimEVpEnUU() {
        return this.trim;
    }

    public int hashCode() {
        return (Alignment.m3930hashCodeimpl(this.alignment) * 31) + Trim.m3941hashCodeimpl(this.trim);
    }

    @NotNull
    public String toString() {
        return "LineHeightStyle(alignment=" + ((Object) Alignment.m3931toStringimpl(this.alignment)) + ", trim=" + ((Object) Trim.m3944toStringimpl(this.trim)) + ')';
    }

    private LineHeightStyle(int i10, int i11) {
        this.alignment = i10;
        this.trim = i11;
    }

    /* compiled from: LineHeightStyle.kt */
    @ExperimentalTextApi
    @Metadata
    /* loaded from: classes.dex */
    public static final class Trim {
        private static final int FlagTrimBottom = 16;
        private static final int FlagTrimTop = 1;
        private final int value;
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final int FirstLineTop = m3938constructorimpl(1);
        private static final int LastLineBottom = m3938constructorimpl(16);
        private static final int Both = m3938constructorimpl(17);
        private static final int None = m3938constructorimpl(0);

        /* compiled from: LineHeightStyle.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: getBoth-EVpEnUU  reason: not valid java name */
            public final int m3946getBothEVpEnUU() {
                return Trim.Both;
            }

            /* renamed from: getFirstLineTop-EVpEnUU  reason: not valid java name */
            public final int m3947getFirstLineTopEVpEnUU() {
                return Trim.FirstLineTop;
            }

            /* renamed from: getLastLineBottom-EVpEnUU  reason: not valid java name */
            public final int m3948getLastLineBottomEVpEnUU() {
                return Trim.LastLineBottom;
            }

            /* renamed from: getNone-EVpEnUU  reason: not valid java name */
            public final int m3949getNoneEVpEnUU() {
                return Trim.None;
            }

            private Companion() {
            }
        }

        private /* synthetic */ Trim(int i10) {
            this.value = i10;
        }

        /* renamed from: box-impl  reason: not valid java name */
        public static final /* synthetic */ Trim m3937boximpl(int i10) {
            return new Trim(i10);
        }

        /* renamed from: equals-impl  reason: not valid java name */
        public static boolean m3939equalsimpl(int i10, Object obj) {
            if (!(obj instanceof Trim) || i10 != ((Trim) obj).m3945unboximpl()) {
                return false;
            }
            return true;
        }

        /* renamed from: equals-impl0  reason: not valid java name */
        public static final boolean m3940equalsimpl0(int i10, int i11) {
            if (i10 == i11) {
                return true;
            }
            return false;
        }

        /* renamed from: hashCode-impl  reason: not valid java name */
        public static int m3941hashCodeimpl(int i10) {
            return Integer.hashCode(i10);
        }

        /* renamed from: isTrimFirstLineTop-impl$ui_text_release  reason: not valid java name */
        public static final boolean m3942isTrimFirstLineTopimpl$ui_text_release(int i10) {
            if ((i10 & 1) > 0) {
                return true;
            }
            return false;
        }

        /* renamed from: isTrimLastLineBottom-impl$ui_text_release  reason: not valid java name */
        public static final boolean m3943isTrimLastLineBottomimpl$ui_text_release(int i10) {
            if ((i10 & 16) > 0) {
                return true;
            }
            return false;
        }

        @NotNull
        /* renamed from: toString-impl  reason: not valid java name */
        public static String m3944toStringimpl(int i10) {
            if (i10 == FirstLineTop) {
                return "LineHeightStyle.Trim.FirstLineTop";
            }
            if (i10 == LastLineBottom) {
                return "LineHeightStyle.Trim.LastLineBottom";
            }
            if (i10 == Both) {
                return "LineHeightStyle.Trim.Both";
            }
            if (i10 == None) {
                return "LineHeightStyle.Trim.None";
            }
            return "Invalid";
        }

        public boolean equals(Object obj) {
            return m3939equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m3941hashCodeimpl(this.value);
        }

        @NotNull
        public String toString() {
            return m3944toStringimpl(this.value);
        }

        /* renamed from: unbox-impl  reason: not valid java name */
        public final /* synthetic */ int m3945unboximpl() {
            return this.value;
        }

        /* renamed from: constructor-impl  reason: not valid java name */
        private static int m3938constructorimpl(int i10) {
            return i10;
        }
    }
}
