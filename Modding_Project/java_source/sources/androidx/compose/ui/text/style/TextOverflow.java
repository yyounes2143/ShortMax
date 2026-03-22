package androidx.compose.ui.text.style;

import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextOverflow.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextOverflow {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Clip = m3981constructorimpl(1);
    private static final int Ellipsis = m3981constructorimpl(2);
    private static final int Visible = m3981constructorimpl(3);

    /* compiled from: TextOverflow.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getClip-gIe3tQ8  reason: not valid java name */
        public final int m3990getClipgIe3tQ8() {
            return TextOverflow.Clip;
        }

        /* renamed from: getEllipsis-gIe3tQ8  reason: not valid java name */
        public final int m3991getEllipsisgIe3tQ8() {
            return TextOverflow.Ellipsis;
        }

        /* renamed from: getVisible-gIe3tQ8  reason: not valid java name */
        public final int m3992getVisiblegIe3tQ8() {
            return TextOverflow.Visible;
        }

        private Companion() {
        }

        @Stable
        /* renamed from: getClip-gIe3tQ8$annotations  reason: not valid java name */
        public static /* synthetic */ void m3987getClipgIe3tQ8$annotations() {
        }

        @Stable
        /* renamed from: getEllipsis-gIe3tQ8$annotations  reason: not valid java name */
        public static /* synthetic */ void m3988getEllipsisgIe3tQ8$annotations() {
        }

        @Stable
        /* renamed from: getVisible-gIe3tQ8$annotations  reason: not valid java name */
        public static /* synthetic */ void m3989getVisiblegIe3tQ8$annotations() {
        }
    }

    private /* synthetic */ TextOverflow(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TextOverflow m3980boximpl(int i10) {
        return new TextOverflow(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3982equalsimpl(int i10, Object obj) {
        if (!(obj instanceof TextOverflow) || i10 != ((TextOverflow) obj).m3986unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3983equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3984hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3985toStringimpl(int i10) {
        if (m3983equalsimpl0(i10, Clip)) {
            return "Clip";
        }
        if (m3983equalsimpl0(i10, Ellipsis)) {
            return "Ellipsis";
        }
        if (m3983equalsimpl0(i10, Visible)) {
            return "Visible";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3982equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3984hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3985toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3986unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3981constructorimpl(int i10) {
        return i10;
    }
}
