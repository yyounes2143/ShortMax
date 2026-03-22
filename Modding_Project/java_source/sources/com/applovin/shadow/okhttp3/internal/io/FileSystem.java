package com.applovin.shadow.okhttp3.internal.io;

import com.applovin.shadow.okio.Okio;
import com.applovin.shadow.okio.Okio__JvmOkioKt;
import com.applovin.shadow.okio.Sink;
import com.applovin.shadow.okio.Source;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileSystem.kt */
@Metadata
/* loaded from: classes2.dex */
public interface FileSystem {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final FileSystem SYSTEM = new Companion.SystemFileSystem();

    /* compiled from: FileSystem.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* compiled from: FileSystem.kt */
        @Metadata
        /* loaded from: classes2.dex */
        private static final class SystemFileSystem implements FileSystem {
            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            @NotNull
            public Sink appendingSink(@NotNull File file) throws FileNotFoundException {
                Intrinsics.checkNotNullParameter(file, "file");
                try {
                    return Okio.appendingSink(file);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return Okio.appendingSink(file);
                }
            }

            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            public void delete(@NotNull File file) throws IOException {
                Intrinsics.checkNotNullParameter(file, "file");
                if (!file.delete() && file.exists()) {
                    throw new IOException("failed to delete " + file);
                }
            }

            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            public void deleteContents(@NotNull File directory) throws IOException {
                Intrinsics.checkNotNullParameter(directory, "directory");
                File[] listFiles = directory.listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        if (file.isDirectory()) {
                            Intrinsics.checkNotNullExpressionValue(file, "file");
                            deleteContents(file);
                        }
                        if (!file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                    }
                    return;
                }
                throw new IOException("not a readable directory: " + directory);
            }

            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            public boolean exists(@NotNull File file) {
                Intrinsics.checkNotNullParameter(file, "file");
                return file.exists();
            }

            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            public void rename(@NotNull File from, @NotNull File to2) throws IOException {
                Intrinsics.checkNotNullParameter(from, "from");
                Intrinsics.checkNotNullParameter(to2, "to");
                delete(to2);
                if (from.renameTo(to2)) {
                    return;
                }
                throw new IOException("failed to rename " + from + " to " + to2);
            }

            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            @NotNull
            public Sink sink(@NotNull File file) throws FileNotFoundException {
                Sink sink$default;
                Sink sink$default2;
                Intrinsics.checkNotNullParameter(file, "file");
                try {
                    sink$default2 = Okio__JvmOkioKt.sink$default(file, false, 1, null);
                    return sink$default2;
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    sink$default = Okio__JvmOkioKt.sink$default(file, false, 1, null);
                    return sink$default;
                }
            }

            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            public long size(@NotNull File file) {
                Intrinsics.checkNotNullParameter(file, "file");
                return file.length();
            }

            @Override // com.applovin.shadow.okhttp3.internal.io.FileSystem
            @NotNull
            public Source source(@NotNull File file) throws FileNotFoundException {
                Intrinsics.checkNotNullParameter(file, "file");
                return Okio.source(file);
            }

            @NotNull
            public String toString() {
                return "FileSystem.SYSTEM";
            }
        }

        private Companion() {
        }
    }

    @NotNull
    Sink appendingSink(@NotNull File file) throws FileNotFoundException;

    void delete(@NotNull File file) throws IOException;

    void deleteContents(@NotNull File file) throws IOException;

    boolean exists(@NotNull File file);

    void rename(@NotNull File file, @NotNull File file2) throws IOException;

    @NotNull
    Sink sink(@NotNull File file) throws FileNotFoundException;

    long size(@NotNull File file);

    @NotNull
    Source source(@NotNull File file) throws FileNotFoundException;
}
