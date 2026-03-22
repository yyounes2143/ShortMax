package com.applovin.shadow.okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ForwardingFileSystem.kt */
@Metadata
@SourceDebugExtension({"SMAP\nForwardingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1620#2,3:244\n1620#2,3:247\n*S KotlinDebug\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n*L\n166#1:244,3\n174#1:247,3\n*E\n"})
/* loaded from: classes2.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    @NotNull
    private final FileSystem delegate;

    public ForwardingFileSystem(@NotNull FileSystem delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", "file"), z10);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", "source"), onPathParameter(target, "atomicMove", TypedValues.AttributesType.S_TARGET));
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", MBridgeConstans.DYNAMIC_VIEW_WX_PATH)), "canonicalize");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", "dir"), z10);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        this.delegate.createSymlink(onPathParameter(source, "createSymlink", "source"), onPathParameter(target, "createSymlink", TypedValues.AttributesType.S_TARGET));
    }

    @NotNull
    public final FileSystem delegate() {
        return this.delegate;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void delete(@NotNull Path path, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        this.delegate.delete(onPathParameter(path, "delete", MBridgeConstans.DYNAMIC_VIEW_WX_PATH), z10);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        Path onPathParameter = onPathParameter(dir, "list", "dir");
        ArrayList arrayList = new ArrayList();
        for (Path path : this.delegate.list(onPathParameter)) {
            arrayList.add(onPathResult(path, "list"));
        }
        CollectionsKt.C(arrayList);
        return arrayList;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        List<Path> listOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", "dir"));
        if (listOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Path path : listOrNull) {
            arrayList.add(onPathResult(path, "listOrNull"));
        }
        CollectionsKt.C(arrayList);
        return arrayList;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sequence<Path> listRecursively(@NotNull Path dir, boolean z10) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return kotlin.sequences.j.F(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", "dir"), z10), new Function1<Path, Path>() { // from class: com.applovin.shadow.okio.ForwardingFileSystem$listRecursively$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Path invoke(@NotNull Path it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return ForwardingFileSystem.this.onPathResult(it, "listRecursively");
            }
        });
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) throws IOException {
        FileMetadata copy;
        Intrinsics.checkNotNullParameter(path, "path");
        FileMetadata metadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", MBridgeConstans.DYNAMIC_VIEW_WX_PATH));
        if (metadataOrNull == null) {
            return null;
        }
        if (metadataOrNull.getSymlinkTarget() != null) {
            copy = metadataOrNull.copy((r18 & 1) != 0 ? metadataOrNull.isRegularFile : false, (r18 & 2) != 0 ? metadataOrNull.isDirectory : false, (r18 & 4) != 0 ? metadataOrNull.symlinkTarget : onPathResult(metadataOrNull.getSymlinkTarget(), "metadataOrNull"), (r18 & 8) != 0 ? metadataOrNull.size : null, (r18 & 16) != 0 ? metadataOrNull.createdAtMillis : null, (r18 & 32) != 0 ? metadataOrNull.lastModifiedAtMillis : null, (r18 & 64) != 0 ? metadataOrNull.lastAccessedAtMillis : null, (r18 & 128) != 0 ? metadataOrNull.extras : null);
            return copy;
        }
        return metadataOrNull;
    }

    @NotNull
    public Path onPathParameter(@NotNull Path path, @NotNull String functionName, @NotNull String parameterName) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(functionName, "functionName");
        Intrinsics.checkNotNullParameter(parameterName, "parameterName");
        return path;
    }

    @NotNull
    public Path onPathResult(@NotNull Path path, @NotNull String functionName) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(functionName, "functionName");
        return path;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", "file"));
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z10, boolean z11) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", "file"), z10, z11);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.sink(onPathParameter(file, "sink", "file"), z10);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return this.delegate.source(onPathParameter(file, "source", "file"));
    }

    @NotNull
    public String toString() {
        return Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + '(' + this.delegate + ')';
    }
}
