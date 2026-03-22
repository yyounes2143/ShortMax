package okio;

import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import ms.d;
import okio.Path;
import okio.internal.ResourceFileSystem;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FileSystem.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,165:1\n52#2,21:166\n52#2,21:187\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/FileSystem\n*L\n67#1:166,21\n81#1:187,21\n*E\n"})
/* loaded from: classes8.dex */
public abstract class FileSystem {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final FileSystem RESOURCES;
    @NotNull
    public static final FileSystem SYSTEM;
    @NotNull
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    /* compiled from: FileSystem.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final FileSystem get(@NotNull java.nio.file.FileSystem fileSystem) {
            Intrinsics.checkNotNullParameter(fileSystem, "<this>");
            return new NioFileSystemWrappingFileSystem(fileSystem);
        }

        private Companion() {
        }
    }

    /* renamed from: -write$default  reason: not valid java name */
    public static /* synthetic */ Object m4962write$default(FileSystem fileSystem, Path file, boolean z10, Function1 writerAction, int i10, Object obj) throws IOException {
        Object obj2;
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(writerAction, "writerAction");
            BufferedSink buffer = Okio.buffer(fileSystem.sink(file, z10));
            Throwable th2 = null;
            try {
                obj2 = writerAction.invoke(buffer);
                InlineMarker.finallyStart(1);
                if (buffer != null) {
                    try {
                        buffer.close();
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                }
                InlineMarker.finallyEnd(1);
            } catch (Throwable th4) {
                InlineMarker.finallyStart(1);
                if (buffer != null) {
                    try {
                        buffer.close();
                    } catch (Throwable th5) {
                        d.a(th4, th5);
                    }
                }
                InlineMarker.finallyEnd(1);
                obj2 = null;
                th2 = th4;
            }
            if (th2 == null) {
                Intrinsics.checkNotNull(obj2);
                return obj2;
            }
            throw th2;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        Path.Companion companion = Path.Companion;
        String property = System.getProperty("java.io.tmpdir");
        Intrinsics.checkNotNullExpressionValue(property, "getProperty(...)");
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        Intrinsics.checkNotNullExpressionValue(classLoader, "getClassLoader(...)");
        RESOURCES = new ResourceFileSystem(classLoader, false, null, 4, null);
    }

    public static /* synthetic */ Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return fileSystem.appendingSink(path, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            fileSystem.createDirectories(path, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            fileSystem.createDirectory(path, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            fileSystem.delete(path, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            fileSystem.deleteRecursively(path, z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
    }

    @NotNull
    public static final FileSystem get(@NotNull java.nio.file.FileSystem fileSystem) {
        return Companion.get(fileSystem);
    }

    public static /* synthetic */ Sequence listRecursively$default(FileSystem fileSystem, Path path, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return fileSystem.listRecursively(path, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z10, boolean z11, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            if ((i10 & 4) != 0) {
                z11 = false;
            }
            return fileSystem.openReadWrite(path, z10, z11);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
    }

    public static /* synthetic */ Sink sink$default(FileSystem fileSystem, Path path, boolean z10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return fileSystem.sink(path, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
    }

    /* renamed from: -read  reason: not valid java name */
    public final <T> T m4963read(@NotNull Path file, @NotNull Function1<? super BufferedSource, ? extends T> readerAction) throws IOException {
        T t10;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(readerAction, "readerAction");
        BufferedSource buffer = Okio.buffer(source(file));
        Throwable th2 = null;
        try {
            t10 = readerAction.invoke(buffer);
            InlineMarker.finallyStart(1);
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th3) {
                    th2 = th3;
                }
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th4) {
            InlineMarker.finallyStart(1);
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th5) {
                    d.a(th4, th5);
                }
            }
            InlineMarker.finallyEnd(1);
            th2 = th4;
            t10 = null;
        }
        if (th2 == null) {
            Intrinsics.checkNotNull(t10);
            return t10;
        }
        throw th2;
    }

    /* renamed from: -write  reason: not valid java name */
    public final <T> T m4964write(@NotNull Path file, boolean z10, @NotNull Function1<? super BufferedSink, ? extends T> writerAction) throws IOException {
        T t10;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(writerAction, "writerAction");
        BufferedSink buffer = Okio.buffer(sink(file, z10));
        Throwable th2 = null;
        try {
            t10 = writerAction.invoke(buffer);
            InlineMarker.finallyStart(1);
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th3) {
                    th2 = th3;
                }
            }
            InlineMarker.finallyEnd(1);
        } catch (Throwable th4) {
            InlineMarker.finallyStart(1);
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th5) {
                    d.a(th4, th5);
                }
            }
            InlineMarker.finallyEnd(1);
            th2 = th4;
            t10 = null;
        }
        if (th2 == null) {
            Intrinsics.checkNotNull(t10);
            return t10;
        }
        throw th2;
    }

