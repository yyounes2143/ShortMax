package hs;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Buffers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuffers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n1#1,121:1\n69#2:122\n69#2:123\n69#2:124\n69#2:126\n15#3:125\n*S KotlinDebug\n*F\n+ 1 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n*L\n12#1:122\n80#1:123\n88#1:124\n107#1:126\n105#1:125\n*E\n"})
/* loaded from: classes8.dex */
public final class h {
    @NotNull
    public static final is.a a(@NotNull is.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        while (true) {
            is.a x10 = aVar.x();
            if (x10 == null) {
                return aVar;
            }
            aVar = x10;
        }
    }

    public static final void b(@Nullable is.a aVar, @NotNull io.ktor.utils.io.pool.b<is.a> pool) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        while (aVar != null) {
            is.a w10 = aVar.w();
            aVar.A(pool);
            aVar = w10;
        }
    }

    public static final long c(@NotNull is.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return d(aVar, 0L);
    }

    private static final long d(is.a aVar, long j10) {
        do {
            j10 += aVar.j() - aVar.h();
            aVar = aVar.x();
        } while (aVar != null);
        return j10;
    }
}
