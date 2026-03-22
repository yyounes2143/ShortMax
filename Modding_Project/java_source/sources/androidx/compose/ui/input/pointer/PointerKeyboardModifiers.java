package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
/* compiled from: PointerEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerKeyboardModifiers {
    private final int packedValue;

    private /* synthetic */ PointerKeyboardModifiers(int i10) {
        this.packedValue = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PointerKeyboardModifiers m3269boximpl(int i10) {
        return new PointerKeyboardModifiers(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3271equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PointerKeyboardModifiers) || i10 != ((PointerKeyboardModifiers) obj).m3275unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3272equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3273hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3274toStringimpl(int i10) {
        return "PointerKeyboardModifiers(packedValue=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m3271equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m3273hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m3274toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3275unboximpl() {
        return this.packedValue;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3270constructorimpl(int i10) {
        return i10;
    }
}
