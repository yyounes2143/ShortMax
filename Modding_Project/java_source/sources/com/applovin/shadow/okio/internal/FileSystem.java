package com.applovin.shadow.okio.internal;

import com.applovin.shadow.okio.BufferedSink;
import com.applovin.shadow.okio.FileMetadata;
import com.applovin.shadow.okio.Okio;
import com.applovin.shadow.okio.Path;
import com.applovin.shadow.okio.Source;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.m;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.j;
import ms.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FileSystem.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,155:1\n52#2,5:156\n52#2,21:161\n60#2,10:182\n57#2,2:192\n71#2,2:194\n*S KotlinDebug\n*F\n+ 1 FileSystem.kt\nokio/internal/-FileSystem\n*L\n65#1:156,5\n66#1:161,21\n65#1:182,10\n65#1:192,2\n65#1:194,2\n*E\n"})
/* renamed from: com.applovin.shadow.okio.internal.-FileSystem  reason: invalid class name */
/* loaded from: classes2.dex */
public final class FileSystem {
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e0, code lost:
        if (r0 != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e2, code lost:
        if (r7 != 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e4, code lost:
        r6.addLast(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00eb, code lost:
        r7 = r6;
        r6 = r1;
        r1 = r0;
        r0 = r2;
        r2 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0126, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0127, code lost:
        r7 = r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0149  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object collectRecursively(@org.jetbrains.annotations.NotNull kotlin.sequences.i<? super com.applovin.shadow.okio.Path> r15, @org.jetbrains.annotations.NotNull com.applovin.shadow.okio.FileSystem r16, @org.jetbrains.annotations.NotNull kotlin.collections.m<com.applovin.shadow.okio.Path> r17, @org.jetbrains.annotations.NotNull com.applovin.shadow.okio.Path r18, boolean r19, boolean r20, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r21) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okio.internal.FileSystem.collectRecursively(kotlin.sequences.i, com.applovin.shadow.okio.FileSystem, kotlin.collections.m, com.applovin.shadow.okio.Path, boolean, boolean, rs.c):java.lang.Object");
    }

    public static final void commonCopy(@NotNull com.applovin.shadow.okio.FileSystem fileSystem, @NotNull Path source, @NotNull Path target) throws IOException {
        Long l10;
        Long valueOf;
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        Source source2 = fileSystem.source(source);
        Throwable th2 = null;
        try {
            BufferedSink buffer = Okio.buffer(fileSystem.sink(target));
            valueOf = Long.valueOf(buffer.writeAll(source2));
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            th = null;
        } catch (Throwable th4) {
            if (source2 != null) {
                try {
                    source2.close();
                } catch (Throwable th5) {
                    d.a(th4, th5);
                }
            }
            th2 = th4;
            l10 = null;
        }
        if (th == null) {
            Intrinsics.checkNotNull(valueOf);
            l10 = Long.valueOf(valueOf.longValue());
            if (source2 != null) {
                try {
                    source2.close();
                } catch (Throwable th6) {
                    th2 = th6;
                }
            }
            if (th2 == null) {
                Intrinsics.checkNotNull(l10);
                return;
            }
            throw th2;
        }
        throw th;
    }

    public static final void commonCreateDirectories(@NotNull com.applovin.shadow.okio.FileSystem fileSystem, @NotNull Path dir, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        m mVar = new m();
        for (Path path = dir; path != null && !fileSystem.exists(path); path = path.parent()) {
            mVar.addFirst(path);
        }
        if (z10 && mVar.isEmpty()) {
            throw new IOException(dir + " already exists.");
        }
        Iterator<E> it = mVar.iterator();
        while (it.hasNext()) {
            fileSystem.createDirectory((Path) it.next());
        }
    }

    public static final void commonDeleteRecursively(@NotNull com.applovin.shadow.okio.FileSystem fileSystem, @NotNull Path fileOrDirectory, boolean z10) throws IOException {
        boolean z11;
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        Iterator it = j.b(new FileSystem$commonDeleteRecursively$sequence$1(fileSystem, fileOrDirectory, null)).iterator();
        while (it.hasNext()) {
            Path path = (Path) it.next();
            if (z10 && !it.hasNext()) {
                z11 = true;
            } else {
                z11 = false;
            }
            fileSystem.delete(path, z11);
        }
    }

    public static final boolean commonExists(@NotNull com.applovin.shadow.okio.FileSystem fileSystem, @NotNull Path path) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        if (fileSystem.metadataOrNull(path) != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final Sequence<Path> commonListRecursively(@NotNull com.applovin.shadow.okio.FileSystem fileSystem, @NotNull Path dir, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        return j.b(new FileSystem$commonListRecursively$1(dir, fileSystem, z10, null));
    }

    @NotNull
    public static final FileMetadata commonMetadata(@NotNull com.applovin.shadow.okio.FileSystem fileSystem, @NotNull Path path) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        FileMetadata metadataOrNull = fileSystem.metadataOrNull(path);
        if (metadataOrNull != null) {
            return metadataOrNull;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    @Nullable
    public static final Path symlinkTarget(@NotNull com.applovin.shadow.okio.FileSystem fileSystem, @NotNull Path path) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path parent = path.parent();
        Intrinsics.checkNotNull(parent);
        return parent.resolve(symlinkTarget);
    }
}
