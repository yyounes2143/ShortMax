package com.applovin.shadow.okio;

import com.applovin.shadow.okio.Path;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NioFileSystemWrappingFileSystem.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNioFileSystemWrappingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,192:1\n1620#2,3:193\n1#3:196\n37#4,2:197\n37#4,2:199\n37#4,2:201\n*S KotlinDebug\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n*L\n77#1:193,3\n104#1:197,2\n125#1:199,2\n138#1:201,2\n*E\n"})
/* loaded from: classes2.dex */
public final class NioFileSystemWrappingFileSystem extends NioSystemFileSystem {
    @NotNull
    private final java.nio.file.FileSystem nioFileSystem;

    public NioFileSystemWrappingFileSystem(@NotNull java.nio.file.FileSystem nioFileSystem) {
        Intrinsics.checkNotNullParameter(nioFileSystem, "nioFileSystem");
        this.nioFileSystem = nioFileSystem;
    }

    private final java.nio.file.Path resolve(Path path) {
        java.nio.file.Path path2;
        path2 = this.nioFileSystem.getPath(path.toString(), new String[0]);
        Intrinsics.checkNotNullExpressionValue(path2, "getPath(...)");
        return path2;
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z10) {
        StandardOpenOption standardOpenOption;
        OutputStream newOutputStream;
        StandardOpenOption standardOpenOption2;
        Intrinsics.checkNotNullParameter(file, "file");
        List c10 = CollectionsKt.c();
        standardOpenOption = StandardOpenOption.APPEND;
        c10.add(standardOpenOption);
        if (!z10) {
            standardOpenOption2 = StandardOpenOption.CREATE;
            c10.add(standardOpenOption2);
        }
        List a10 = CollectionsKt.a(c10);
        java.nio.file.Path resolve = resolve(file);
        StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) a10.toArray(new StandardOpenOption[0]);
        OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
        newOutputStream = Files.newOutputStream(resolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        Intrinsics.checkNotNullExpressionValue(newOutputStream, "newOutputStream(this, *options)");
        return Okio.sink(newOutputStream);
    }

