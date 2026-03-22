package com.applovin.shadow.okio.internal;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.shadow.okio.FileHandle;
import com.applovin.shadow.okio.FileMetadata;
import com.applovin.shadow.okio.FileSystem;
import com.applovin.shadow.okio.Okio;
import com.applovin.shadow.okio.Path;
import com.applovin.shadow.okio.Sink;
import com.applovin.shadow.okio.Source;
import com.applovin.shadow.okio.internal.ResourceFileSystem;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResourceFileSystem.kt */
@Metadata
@SourceDebugExtension({"SMAP\nResourceFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n766#2:211\n857#2,2:212\n1549#2:214\n1620#2,3:215\n766#2:218\n857#2,2:219\n1549#2:221\n1620#2,3:222\n1603#2,9:225\n1855#2:234\n1856#2:236\n1612#2:237\n1603#2,9:238\n1855#2:247\n1856#2:249\n1612#2:250\n1#3:235\n1#3:248\n*S KotlinDebug\n*F\n+ 1 ResourceFileSystem.kt\nokio/internal/ResourceFileSystem\n*L\n74#1:211\n74#1:212,2\n75#1:214\n75#1:215,3\n90#1:218\n90#1:219,2\n91#1:221\n91#1:222,3\n173#1:225,9\n173#1:234\n173#1:236\n173#1:237\n174#1:238,9\n174#1:247\n174#1:249\n174#1:250\n173#1:235\n174#1:248\n*E\n"})
/* loaded from: classes2.dex */
public final class ResourceFileSystem extends FileSystem {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @NotNull
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, DomExceptionUtils.SEPARATOR, false, 1, (Object) null);
    @NotNull
    private final ClassLoader classLoader;
    @NotNull
    private final i roots$delegate;
    @NotNull
    private final FileSystem systemFileSystem;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceFileSystem.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean keepPath(Path path) {
            return !StringsKt.E(path.name(), ".class", true);
        }

        @NotNull
        public final Path getROOT() {
            return ResourceFileSystem.ROOT;
        }

        @NotNull
        public final Path removeBase(@NotNull Path path, @NotNull Path base) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            Intrinsics.checkNotNullParameter(base, "base");
            return getROOT().resolve(StringsKt.O(StringsKt.O0(path.toString(), base.toString()), '\\', '/', false, 4, null));
        }

        private Companion() {
        }
    }

    public /* synthetic */ ResourceFileSystem(ClassLoader classLoader, boolean z10, FileSystem fileSystem, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(classLoader, z10, (i10 & 4) != 0 ? FileSystem.SYSTEM : fileSystem);
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    private final List<Pair<FileSystem, Path>> getRoots() {
        return (List) this.roots$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Pair<FileSystem, Path>> toClasspathRoots(ClassLoader classLoader) {
        Enumeration<URL> resources = classLoader.getResources("");
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        ArrayList<URL> list = Collections.list(resources);
        Intrinsics.checkNotNullExpressionValue(list, "list(this)");
        ArrayList arrayList = new ArrayList();
        for (URL url : list) {
            Intrinsics.checkNotNull(url);
            Pair<FileSystem, Path> fileRoot = toFileRoot(url);
            if (fileRoot != null) {
                arrayList.add(fileRoot);
            }
        }
        Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
        Intrinsics.checkNotNullExpressionValue(resources2, "getResources(...)");
        ArrayList<URL> list2 = Collections.list(resources2);
        Intrinsics.checkNotNullExpressionValue(list2, "list(this)");
        ArrayList arrayList2 = new ArrayList();
        for (URL url2 : list2) {
            Intrinsics.checkNotNull(url2);
            Pair<FileSystem, Path> jarRoot = toJarRoot(url2);
            if (jarRoot != null) {
                arrayList2.add(jarRoot);
            }
        }
        return CollectionsKt.K0(arrayList, arrayList2);
    }

    private final Pair<FileSystem, Path> toFileRoot(URL url) {
        if (!Intrinsics.areEqual(url.getProtocol(), "file")) {
            return null;
        }
        return k.a(this.systemFileSystem, Path.Companion.get$default(Path.Companion, new File(url.toURI()), false, 1, (Object) null));
    }

    private final Pair<FileSystem, Path> toJarRoot(URL url) {
        int y02;
        String url2 = url.toString();
        Intrinsics.checkNotNullExpressionValue(url2, "toString(...)");
        if (!StringsKt.V(url2, "jar:file:", false, 2, null) || (y02 = StringsKt.y0(url2, "!", 0, false, 6, null)) == -1) {
            return null;
        }
        Path.Companion companion = Path.Companion;
        String substring = url2.substring(4, y02);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return k.a(ZipFilesKt.openZip(Path.Companion.get$default(companion, new File(URI.create(substring)), false, 1, (Object) null), this.systemFileSystem, new Function1<ZipEntry, Boolean>() { // from class: com.applovin.shadow.okio.internal.ResourceFileSystem$toJarRoot$zip$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull ZipEntry entry) {
                ResourceFileSystem.Companion companion2;
                Intrinsics.checkNotNullParameter(entry, "entry");
                companion2 = ResourceFileSystem.Companion;
                return Boolean.valueOf(companion2.keepPath(entry.getCanonicalPath()));
            }
        }), ROOT);
    }

    private final String toRelativePath(Path path) {
        return canonicalizeInternal(path).relativeTo(ROOT).toString();
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z10) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return canonicalizeInternal(path);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean z10) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    public void delete(@NotNull Path path, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z10 = false;
        for (Pair<FileSystem, Path> pair : getRoots()) {
            FileSystem b10 = pair.b();
            Path d10 = pair.d();
            try {
                ArrayList<Path> arrayList = new ArrayList();
                for (Object obj : b10.list(d10.resolve(relativePath))) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
                for (Path path : arrayList) {
                    arrayList2.add(Companion.removeBase(path, d10));
                }
                CollectionsKt.E(linkedHashSet, arrayList2);
                z10 = true;
            } catch (IOException unused) {
            }
        }
        if (z10) {
            return CollectionsKt.d1(linkedHashSet);
        }
        throw new FileNotFoundException("file not found: " + dir);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Pair<FileSystem, Path>> it = getRoots().iterator();
        boolean z10 = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            Pair<FileSystem, Path> next = it.next();
            Path d10 = next.d();
            List<Path> listOrNull = next.b().listOrNull(d10.resolve(relativePath));
            if (listOrNull != null) {
                ArrayList<Path> arrayList2 = new ArrayList();
                for (Object obj : listOrNull) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt.z(arrayList2, 10));
                for (Path path : arrayList2) {
                    arrayList3.add(Companion.removeBase(path, d10));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                CollectionsKt.E(linkedHashSet, arrayList);
                z10 = true;
            }
        }
        if (!z10) {
            return null;
        }
        return CollectionsKt.d1(linkedHashSet);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (!Companion.keepPath(path)) {
            return null;
        }
        String relativePath = toRelativePath(path);
        for (Pair<FileSystem, Path> pair : getRoots()) {
            FileMetadata metadataOrNull = pair.b().metadataOrNull(pair.d().resolve(relativePath));
            if (metadataOrNull != null) {
                return metadataOrNull;
            }
        }
        return null;
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (Companion.keepPath(file)) {
            String relativePath = toRelativePath(file);
            for (Pair<FileSystem, Path> pair : getRoots()) {
                try {
                    return pair.b().openReadOnly(pair.d().resolve(relativePath));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException("file not found: " + file);
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z10) {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // com.applovin.shadow.okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) {
        Source source;
        Intrinsics.checkNotNullParameter(file, "file");
        if (Companion.keepPath(file)) {
            Path path = ROOT;
            InputStream resourceAsStream = this.classLoader.getResourceAsStream(Path.resolve$default(path, file, false, 2, (Object) null).relativeTo(path).toString());
            if (resourceAsStream != null && (source = Okio.source(resourceAsStream)) != null) {
                return source;
            }
            throw new FileNotFoundException("file not found: " + file);
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    public ResourceFileSystem(@NotNull ClassLoader classLoader, boolean z10, @NotNull FileSystem systemFileSystem) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        Intrinsics.checkNotNullParameter(systemFileSystem, "systemFileSystem");
        this.classLoader = classLoader;
        this.systemFileSystem = systemFileSystem;
        this.roots$delegate = c.b(new Function0<List<? extends Pair<? extends FileSystem, ? extends Path>>>() { // from class: com.applovin.shadow.okio.internal.ResourceFileSystem$roots$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends Pair<? extends FileSystem, ? extends Path>> invoke() {
                ClassLoader classLoader2;
                List<? extends Pair<? extends FileSystem, ? extends Path>> classpathRoots;
                ResourceFileSystem resourceFileSystem = ResourceFileSystem.this;
                classLoader2 = resourceFileSystem.classLoader;
                classpathRoots = resourceFileSystem.toClasspathRoots(classLoader2);
                return classpathRoots;
            }
        });
        if (z10) {
            getRoots().size();
        }
    }
}
