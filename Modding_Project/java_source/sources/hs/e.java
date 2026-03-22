package hs;

import io.ktor.utils.io.core.InsufficientSpaceException;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferPrimitivesJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferPrimitivesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferPrimitivesJvm.kt\nio/ktor/utils/io/core/BufferPrimitivesJvmKt\n+ 2 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,27:1\n762#2,7:28\n769#2,6:40\n777#2:48\n784#2,5:49\n789#2,6:59\n796#2:67\n372#3,5:35\n377#3,2:46\n390#3,5:54\n395#3,2:65\n*S KotlinDebug\n*F\n+ 1 BufferPrimitivesJvm.kt\nio/ktor/utils/io/core/BufferPrimitivesJvmKt\n*L\n12#1:28,7\n12#1:40,6\n12#1:48\n23#1:49,5\n23#1:59,6\n23#1:67\n12#1:35,5\n12#1:46,2\n23#1:54,5\n23#1:65,2\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    public static final void a(@NotNull a aVar, @NotNull ByteBuffer source) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        ByteBuffer g10 = aVar.g();
        int j10 = aVar.j();
        int f10 = aVar.f() - j10;
        if (f10 >= remaining) {
            fs.d.c(source, g10, j10);
            aVar.a(remaining);
            return;
        }
        throw new InsufficientSpaceException("buffer content", remaining, f10);
    }
}
