package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
/* compiled from: PointerInputEventProcessor.kt */
@Metadata
/* loaded from: classes.dex */
public final class ProcessResult {
    private final int value;

    private /* synthetic */ ProcessResult(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ProcessResult m3290boximpl(int i10) {
        return new ProcessResult(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3292equalsimpl(int i10, Object obj) {
        if (!(obj instanceof ProcessResult) || i10 != ((ProcessResult) obj).m3298unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3293equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: getAnyMovementConsumed-impl  reason: not valid java name */
    public static final boolean m3294getAnyMovementConsumedimpl(int i10) {
        if ((i10 & 2) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: getDispatchedToAPointerInputModifier-impl  reason: not valid java name */
    public static final boolean m3295getDispatchedToAPointerInputModifierimpl(int i10) {
        if ((i10 & 1) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3296hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3297toStringimpl(int i10) {
        return "ProcessResult(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m3292equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m3296hashCodeimpl(this.value);
    }

    public String toString() {
        return m3297toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m3298unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m3291constructorimpl(int i10) {
        return i10;
    }
}
