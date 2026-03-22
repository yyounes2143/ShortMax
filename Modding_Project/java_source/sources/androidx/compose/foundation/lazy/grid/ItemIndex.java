package androidx.compose.foundation.lazy.grid;

import kotlin.Metadata;
/* compiled from: ItemIndex.kt */
@Metadata
/* loaded from: classes.dex */
public final class ItemIndex {
    private final int value;

    private /* synthetic */ ItemIndex(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ItemIndex m590boximpl(int i10) {
        return new ItemIndex(i10);
    }

    /* renamed from: compareTo-YGsSkvE  reason: not valid java name */
    public static final int m591compareToYGsSkvE(int i10, int i11) {
        return i10 - i11;
    }

    /* renamed from: dec-VZbfaAc  reason: not valid java name */
    public static final int m593decVZbfaAc(int i10) {
        return m592constructorimpl(i10 - 1);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m594equalsimpl(int i10, Object obj) {
        if (!(obj instanceof ItemIndex) || i10 != ((ItemIndex) obj).m602unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m595equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m596hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: inc-VZbfaAc  reason: not valid java name */
    public static final int m597incVZbfaAc(int i10) {
        return m592constructorimpl(i10 + 1);
    }

    /* renamed from: minus-41DfMLM  reason: not valid java name */
    public static final int m598minus41DfMLM(int i10, int i11) {
        return m592constructorimpl(i10 - i11);
    }

    /* renamed from: minus-AoD1bsw  reason: not valid java name */
    public static final int m599minusAoD1bsw(int i10, int i11) {
        return m592constructorimpl(i10 - i11);
    }

    /* renamed from: plus-AoD1bsw  reason: not valid java name */
    public static final int m600plusAoD1bsw(int i10, int i11) {
        return m592constructorimpl(i10 + i11);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m601toStringimpl(int i10) {
        return "ItemIndex(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m594equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m596hashCodeimpl(this.value);
    }

    public String toString() {
        return m601toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m602unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m592constructorimpl(int i10) {
        return i10;
    }
}
