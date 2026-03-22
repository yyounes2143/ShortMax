package androidx.compose.ui.input;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: InputModeManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class InputMode {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Touch = m2467constructorimpl(1);
    private static final int Keyboard = m2467constructorimpl(2);

    /* compiled from: InputModeManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getKeyboard-aOaMEAU  reason: not valid java name */
        public final int m2473getKeyboardaOaMEAU() {
            return InputMode.Keyboard;
        }

        /* renamed from: getTouch-aOaMEAU  reason: not valid java name */
        public final int m2474getTouchaOaMEAU() {
            return InputMode.Touch;
        }

        private Companion() {
        }
    }

    private /* synthetic */ InputMode(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ InputMode m2466boximpl(int i10) {
        return new InputMode(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2468equalsimpl(int i10, Object obj) {
        if (!(obj instanceof InputMode) || i10 != ((InputMode) obj).m2472unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2469equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2470hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2471toStringimpl(int i10) {
        if (m2469equalsimpl0(i10, Touch)) {
            return "Touch";
        }
        if (m2469equalsimpl0(i10, Keyboard)) {
            return "Keyboard";
        }
        return "Error";
    }

    public boolean equals(Object obj) {
        return m2468equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2470hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2471toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2472unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2467constructorimpl(int i10) {
        return i10;
    }
}
