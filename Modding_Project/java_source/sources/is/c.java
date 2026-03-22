package is;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.s;
/* compiled from: EncodeResult.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEncodeResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n+ 2 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n*L\n1#1,20:1\n47#2:21\n49#2:22\n*S KotlinDebug\n*F\n+ 1 EncodeResult.kt\nio/ktor/utils/io/core/internal/EncodeResult\n*L\n14#1:21\n15#1:22\n*E\n"})
/* loaded from: classes8.dex */
public final class c {
    public static final short a(int i10) {
        return f(i10);
    }

    public static final short b(int i10) {
        return e(i10);
    }

    public static int d(short s10, short s11) {
        return c(((s10 & 65535) << 16) | (s11 & 65535));
    }

    public static final short e(int i10) {
        return s.b((short) (i10 & 65535));
    }

    public static final short f(int i10) {
        return s.b((short) (i10 >>> 16));
    }

    public static int c(int i10) {
        return i10;
    }
}