    @Override // com.applovin.shadow.okio.NioSystemFileSystem, com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        String message;
        StandardCopyOption standardCopyOption;
        StandardCopyOption standardCopyOption2;
        java.nio.file.Path move;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        try {
            java.nio.file.Path resolve = resolve(source);
            java.nio.file.Path resolve2 = resolve(target);
            standardCopyOption = StandardCopyOption.ATOMIC_MOVE;
            standardCopyOption2 = StandardCopyOption.REPLACE_EXISTING;
            move = Files.move(resolve, resolve2, (CopyOption[]) Arrays.copyOf(new CopyOption[]{standardCopyOption, standardCopyOption2}, 2));
            Intrinsics.checkNotNullExpressionValue(move, "move(this, target, *options)");
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e10) {
            message = e10.getMessage();
            throw new FileNotFoundException(message);
        }
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        java.nio.file.Path realPath;
        Intrinsics.checkNotNullParameter(path, "path");
        try {
            Path.Companion companion = Path.Companion;
            realPath = resolve(path).toRealPath(new LinkOption[0]);
            Intrinsics.checkNotNullExpressionValue(realPath, "toRealPath(...)");
            return Path.Companion.get$default(companion, realPath, false, 1, (Object) null);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + path);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0.isDirectory() == true) goto L5;
     */
    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void createDirectory(@org.jetbrains.annotations.NotNull com.applovin.shadow.okio.Path r4, boolean r5) {
        /*
            r3 = this;
            java.lang.String r0 = "dir"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.applovin.shadow.okio.FileMetadata r0 = r3.metadataOrNull(r4)
            r1 = 0
            if (r0 == 0) goto L14
            boolean r0 = r0.isDirectory()
            r2 = 1
            if (r0 != r2) goto L14
            goto L15
        L14:
            r2 = r1
        L15:
            if (r2 == 0) goto L31
            if (r5 != 0) goto L1a
            goto L31
        L1a:
            java.io.IOException r5 = new java.io.IOException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r4)
            java.lang.String r4 = " already exists."
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r5.<init>(r4)
            throw r5
        L31:
            java.nio.file.Path r5 = r3.resolve(r4)     // Catch: java.io.IOException -> L47
            java.nio.file.attribute.FileAttribute[] r0 = new java.nio.file.attribute.FileAttribute[r1]     // Catch: java.io.IOException -> L47
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)     // Catch: java.io.IOException -> L47
            java.nio.file.attribute.FileAttribute[] r0 = (java.nio.file.attribute.FileAttribute[]) r0     // Catch: java.io.IOException -> L47
            java.nio.file.Path r5 = com.applovin.shadow.okio.k.a(r5, r0)     // Catch: java.io.IOException -> L47
            java.lang.String r0 = "createDirectory(this, *attributes)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)     // Catch: java.io.IOException -> L47
            return
        L47:
            r5 = move-exception
            if (r2 == 0) goto L4b
            return
        L4b:
            java.io.IOException r0 = new java.io.IOException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "failed to create directory: "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r0.<init>(r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okio.NioFileSystemWrappingFileSystem.createDirectory(com.applovin.shadow.okio.Path, boolean):void");
    }

    @Override // com.applovin.shadow.okio.NioSystemFileSystem, com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        java.nio.file.Path createSymbolicLink;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        createSymbolicLink = Files.createSymbolicLink(resolve(source), resolve(target), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0));
        Intrinsics.checkNotNullExpressionValue(createSymbolicLink, "createSymbolicLink(this, target, *attributes)");
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    public void delete(@NotNull Path path, boolean z10) {
        boolean exists;
        Intrinsics.checkNotNullParameter(path, "path");
        if (!Thread.interrupted()) {
            java.nio.file.Path resolve = resolve(path);
            try {
                Files.delete(resolve);
                return;
            } catch (NoSuchFileException unused) {
                if (!z10) {
                    return;
                }
                throw new FileNotFoundException("no such file: " + path);
            } catch (IOException unused2) {
                exists = Files.exists(resolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0));
                if (exists) {
                    throw new IOException("failed to delete " + path);
                }
                return;
            }
        }
        throw new InterruptedIOException("interrupted");
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List<Path> list = list(dir, true);
        Intrinsics.checkNotNull(list);
        return list;
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return list(dir, false);
    }

    @Override // com.applovin.shadow.okio.NioSystemFileSystem, com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return metadataOrNull(resolve(path));
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        StandardOpenOption standardOpenOption;
        FileChannel open;
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            java.nio.file.Path resolve = resolve(file);
            standardOpenOption = StandardOpenOption.READ;
            open = FileChannel.open(resolve, standardOpenOption);
            Intrinsics.checkNotNull(open);
            return new NioFileSystemFileHandle(false, open);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z10, boolean z11) {
        StandardOpenOption standardOpenOption;
        StandardOpenOption standardOpenOption2;
        StandardOpenOption standardOpenOption3;
        FileChannel open;
        StandardOpenOption standardOpenOption4;
        Intrinsics.checkNotNullParameter(file, "file");
        if (z10 && z11) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.");
        }
        List c10 = CollectionsKt.c();
        standardOpenOption = StandardOpenOption.READ;
        c10.add(standardOpenOption);
        standardOpenOption2 = StandardOpenOption.WRITE;
        c10.add(standardOpenOption2);
        if (z10) {
            standardOpenOption4 = StandardOpenOption.CREATE_NEW;
            c10.add(standardOpenOption4);
        } else if (!z11) {
            standardOpenOption3 = StandardOpenOption.CREATE;
            c10.add(standardOpenOption3);
        }
        List a10 = CollectionsKt.a(c10);
        try {
            java.nio.file.Path resolve = resolve(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) a10.toArray(new StandardOpenOption[0]);
            open = FileChannel.open(resolve, (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length));
            Intrinsics.checkNotNull(open);
            return new NioFileSystemFileHandle(true, open);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z10) {
        OutputStream newOutputStream;
        StandardOpenOption standardOpenOption;
        Intrinsics.checkNotNullParameter(file, "file");
        List c10 = CollectionsKt.c();
        if (z10) {
            standardOpenOption = StandardOpenOption.CREATE_NEW;
            c10.add(standardOpenOption);
        }
        List a10 = CollectionsKt.a(c10);
        try {
            java.nio.file.Path resolve = resolve(file);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) a10.toArray(new StandardOpenOption[0]);
            OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
            newOutputStream = Files.newOutputStream(resolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
            Intrinsics.checkNotNullExpressionValue(newOutputStream, "newOutputStream(this, *options)");
            return Okio.sink(newOutputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) {
        InputStream newInputStream;
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            newInputStream = Files.newInputStream(resolve(file), (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0));
            Intrinsics.checkNotNullExpressionValue(newInputStream, "newInputStream(this, *options)");
            return Okio.source(newInputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + file);
        }
    }

    @Override // com.applovin.shadow.okio.NioSystemFileSystem, com.applovin.shadow.okio.JvmSystemFileSystem
    @NotNull
    public String toString() {
        String simpleName = Reflection.getOrCreateKotlinClass(this.nioFileSystem.getClass()).getSimpleName();
        Intrinsics.checkNotNull(simpleName);
        return simpleName;
    }

    private final List<Path> list(Path path, boolean z10) {
        boolean exists;
        java.nio.file.Path resolve = resolve(path);
        try {
            List<Object> b10 = xs.a.b(resolve, null, 1, null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : b10) {
                arrayList.add(Path.Companion.get$default(Path.Companion, h.a(obj), false, 1, (Object) null));
            }
            CollectionsKt.C(arrayList);
            return arrayList;
        } catch (Exception unused) {
            if (z10) {
                exists = Files.exists(resolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0));
                if (exists) {
                    throw new IOException("failed to list " + path);
                }
                throw new FileNotFoundException("no such file: " + path);
            }
            return null;
        }
    }
}
