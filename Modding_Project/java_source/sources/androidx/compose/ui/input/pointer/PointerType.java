package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerType {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Unknown = m3277constructorimpl(0);
    private static final int Touch = m3277constructorimpl(1);
    private static final int Mouse = m3277constructorimpl(2);
    private static final int Stylus = m3277constructorimpl(3);
    private static final int Eraser = m3277constructorimpl(4);

    /* compiled from: PointerEvent.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getEraser-T8wyACA  reason: not valid java name */
        public final int m3283getEraserT8wyACA() {
            return PointerType.Eraser;
        }

        /* renamed from: getMouse-T8wyACA  reason: not valid java name */
        public final int m3284getMouseT8wyACA() {
            return PointerType.Mouse;
        }

        /* renamed from: getStylus-T8wyACA  reason: not valid java name */
        public final int m3285getStylusT8wyACA() {
            return PointerType.Stylus;
        }

        /* renamed from: getTouch-T8wyACA  reason: not valid java name */
        public final int m3286getTouchT8wyACA() {
            return PointerType.Touch;
        }

        /* renamed from: getUnknown-T8wyACA  reason: not valid java name */
        public final int m3287getUnknownT8wyACA() {
            return PointerType.Unknown;
        }

        private Companion() {
        }
    }

    private /* synthetic */ PointerType(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PointerType m3276boximpl(int i10) {
        return new PointerType(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3278equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PointerType) || i10 != ((PointerType) obj).m3282unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3279equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3280hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3281toStringimpl(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return "Unknown";
                    }
                    return "Eraser";
                }
                return "Stylus";
            }
            return "Mouse";
        }
        return "Touch";
    }

    public boolean equals(Object obj) {
        return m3278equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3280hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m3281toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3282unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m3277constructorimpl(int i10) {
        return i10;
    }
}
