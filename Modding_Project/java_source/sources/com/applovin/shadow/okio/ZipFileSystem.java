package com.applovin.shadow.okio;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.shadow.okio.Path;
import com.applovin.shadow.okio.internal.FixedLengthSource;
import com.applovin.shadow.okio.internal.ZipEntry;
import com.applovin.shadow.okio.internal.ZipFilesKt;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ZipFileSystem.kt */
@Metadata
@SourceDebugExtension({"SMAP\nZipFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,175:1\n52#2,5:176\n52#2,21:181\n60#2,10:202\n57#2,2:212\n71#2,2:214\n52#2,21:216\n*S KotlinDebug\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n*L\n102#1:176,5\n103#1:181,21\n102#1:202,10\n102#1:212,2\n102#1:214,2\n132#1:216,21\n*E\n"})
/* loaded from: classes2.dex */
public final class ZipFileSystem extends FileSystem {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @NotNull
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, DomExceptionUtils.SEPARATOR, false, 1, (Object) null);
    @Nullable
    private final String comment;
    @NotNull
    private final Map<Path, ZipEntry> entries;
    @NotNull
    private final FileSystem fileSystem;
    @NotNull
    private final Path zipPath;

    /* compiled from: ZipFileSystem.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Path getROOT() {
            return ZipFileSystem.ROOT;
        }

        private Companion() {
        }
    }

    public ZipFileSystem(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Map<Path, ZipEntry> entries, @Nullable String str) {
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.zipPath = zipPath;
        this.fileSystem = fileSystem;
        this.entries = entries;
        this.comment = str;
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z10) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        Path canonicalizeInternal = canonicalizeInternal(path);
        if (this.entries.containsKey(canonicalizeInternal)) {
            return canonicalizeInternal;
        }
        throw new FileNotFoundException(String.valueOf(path));
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean z10) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void delete(@NotNull Path path, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List<Path> list = list(dir, true);
        Intrinsics.checkNotNull(list);
        return list;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return list(dir, false);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Long valueOf;
        FileMetadata fileMetadata;
        Intrinsics.checkNotNullParameter(path, "path");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        Throwable th2 = null;
        if (zipEntry == null) {
            return null;
        }
        boolean z10 = !zipEntry.isDirectory();
        boolean isDirectory = zipEntry.isDirectory();
        if (zipEntry.isDirectory()) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf(zipEntry.getSize());
        }
        FileMetadata fileMetadata2 = new FileMetadata(z10, isDirectory, null, valueOf, null, zipEntry.getLastModifiedAtMillis(), null, null, 128, null);
        if (zipEntry.getOffset() == -1) {
            return fileMetadata2;
        }
        FileHandle openReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        try {
            BufferedSource buffer = Okio.buffer(openReadOnly.source(zipEntry.getOffset()));
            fileMetadata = ZipFilesKt.readLocalHeader(buffer, fileMetadata2);
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            th = null;
        } catch (Throwable th4) {
            if (openReadOnly != null) {
                try {
                    openReadOnly.close();
                } catch (Throwable th5) {
                    ms.d.a(th4, th5);
                }
            }
            fileMetadata = null;
            th2 = th4;
        }
        if (th == null) {
            Intrinsics.checkNotNull(fileMetadata);
            if (openReadOnly != null) {
                try {
                    openReadOnly.close();
                } catch (Throwable th6) {
                    th2 = th6;
                }
            }
            if (th2 == null) {
                Intrinsics.checkNotNull(fileMetadata);
                return fileMetadata;
            }
            throw th2;
        }
        throw th;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z10) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) throws IOException {
        BufferedSource bufferedSource;
        Intrinsics.checkNotNullParameter(file, "file");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(file));
        if (zipEntry != null) {
            FileHandle openReadOnly = this.fileSystem.openReadOnly(this.zipPath);
            Throwable th2 = null;
            try {
                bufferedSource = Okio.buffer(openReadOnly.source(zipEntry.getOffset()));
                if (openReadOnly != null) {
                    try {
                        openReadOnly.close();
                    } catch (Throwable th3) {
                        th2 = th3;
                    }
                }
            } catch (Throwable th4) {
                if (openReadOnly != null) {
                    try {
                        openReadOnly.close();
                    } catch (Throwable th5) {
                        ms.d.a(th4, th5);
                    }
                }
                bufferedSource = null;
                th2 = th4;
            }
            if (th2 == null) {
                Intrinsics.checkNotNull(bufferedSource);
                ZipFilesKt.skipLocalHeader(bufferedSource);
                if (zipEntry.getCompressionMethod() == 0) {
                    return new FixedLengthSource(bufferedSource, zipEntry.getSize(), true);
                }
                return new FixedLengthSource(new InflaterSource(new FixedLengthSource(bufferedSource, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
            }
            throw th2;
        }
        throw new FileNotFoundException("no such file: " + file);
    }

    private final List<Path> list(Path path, boolean z10) {
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        if (zipEntry == null) {
            if (z10) {
                throw new IOException("not a directory: " + path);
            }
            return null;
        }
        return CollectionsKt.d1(zipEntry.getChildren());
    }
}
