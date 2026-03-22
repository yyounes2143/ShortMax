package androidx.compose.ui.text.font;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontSynthesis.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontSynthesis {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int None = m3782constructorimpl(0);
    private static final int All = m3782constructorimpl(1);
    private static final int Weight = m3782constructorimpl(2);
    private static final int Style = m3782constructorimpl(3);

    /* compiled from: FontSynthesis.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAll-GVVA2EU  reason: not valid java name */
        public final int m3790getAllGVVA2EU() {
            return FontSynthesis.All;
        }

        /* renamed from: getNone-GVVA2EU  reason: not valid java name */
        public final int m3791getNoneGVVA2EU() {
            return FontSynthesis.None;
        }

        /* renamed from: getStyle-GVVA2EU  reason: not valid java name */
        public final int m3792getStyleGVVA2EU() {
            return FontSynthesis.Style;
        }

        /* renamed from: getWeight-GVVA2EU  reason: not valid java name */
        public final int m3793getWeightGVVA2EU() {
            return FontSynthesis.Weight;
        }

        private Companion() {
        }
    }

    private /* synthetic */ FontSynthesis(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ FontSynthesis m3781boximpl(int i10) {
        return new FontSynthesis(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3783equalsimpl(int i10, Object obj) {
        if (!(obj instanceof FontSynthesis) || i10 != ((FontSynthesis) obj).m3789unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3784equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3785hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: isStyleOn-impl$ui_text_release  reason: not valid java name */
    public static final boolean m3786isStyleOnimpl$ui_text_release(int i10) {
        if (!m3784equalsimpl0(i10, All) && !m3784equalsimpl0(i10, Style)) {
            return false;
        }
        return true;
    }

    /* renamed from: isWeightOn-impl$ui_text_release  reason: not valid java name */
    public static final boolean m3787isWeightOnimpl$ui_text_release(int i10) {
        if (!m3784equalsimpl0(i10, All) && !m3784equalsimpl0(i10, Weight)) {
            return false;
        }
        return true;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3788toStringimpl(int i10) {
        if (m3784equalsimpl0(i10, None)) {
            return "None";
        }
        if (m3784equalsimpl0(i10, All)) {
            return "All";
        }
        if (m3784equalsimpl0(i10, Weight)) {
            return "Weight";
        }
        if (m3784equalsimpl0(i10, Style)) {
            return "Style";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3783equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3785hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3788toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3789unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3782constructorimpl(int i10) {
        return i10;
    }
}
