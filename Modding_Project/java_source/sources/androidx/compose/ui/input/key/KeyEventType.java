package androidx.compose.ui.input.key;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: KeyEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyEventType {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m3067constructorimpl(0);
    private static final int KeyUp = m3067constructorimpl(1);
    private static final int KeyDown = m3067constructorimpl(2);

    /* compiled from: KeyEvent.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getKeyDown-CS__XNY  reason: not valid java name */
        public final int m3073getKeyDownCS__XNY() {
            return KeyEventType.KeyDown;
        }

        /* renamed from: getKeyUp-CS__XNY  reason: not valid java name */
        public final int m3074getKeyUpCS__XNY() {
            return KeyEventType.KeyUp;
        }

        /* renamed from: getUnknown-CS__XNY  reason: not valid java name */
        public final int m3075getUnknownCS__XNY() {
            return KeyEventType.Unknown;
        }

        private Companion() {
        }
    }

    private /* synthetic */ KeyEventType(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ KeyEventType m3066boximpl(int i10) {
        return new KeyEventType(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3068equalsimpl(int i10, Object obj) {
        if (!(obj instanceof KeyEventType) || i10 != ((KeyEventType) obj).m3072unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3069equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3070hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3071toStringimpl(int i10) {
        if (m3069equalsimpl0(i10, KeyUp)) {
            return "KeyUp";
        }
        if (m3069equalsimpl0(i10, KeyDown)) {
            return "KeyDown";
        }
        if (m3069equalsimpl0(i10, Unknown)) {
            return "Unknown";
        }
        return "Invalid";
    }

    public boolean equals(Object obj) {
        return m3068equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3070hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3071toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3072unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3067constructorimpl(int i10) {
        return i10;
    }
}
