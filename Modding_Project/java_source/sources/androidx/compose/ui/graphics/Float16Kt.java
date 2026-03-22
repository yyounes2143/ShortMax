package androidx.compose.ui.graphics;

import kotlin.Metadata;
/* compiled from: Float16.kt */
@Metadata
/* loaded from: classes.dex */
public final class Float16Kt {
    /* renamed from: max-AoSsdG0  reason: not valid java name */
    public static final short m1974maxAoSsdG0(short s10, short s11) {
        if (!Float16.m1947isNaNimpl(s10) && !Float16.m1947isNaNimpl(s11)) {
            if (Float16.m1934compareTo41bOqos(s10, s11) < 0) {
                return s11;
            }
            return s10;
        }
        return Float16.Companion.m1969getNaNslo4al4();
    }

    /* renamed from: min-AoSsdG0  reason: not valid java name */
    public static final short m1975minAoSsdG0(short s10, short s11) {
        if (!Float16.m1947isNaNimpl(s10) && !Float16.m1947isNaNimpl(s11)) {
            if (Float16.m1934compareTo41bOqos(s10, s11) > 0) {
                return s11;
            }
            return s10;
        }
        return Float16.Companion.m1969getNaNslo4al4();
    }
}