    @NotNull
    public final Sink appendingSink(@NotNull Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return appendingSink(file, false);
    }

    @NotNull
    public abstract Sink appendingSink(@NotNull Path path, boolean z10) throws IOException;

    public abstract void atomicMove(@NotNull Path path, @NotNull Path path2) throws IOException;

    @NotNull
    public abstract Path canonicalize(@NotNull Path path) throws IOException;

    public void copy(@NotNull Path source, @NotNull Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        okio.internal.FileSystem.commonCopy(this, source, target);
    }

    public final void createDirectories(@NotNull Path dir, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        okio.internal.FileSystem.commonCreateDirectories(this, dir, z10);
    }

    public final void createDirectory(@NotNull Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        createDirectory(dir, false);
    }

    public abstract void createDirectory(@NotNull Path path, boolean z10) throws IOException;

    public abstract void createSymlink(@NotNull Path path, @NotNull Path path2) throws IOException;

    public final void delete(@NotNull Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        delete(path, false);
    }

    public abstract void delete(@NotNull Path path, boolean z10) throws IOException;

    public void deleteRecursively(@NotNull Path fileOrDirectory, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        okio.internal.FileSystem.commonDeleteRecursively(this, fileOrDirectory, z10);
    }

    public final boolean exists(@NotNull Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        return okio.internal.FileSystem.commonExists(this, path);
    }

    @NotNull
    public abstract List<Path> list(@NotNull Path path) throws IOException;

    @Nullable
    public abstract List<Path> listOrNull(@NotNull Path path);

    @NotNull
    public Sequence<Path> listRecursively(@NotNull Path dir, boolean z10) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return okio.internal.FileSystem.commonListRecursively(this, dir, z10);
    }

    @NotNull
    public final FileMetadata metadata(@NotNull Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        return okio.internal.FileSystem.commonMetadata(this, path);
    }

    @Nullable
    public abstract FileMetadata metadataOrNull(@NotNull Path path) throws IOException;

    @NotNull
    public abstract FileHandle openReadOnly(@NotNull Path path) throws IOException;

    @NotNull
    public final FileHandle openReadWrite(@NotNull Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return openReadWrite(file, false, false);
    }

    @NotNull
    public abstract FileHandle openReadWrite(@NotNull Path path, boolean z10, boolean z11) throws IOException;

    @NotNull
    public final Sink sink(@NotNull Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return sink(file, false);
    }

    @NotNull
    public abstract Sink sink(@NotNull Path path, boolean z10) throws IOException;

    @NotNull
    public abstract Source source(@NotNull Path path) throws IOException;

    public final void createDirectories(@NotNull Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        createDirectories(dir, false);
    }

    public final void deleteRecursively(@NotNull Path fileOrDirectory) throws IOException {
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        deleteRecursively(fileOrDirectory, false);
    }

    @NotNull
    public final Sequence<Path> listRecursively(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return listRecursively(dir, false);
    }
}
