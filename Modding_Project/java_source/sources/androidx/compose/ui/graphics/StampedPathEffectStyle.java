package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PathEffect.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class StampedPathEffectStyle {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Translate = m2130constructorimpl(0);
    private static final int Rotate = m2130constructorimpl(1);
    private static final int Morph = m2130constructorimpl(2);

    /* compiled from: PathEffect.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getMorph-Ypspkwk  reason: not valid java name */
        public final int m2136getMorphYpspkwk() {
            return StampedPathEffectStyle.Morph;
        }

        /* renamed from: getRotate-Ypspkwk  reason: not valid java name */
        public final int m2137getRotateYpspkwk() {
            return StampedPathEffectStyle.Rotate;
        }

        /* renamed from: getTranslate-Ypspkwk  reason: not valid java name */
        public final int m2138getTranslateYpspkwk() {
            return StampedPathEffectStyle.Translate;
        }

        private Companion() {
        }
    }

    private /* synthetic */ StampedPathEffectStyle(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ StampedPathEffectStyle m2129boximpl(int i10) {
        return new StampedPathEffectStyle(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2131equalsimpl(int i10, Object obj) {
        if (!(obj instanceof StampedPathEffectStyle) || i10 != ((StampedPathEffectStyle) obj).m2135unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2132equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2133hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2134toStringimpl(int i10) {
        if (m2132equalsimpl0(i10, Translate)) {
            return "Translate";
        }
        if (m2132equalsimpl0(i10, Rotate)) {
            return "Rotate";
        }
        if (m2132equalsimpl0(i10, Morph)) {
            return "Morph";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2131equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2133hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2134toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2135unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2130constructorimpl(int i10) {
        return i10;
    }
}
