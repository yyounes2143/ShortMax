package hs;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferAppend.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferAppend.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,59:1\n69#2:60\n74#2:61\n69#2:76\n74#2:77\n59#2:78\n390#3,5:62\n372#3,7:67\n395#3,2:74\n*S KotlinDebug\n*F\n+ 1 BufferAppend.kt\nio/ktor/utils/io/core/BufferAppendKt\n*L\n10#1:60\n12#1:61\n32#1:76\n49#1:77\n49#1:78\n16#1:62,5\n17#1:67,7\n16#1:74,2\n*E\n"})
/* loaded from: classes8.dex */
public final class b {
    public static final int a(@NotNull a aVar, @NotNull a other, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(other.j() - other.h(), i10);
        if (aVar.f() - aVar.j() <= min) {
            b(aVar, min);
        }
        ByteBuffer g10 = aVar.g();
        int j10 = aVar.j();
        aVar.f();
        ByteBuffer g11 = other.g();
        int h10 = other.h();
        other.j();
        fs.c.c(g11, g10, h10, min, j10);
        other.c(min);
        aVar.a(min);
        return min;
    }

    private static final void b(a aVar, int i10) {
        if ((aVar.f() - aVar.j()) + (aVar.e() - aVar.f()) >= i10) {
            if ((aVar.j() + i10) - aVar.f() > 0) {
                aVar.l();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Can't append buffer: not enough free space at the end");
    }

    public static final int c(@NotNull a aVar, @NotNull a other) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int j10 = other.j() - other.h();
        int h10 = aVar.h();
        if (h10 >= j10) {
            int i10 = h10 - j10;
            fs.c.c(other.g(), aVar.g(), other.h(), j10, i10);
            other.c(j10);
            aVar.n(i10);
            return j10;
        }
        throw new IllegalArgumentException("Not enough space in the beginning to prepend bytes");
    }
}
