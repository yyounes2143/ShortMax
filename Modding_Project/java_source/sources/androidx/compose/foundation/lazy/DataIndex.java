package androidx.compose.foundation.lazy;

import kotlin.Metadata;
/* compiled from: DataIndex.kt */
@Metadata
/* loaded from: classes.dex */
public final class DataIndex {
    private final int value;

    private /* synthetic */ DataIndex(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ DataIndex m534boximpl(int i10) {
        return new DataIndex(i10);
    }

    /* renamed from: compareTo-ZjPyQlc  reason: not valid java name */
    public static final int m535compareToZjPyQlc(int i10, int i11) {
        return i10 - i11;
    }

    /* renamed from: dec-jQJCoq8  reason: not valid java name */
    public static final int m537decjQJCoq8(int i10) {
        return m536constructorimpl(i10 - 1);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m538equalsimpl(int i10, Object obj) {
        if (!(obj instanceof DataIndex) || i10 != ((DataIndex) obj).m546unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m539equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m540hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: inc-jQJCoq8  reason: not valid java name */
    public static final int m541incjQJCoq8(int i10) {
        return m536constructorimpl(i10 + 1);
    }

    /* renamed from: minus-PBKCTt8  reason: not valid java name */
    public static final int m542minusPBKCTt8(int i10, int i11) {
        return m536constructorimpl(i10 - i11);
    }

    /* renamed from: minus-yUvdeeg  reason: not valid java name */
    public static final int m543minusyUvdeeg(int i10, int i11) {
        return m536constructorimpl(i10 - i11);
    }

    /* renamed from: plus-PBKCTt8  reason: not valid java name */
    public static final int m544plusPBKCTt8(int i10, int i11) {
        return m536constructorimpl(i10 + i11);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m545toStringimpl(int i10) {
        return "DataIndex(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m538equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m540hashCodeimpl(this.value);
    }

    public String toString() {
        return m545toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m546unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m536constructorimpl(int i10) {
        return i10;
    }
}
