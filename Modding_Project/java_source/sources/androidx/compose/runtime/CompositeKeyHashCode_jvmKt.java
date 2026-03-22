package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositeKeyHashCode.jvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCompositeKeyHashCode.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeKeyHashCode.jvm.kt\nandroidx/compose/runtime/CompositeKeyHashCode_jvmKt\n+ 2 BitwiseOperators.kt\nandroidx/compose/runtime/BitwiseOperatorsKt\n*L\n1#1,49:1\n35#2:50\n27#2:51\n35#2:52\n35#2:53\n*S KotlinDebug\n*F\n+ 1 CompositeKeyHashCode.jvm.kt\nandroidx/compose/runtime/CompositeKeyHashCode_jvmKt\n*L\n33#1:50\n36#1:51\n39#1:52\n44#1:53\n*E\n"})
/* loaded from: classes.dex */
public final class CompositeKeyHashCode_jvmKt {
    public static final int CompositeKeyHashSizeBits = 64;
    public static final long EmptyCompositeKeyHashCode = 0;

    public static final long CompositeKeyHashCode(int i10) {
        return i10;
    }

    public static final long bottomUpCompoundWith(long j10, int i10, int i11) {
        return j10 ^ Long.rotateLeft(i10, i11);
    }

    public static final long compoundWith(long j10, int i10, int i11) {
        return Long.rotateLeft(j10, i11) ^ i10;
    }

    @NotNull
    public static final String toString(long j10, int i10) {
        String l10 = Long.toString(j10, CharsKt.checkRadix(i10));
        Intrinsics.checkNotNullExpressionValue(l10, "toString(...)");
        return l10;
    }

    public static final long unCompoundWith(long j10, int i10, int i11) {
        return Long.rotateRight(j10 ^ i10, i11);
    }

    public static final long bottomUpCompoundWith(long j10, long j11, int i10) {
        return j10 ^ Long.rotateLeft(j11, i10);
    }

    public static final long toLong(long j10) {
        return j10;
    }
}
