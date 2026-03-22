package androidx.compose.ui.text.font;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FontStyle.kt */
@Metadata
/* loaded from: classes.dex */
public final class FontStyle {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Normal = m3773constructorimpl(0);
    private static final int Italic = m3773constructorimpl(1);

    /* compiled from: FontStyle.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getItalic-_-LCdwA  reason: not valid java name */
        public final int m3779getItalic_LCdwA() {
            return FontStyle.Italic;
        }

        /* renamed from: getNormal-_-LCdwA  reason: not valid java name */
        public final int m3780getNormal_LCdwA() {
            return FontStyle.Normal;
        }

        @NotNull
        public final List<FontStyle> values() {
            return CollectionsKt.q(FontStyle.m3772boximpl(m3780getNormal_LCdwA()), FontStyle.m3772boximpl(m3779getItalic_LCdwA()));
        }

        private Companion() {
        }
    }

    private /* synthetic */ FontStyle(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ FontStyle m3772boximpl(int i10) {
        return new FontStyle(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3774equalsimpl(int i10, Object obj) {
        if (!(obj instanceof FontStyle) || i10 != ((FontStyle) obj).m3778unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3775equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3776hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3777toStringimpl(int i10) {
        if (m3775equalsimpl0(i10, Normal)) {
            return "Normal";
        }
        if (m3775equalsimpl0(i10, Italic)) {
            return "Italic";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3774equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m3776hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3777toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3778unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3773constructorimpl(int i10) {
        return i10;
    }
}
