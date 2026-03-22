package androidx.compose.ui.text.style;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextDirection.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextDirection {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Ltr = m3964constructorimpl(1);
    private static final int Rtl = m3964constructorimpl(2);
    private static final int Content = m3964constructorimpl(3);
    private static final int ContentOrLtr = m3964constructorimpl(4);
    private static final int ContentOrRtl = m3964constructorimpl(5);

    /* compiled from: TextDirection.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getContent-s_7X-co  reason: not valid java name */
        public final int m3970getContents_7Xco() {
            return TextDirection.Content;
        }

        /* renamed from: getContentOrLtr-s_7X-co  reason: not valid java name */
        public final int m3971getContentOrLtrs_7Xco() {
            return TextDirection.ContentOrLtr;
        }

        /* renamed from: getContentOrRtl-s_7X-co  reason: not valid java name */
        public final int m3972getContentOrRtls_7Xco() {
            return TextDirection.ContentOrRtl;
        }

        /* renamed from: getLtr-s_7X-co  reason: not valid java name */
        public final int m3973getLtrs_7Xco() {
            return TextDirection.Ltr;
        }

        /* renamed from: getRtl-s_7X-co  reason: not valid java name */
        public final int m3974getRtls_7Xco() {
            return TextDirection.Rtl;
        }

        private Companion() {
        }
    }

    private /* synthetic */ TextDirection(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TextDirection m3963boximpl(int i10) {
        return new TextDirection(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3965equalsimpl(int i10, Object obj) {
        if (!(obj instanceof TextDirection) || i10 != ((TextDirection) obj).m3969unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3966equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3967hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3968toStringimpl(int i10) {
        if (m3966equalsimpl0(i10, Ltr)) {
            return "Ltr";
        }
        if (m3966equalsimpl0(i10, Rtl)) {
            return "Rtl";
        }
        if (m3966equalsimpl0(i10, Content)) {
            return "Content";
        }
        if (m3966equalsimpl0(i10, ContentOrLtr)) {
            return "ContentOrLtr";
        }
        if (m3966equalsimpl0(i10, ContentOrRtl)) {
            return "ContentOrRtl";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3965equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3967hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3968toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3969unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3964constructorimpl(int i10) {
        return i10;
    }
}
