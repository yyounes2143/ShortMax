package hs;

import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferUtilsJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferUtilsJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n+ 2 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n1#1,123:1\n36#2:124\n74#3:125\n69#3:149\n1#4:126\n762#5,7:127\n769#5,6:139\n777#5:147\n372#6,5:134\n377#6,2:145\n355#6:148\n372#6,7:150\n390#6,7:157\n*S KotlinDebug\n*F\n+ 1 BufferUtilsJvm.kt\nio/ktor/utils/io/core/BufferUtilsJvmKt\n*L\n12#1:124\n44#1:125\n87#1:149\n73#1:127,7\n73#1:139,6\n73#1:147\n73#1:134,5\n73#1:145,2\n86#1:148\n99#1:150,7\n115#1:157,7\n*E\n"})
/* loaded from: classes8.dex */
public final class g {
    public static final void a(@NotNull a aVar, @NotNull ByteBuffer dst, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(dst, "dst");
        ByteBuffer g10 = aVar.g();
        int h10 = aVar.h();
        if (aVar.j() - h10 >= i10) {
            int limit = dst.limit();
            try {
                dst.limit(dst.position() + i10);
                fs.d.a(g10, dst, h10);
                dst.limit(limit);
                Unit unit = Unit.f60915a;
                aVar.c(i10);
                return;
            } catch (Throwable th2) {
                dst.limit(limit);
                throw th2;
            }
        }
        throw new EOFException("Not enough bytes to read a buffer content of size " + i10 + '.');
    }
}
