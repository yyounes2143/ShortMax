package r0;

import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.Metadata;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileSystems.kt */
@Metadata
/* loaded from: classes2.dex */
public final class e {
    public static final void a(@NotNull FileSystem fileSystem, @NotNull Path path) {
        if (!fileSystem.exists(path)) {
            i.d(fileSystem.sink(path));
        }
    }

    public static final void b(@NotNull FileSystem fileSystem, @NotNull Path path) {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.list(path)) {
                try {
                    if (fileSystem.metadata(path2).isDirectory()) {
                        b(fileSystem, path2);
                    }
                    fileSystem.delete(path2);
                } catch (IOException e10) {
                    if (iOException == null) {
                        iOException = e10;
                    }
                }
            }
            if (iOException == null) {
                return;
            }
            throw iOException;
        } catch (FileNotFoundException unused) {
        }
    }
}
