package d0;

import android.content.Context;
import d0.m;
import java.io.Closeable;
import kotlin.Metadata;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageSource.kt */
@Metadata
/* loaded from: classes2.dex */
public final class n {
    @NotNull
    public static final m a(@NotNull BufferedSource bufferedSource, @NotNull Context context) {
        return new p(bufferedSource, r0.i.m(context), null);
    }

    @NotNull
    public static final m b(@NotNull BufferedSource bufferedSource, @NotNull Context context, @Nullable m.a aVar) {
        return new p(bufferedSource, r0.i.m(context), aVar);
    }

    @NotNull
    public static final m c(@NotNull Path path, @NotNull FileSystem fileSystem, @Nullable String str, @Nullable Closeable closeable) {
        return new l(path, fileSystem, str, closeable, null);
    }

    public static /* synthetic */ m d(Path path, FileSystem fileSystem, String str, Closeable closeable, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            fileSystem = FileSystem.SYSTEM;
        }
        if ((i10 & 4) != 0) {
            str = null;
        }
        if ((i10 & 8) != 0) {
            closeable = null;
        }
        return c(path, fileSystem, str, closeable);
    }
}
