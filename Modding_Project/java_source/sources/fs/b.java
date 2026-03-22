package fs;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MemoryFactoryJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMemoryFactoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/DefaultAllocator\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,48:1\n6#2,2:49\n*S KotlinDebug\n*F\n+ 1 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/DefaultAllocator\n*L\n43#1:49,2\n*E\n"})
/* loaded from: classes8.dex */
public final class b implements a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f51937a = new b();

    private b() {
    }

    @Override // fs.a
    public void a(@NotNull ByteBuffer instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // fs.a
    @NotNull
    public ByteBuffer b(int i10) {
        ByteBuffer allocate = ByteBuffer.allocate(i10);
        Intrinsics.checkNotNullExpressionValue(allocate, "allocate(size)");
        return c.b(allocate);
    }
}
