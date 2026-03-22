package com.applovin.shadow.okio;

import com.applovin.shadow.okio.Path;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NioSystemFileSystem.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNioSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioSystemFileSystem.kt\nokio/NioSystemFileSystem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"})
/* loaded from: classes2.dex */
public class NioSystemFileSystem extends JvmSystemFileSystem {
    private final Long zeroToNull(FileTime fileTime) {
        long millis;
        millis = fileTime.toMillis();
        Long valueOf = Long.valueOf(millis);
        if (valueOf.longValue() == 0) {
            return null;
        }
        return valueOf;
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        String message;
        StandardCopyOption standardCopyOption;
        StandardCopyOption standardCopyOption2;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        try {
            java.nio.file.Path nioPath = source.toNioPath();
            java.nio.file.Path nioPath2 = target.toNioPath();
            standardCopyOption = StandardCopyOption.ATOMIC_MOVE;
            standardCopyOption2 = StandardCopyOption.REPLACE_EXISTING;
            Files.move(nioPath, nioPath2, standardCopyOption, standardCopyOption2);
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e10) {
            message = e10.getMessage();
            throw new FileNotFoundException(message);
        }
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        Files.createSymbolicLink(source.toNioPath(), target.toNioPath(), new FileAttribute[0]);
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem, com.applovin.shadow.okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return metadataOrNull(path.toNioPath());
    }

    @Override // com.applovin.shadow.okio.JvmSystemFileSystem
    @NotNull
    public String toString() {
        return "NioSystemFileSystem";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final FileMetadata metadataOrNull(@NotNull java.nio.file.Path nioPath) {
        LinkOption linkOption;
        BasicFileAttributes readAttributes;
        boolean isSymbolicLink;
        boolean isRegularFile;
        boolean isDirectory;
        long size;
        FileTime creationTime;
        FileTime lastModifiedTime;
        FileTime lastAccessTime;
        Intrinsics.checkNotNullParameter(nioPath, "nioPath");
        try {
            Class a10 = t.a();
            linkOption = LinkOption.NOFOLLOW_LINKS;
            readAttributes = Files.readAttributes(nioPath, a10, linkOption);
            isSymbolicLink = readAttributes.isSymbolicLink();
            java.nio.file.Path readSymbolicLink = isSymbolicLink ? Files.readSymbolicLink(nioPath) : null;
            isRegularFile = readAttributes.isRegularFile();
            isDirectory = readAttributes.isDirectory();
            Path path = readSymbolicLink != null ? Path.Companion.get$default(Path.Companion, readSymbolicLink, false, 1, (Object) null) : null;
            size = readAttributes.size();
            Long valueOf = Long.valueOf(size);
            creationTime = readAttributes.creationTime();
            Long zeroToNull = creationTime != null ? zeroToNull(creationTime) : null;
            lastModifiedTime = readAttributes.lastModifiedTime();
            Long zeroToNull2 = lastModifiedTime != null ? zeroToNull(lastModifiedTime) : null;
            lastAccessTime = readAttributes.lastAccessTime();
            return new FileMetadata(isRegularFile, isDirectory, path, valueOf, zeroToNull, zeroToNull2, lastAccessTime != null ? zeroToNull(lastAccessTime) : null, null, 128, null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }
}
