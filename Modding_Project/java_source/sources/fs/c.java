package fs;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MemoryJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,230:1\n6#2,2:231\n6#2,2:233\n6#2,2:235\n6#2,2:237\n6#2,2:239\n6#2,2:241\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n31#1:231,2\n44#1:233,2\n51#1:235,2\n95#1:237,2\n96#1:239,2\n97#1:241,2\n*E\n"})
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f51938a = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ByteBuffer f51939b;

    /* compiled from: MemoryJvm.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ByteBuffer a() {
            return c.f51939b;
        }

        private a() {
        }
    }

    static {
        ByteBuffer order = ByteBuffer.allocate(0).order(ByteOrder.BIG_ENDIAN);
        Intrinsics.checkNotNullExpressionValue(order, "allocate(0).order(ByteOrder.BIG_ENDIAN)");
        f51939b = b(order);
    }

    @NotNull
    public static ByteBuffer b(@NotNull ByteBuffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        return buffer;
    }

    public static final void c(ByteBuffer byteBuffer, @NotNull ByteBuffer destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (byteBuffer.hasArray() && destination.hasArray() && !byteBuffer.isReadOnly() && !destination.isReadOnly()) {
            System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + i10, destination.array(), destination.arrayOffset() + i12, i11);
            return;
        }
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(i10);
        duplicate.limit(i10 + i11);
        ByteBuffer duplicate2 = destination.duplicate();
        duplicate2.position(i12);
        duplicate2.put(duplicate);
    }

    @NotNull
    public static final ByteBuffer d(ByteBuffer byteBuffer, int i10, int i11) {
        return b(d.d(byteBuffer, i10, i11));
    }
}
