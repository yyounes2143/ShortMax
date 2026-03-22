package androidx.room.util;

import android.annotation.SuppressLint;
import androidx.annotation.RestrictTo;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileUtil.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@SourceDebugExtension({"SMAP\nFileUtil.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileUtil.android.kt\nandroidx/room/util/FileUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"})
/* loaded from: classes2.dex */
public final class FileUtil {
    @SuppressLint({"LambdaLast"})
    public static final void copy(@NotNull ReadableByteChannel input, @NotNull FileChannel output) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        try {
            output.transferFrom(input, 0L, Long.MAX_VALUE);
            output.force(false);
        } finally {
            input.close();
            output.close();
        }
    }
}
