package fs;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MemoryJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/MemoryJvmKt\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 3 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 4 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n208#1:244\n208#1:245\n200#1:246\n208#1:248\n204#1,5:249\n6#2,2:231\n6#2,2:233\n6#2,2:254\n282#3:235\n283#3,3:240\n17#4,4:236\n1#5:243\n1#5:247\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/MemoryJvmKt\n*L\n200#1:244\n204#1:245\n212#1:246\n212#1:248\n212#1:249,5\n141#1:231,2\n183#1:233,2\n219#1:254,2\n191#1:235\n191#1:240,3\n191#1:236,4\n212#1:247\n*E\n"})
/* loaded from: classes8.dex */
public final class d {
    public static final void a(@NotNull ByteBuffer copyTo, @NotNull ByteBuffer destination, int i10) {
        Intrinsics.checkNotNullParameter(copyTo, "$this$copyTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        int remaining = destination.remaining();
        if (copyTo.hasArray() && !copyTo.isReadOnly() && destination.hasArray() && !destination.isReadOnly()) {
            int position = destination.position();
            System.arraycopy(copyTo.array(), copyTo.arrayOffset() + i10, destination.array(), destination.arrayOffset() + position, remaining);
            destination.position(position + remaining);
            return;
        }
        ByteBuffer duplicate = copyTo.duplicate();
        duplicate.limit(remaining + i10);
        duplicate.position(i10);
        destination.put(duplicate);
    }

    public static final void b(@NotNull ByteBuffer copyTo, @NotNull byte[] destination, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(copyTo, "$this$copyTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (copyTo.hasArray() && !copyTo.isReadOnly()) {
            System.arraycopy(copyTo.array(), copyTo.arrayOffset() + i10, destination, i12, i11);
        } else {
            copyTo.duplicate().get(destination, i12, i11);
        }
    }

    public static final void c(@NotNull ByteBuffer copyTo, @NotNull ByteBuffer destination, int i10) {
        Intrinsics.checkNotNullParameter(copyTo, "$this$copyTo");
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (copyTo.hasArray() && !copyTo.isReadOnly()) {
            byte[] array = copyTo.array();
            Intrinsics.checkNotNullExpressionValue(array, "array()");
            int arrayOffset = copyTo.arrayOffset() + copyTo.position();
            int remaining = copyTo.remaining();
            ByteBuffer order = ByteBuffer.wrap(array, arrayOffset, remaining).slice().order(ByteOrder.BIG_ENDIAN);
            Intrinsics.checkNotNullExpressionValue(order, "wrap(this, offset, lengt…der(ByteOrder.BIG_ENDIAN)");
            c.c(c.b(order), destination, 0, remaining, i10);
            copyTo.position(copyTo.limit());
            return;
        }
        d(destination, i10, copyTo.remaining()).put(copyTo);
    }

    @NotNull
    public static final ByteBuffer d(@NotNull ByteBuffer byteBuffer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        ByteBuffer myDuplicate$lambda$1 = byteBuffer.duplicate();
        Intrinsics.checkNotNullExpressionValue(myDuplicate$lambda$1, "myDuplicate$lambda$1");
        myDuplicate$lambda$1.position(i10);
        myDuplicate$lambda$1.limit(i10 + i11);
        ByteBuffer mySlice$lambda$2 = myDuplicate$lambda$1.slice();
        Intrinsics.checkNotNullExpressionValue(mySlice$lambda$2, "mySlice$lambda$2");
        return mySlice$lambda$2;
    }
}
