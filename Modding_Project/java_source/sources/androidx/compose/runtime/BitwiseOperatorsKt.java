package androidx.compose.runtime;

import kotlin.Metadata;
/* compiled from: BitwiseOperators.kt */
@Metadata
/* loaded from: classes.dex */
public final class BitwiseOperatorsKt {
    public static final int rol(int i10, int i11) {
        return Integer.rotateLeft(i10, i11);
    }

    public static final int ror(int i10, int i11) {
        return Integer.rotateRight(i10, i11);
    }

    public static final long rol(long j10, int i10) {
        return Long.rotateLeft(j10, i10);
    }

    public static final long ror(long j10, int i10) {
        return Long.rotateRight(j10, i10);
    }
}
