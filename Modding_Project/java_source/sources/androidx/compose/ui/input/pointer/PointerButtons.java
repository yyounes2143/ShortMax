package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
/* compiled from: PointerEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerButtons {
    private final int packedValue;

    private /* synthetic */ PointerButtons(int i10) {
        this.packedValue = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PointerButtons m3145boximpl(int i10) {
        return new PointerButtons(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3147equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PointerButtons) || i10 != ((PointerButtons) obj).m3151unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3148equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3149hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3150toStringimpl(int i10) {
        return "PointerButtons(packedValue=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m3147equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m3149hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m3150toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3151unboximpl() {
        return this.packedValue;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3146constructorimpl(int i10) {
        return i10;
    }
}
