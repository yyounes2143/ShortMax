package androidx.compose.foundation.lazy.grid;

import kotlin.Metadata;
/* compiled from: ItemIndex.kt */
@Metadata
/* loaded from: classes.dex */
public final class LineIndex {
    private final int value;

    private /* synthetic */ LineIndex(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ LineIndex m642boximpl(int i10) {
        return new LineIndex(i10);
    }

    /* renamed from: compareTo-bKFJvoY  reason: not valid java name */
    public static final int m643compareTobKFJvoY(int i10, int i11) {
        return i10 - i11;
    }

    /* renamed from: dec-hA7yfN8  reason: not valid java name */
    public static final int m645dechA7yfN8(int i10) {
        return m644constructorimpl(i10 - 1);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m646equalsimpl(int i10, Object obj) {
        if (!(obj instanceof LineIndex) || i10 != ((LineIndex) obj).m654unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m647equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m648hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: inc-hA7yfN8  reason: not valid java name */
    public static final int m649inchA7yfN8(int i10) {
        return m644constructorimpl(i10 + 1);
    }

    /* renamed from: minus--_Ze7BM  reason: not valid java name */
    public static final int m650minus_Ze7BM(int i10, int i11) {
        return m644constructorimpl(i10 - i11);
    }

    /* renamed from: minus-fVkYB0M  reason: not valid java name */
    public static final int m651minusfVkYB0M(int i10, int i11) {
        return m644constructorimpl(i10 - i11);
    }

    /* renamed from: plus--_Ze7BM  reason: not valid java name */
    public static final int m652plus_Ze7BM(int i10, int i11) {
        return m644constructorimpl(i10 + i11);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m653toStringimpl(int i10) {
        return "LineIndex(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m646equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m648hashCodeimpl(this.value);
    }

    public String toString() {
        return m653toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m654unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m644constructorimpl(int i10) {
        return i10;
    }
}
