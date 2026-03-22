package okio;

import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Path.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/Path\n+ 2 Path.kt\nokio/internal/-Path\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n45#2,3:133\n53#2,28:136\n59#2,22:168\n112#2:190\n117#2:191\n122#2,6:192\n139#2,5:198\n149#2:203\n154#2,25:204\n194#2:229\n199#2,11:230\n204#2,6:241\n199#2,11:247\n204#2,6:258\n228#2,36:264\n268#2:300\n282#2:301\n287#2:302\n292#2:303\n297#2:304\n1549#3:164\n1620#3,3:165\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/Path\n*L\n44#1:133,3\n47#1:136,28\n50#1:168,22\n53#1:190\n56#1:191\n60#1:192,6\n64#1:198,5\n68#1:203\n72#1:204,25\n75#1:229\n78#1:230,11\n81#1:241,6\n87#1:247,11\n90#1:258,6\n95#1:264,36\n97#1:300\n104#1:301\n106#1:302\n108#1:303\n110#1:304\n47#1:164\n47#1:165,3\n*E\n"})
/* loaded from: classes8.dex */
public final class Path implements Comparable<Path> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String DIRECTORY_SEPARATOR;
    @NotNull
    private final ByteString bytes;

    /* compiled from: Path.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return companion.get(str, z10);
        }

        @NotNull
        public final Path get(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            return get$default(this, file, false, 1, (Object) null);
        }

        private Companion() {
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return companion.get(file, z10);
        }

        @NotNull
        public final Path get(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return get$default(this, str, false, 1, (Object) null);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return companion.get(path, z10);
        }

        @NotNull
        public final Path get(@NotNull java.nio.file.Path path) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            return get$default(this, path, false, 1, (Object) null);
        }

        @NotNull
        public final Path get(@NotNull String str, boolean z10) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return okio.internal.Path.commonToPath(str, z10);
        }

        @NotNull
        public final Path get(@NotNull File file, boolean z10) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            String file2 = file.toString();
            Intrinsics.checkNotNullExpressionValue(file2, "toString(...)");
            return get(file2, z10);
        }

        @NotNull
        public final Path get(@NotNull java.nio.file.Path path, boolean z10) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            return get(path.toString(), z10);
        }
    }

    static {
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        DIRECTORY_SEPARATOR = separator;
    }

    public Path(@NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.bytes = bytes;
    }

    @NotNull
    public static final Path get(@NotNull File file) {
        return Companion.get(file);
    }

    public static /* synthetic */ Path resolve$default(Path path, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return path.resolve(str, z10);
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof Path) && Intrinsics.areEqual(((Path) obj).getBytes$okio(), getBytes$okio())) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ByteString getBytes$okio() {
        return this.bytes;
    }

    @Nullable
    public final Path getRoot() {
        int access$rootLength = okio.internal.Path.access$rootLength(this);
        if (access$rootLength == -1) {
            return null;
        }
        return new Path(getBytes$okio().substring(0, access$rootLength));
    }

    @NotNull
    public final List<String> getSegments() {
        ArrayList<ByteString> arrayList = new ArrayList();
        int access$rootLength = okio.internal.Path.access$rootLength(this);
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < getBytes$okio().size() && getBytes$okio().getByte(access$rootLength) == 92) {
            access$rootLength++;
        }
        int size = getBytes$okio().size();
        int i10 = access$rootLength;
        while (access$rootLength < size) {
            if (getBytes$okio().getByte(access$rootLength) == 47 || getBytes$okio().getByte(access$rootLength) == 92) {
                arrayList.add(getBytes$okio().substring(i10, access$rootLength));
                i10 = access$rootLength + 1;
            }
            access$rootLength++;
        }
        if (i10 < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(i10, getBytes$okio().size()));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
        for (ByteString byteString : arrayList) {
            arrayList2.add(byteString.utf8());
        }
        return arrayList2;
    }

    @NotNull
    public final List<ByteString> getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int access$rootLength = okio.internal.Path.access$rootLength(this);
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < getBytes$okio().size() && getBytes$okio().getByte(access$rootLength) == 92) {
            access$rootLength++;
        }
        int size = getBytes$okio().size();
        int i10 = access$rootLength;
        while (access$rootLength < size) {
            if (getBytes$okio().getByte(access$rootLength) == 47 || getBytes$okio().getByte(access$rootLength) == 92) {
                arrayList.add(getBytes$okio().substring(i10, access$rootLength));
                i10 = access$rootLength + 1;
            }
            access$rootLength++;
        }
        if (i10 < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(i10, getBytes$okio().size()));
        }
        return arrayList;
    }

    public int hashCode() {
        return getBytes$okio().hashCode();
    }

    public final boolean isAbsolute() {
        if (okio.internal.Path.access$rootLength(this) != -1) {
            return true;
        }
        return false;
    }

    public final boolean isRelative() {
        if (okio.internal.Path.access$rootLength(this) == -1) {
            return true;
        }
        return false;
    }

    public final boolean isRoot() {
        if (okio.internal.Path.access$rootLength(this) == getBytes$okio().size()) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String name() {
        return nameBytes().utf8();
    }

    @NotNull
    public final ByteString nameBytes() {
        int access$getIndexOfLastSlash = okio.internal.Path.access$getIndexOfLastSlash(this);
        if (access$getIndexOfLastSlash != -1) {
            return ByteString.substring$default(getBytes$okio(), access$getIndexOfLastSlash + 1, 0, 2, null);
        }
        if (volumeLetter() != null && getBytes$okio().size() == 2) {
            return ByteString.EMPTY;
        }
        return getBytes$okio();
    }

    @NotNull
    public final Path normalized() {
        return Companion.get(toString(), true);
    }

    @Nullable
    public final Path parent() {
        Path path;
        if (Intrinsics.areEqual(getBytes$okio(), okio.internal.Path.access$getDOT$p()) || Intrinsics.areEqual(getBytes$okio(), okio.internal.Path.access$getSLASH$p()) || Intrinsics.areEqual(getBytes$okio(), okio.internal.Path.access$getBACKSLASH$p()) || okio.internal.Path.access$lastSegmentIsDotDot(this)) {
            return null;
        }
        int access$getIndexOfLastSlash = okio.internal.Path.access$getIndexOfLastSlash(this);
        if (access$getIndexOfLastSlash == 2 && volumeLetter() != null) {
            if (getBytes$okio().size() == 3) {
                return null;
            }
            path = new Path(ByteString.substring$default(getBytes$okio(), 0, 3, 1, null));
        } else if (access$getIndexOfLastSlash == 1 && getBytes$okio().startsWith(okio.internal.Path.access$getBACKSLASH$p())) {
            return null;
        } else {
            if (access$getIndexOfLastSlash == -1 && volumeLetter() != null) {
                if (getBytes$okio().size() == 2) {
                    return null;
                }
                path = new Path(ByteString.substring$default(getBytes$okio(), 0, 2, 1, null));
            } else if (access$getIndexOfLastSlash == -1) {
                return new Path(okio.internal.Path.access$getDOT$p());
            } else {
                if (access$getIndexOfLastSlash == 0) {
                    path = new Path(ByteString.substring$default(getBytes$okio(), 0, 1, 1, null));
                } else {
                    return new Path(ByteString.substring$default(getBytes$okio(), 0, access$getIndexOfLastSlash, 1, null));
                }
            }
        }
        return path;
    }

    @NotNull
    public final Path relativeTo(@NotNull Path other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (Intrinsics.areEqual(getRoot(), other.getRoot())) {
            List<ByteString> segmentsBytes = getSegmentsBytes();
            List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
            int min = Math.min(segmentsBytes.size(), segmentsBytes2.size());
            int i10 = 0;
            while (i10 < min && Intrinsics.areEqual(segmentsBytes.get(i10), segmentsBytes2.get(i10))) {
                i10++;
            }
            if (i10 == min && getBytes$okio().size() == other.getBytes$okio().size()) {
                return Companion.get$default(Companion, ".", false, 1, (Object) null);
            }
            if (segmentsBytes2.subList(i10, segmentsBytes2.size()).indexOf(okio.internal.Path.access$getDOT_DOT$p()) == -1) {
                Buffer buffer = new Buffer();
                ByteString access$getSlash = okio.internal.Path.access$getSlash(other);
                if (access$getSlash == null && (access$getSlash = okio.internal.Path.access$getSlash(this)) == null) {
                    access$getSlash = okio.internal.Path.access$toSlash(DIRECTORY_SEPARATOR);
                }
                int size = segmentsBytes2.size();
                for (int i11 = i10; i11 < size; i11++) {
                    buffer.write(okio.internal.Path.access$getDOT_DOT$p());
                    buffer.write(access$getSlash);
                }
                int size2 = segmentsBytes.size();
                while (i10 < size2) {
                    buffer.write(segmentsBytes.get(i10));
                    buffer.write(access$getSlash);
                    i10++;
                }
                return okio.internal.Path.toPath(buffer, false);
            }
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + other).toString());
        }
        throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + other).toString());
    }

    @NotNull
    public final Path resolve(@NotNull Path child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, child, false);
    }

    @NotNull
    public final File toFile() {
        return new File(toString());
    }

    @NotNull
    public final java.nio.file.Path toNioPath() {
        java.nio.file.Path path;
        path = Paths.get(toString(), new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        return path;
    }

    @NotNull
    public String toString() {
        return getBytes$okio().utf8();
    }

    @Nullable
    public final Character volumeLetter() {
        if (ByteString.indexOf$default(getBytes$okio(), okio.internal.Path.access$getSLASH$p(), 0, 2, (Object) null) != -1 || getBytes$okio().size() < 2 || getBytes$okio().getByte(1) != 58) {
            return null;
        }
        char c10 = (char) getBytes$okio().getByte(0);
        if (('a' > c10 || c10 >= '{') && ('A' > c10 || c10 >= '[')) {
            return null;
        }
        return Character.valueOf(c10);
    }

    @NotNull
    public static final Path get(@NotNull File file, boolean z10) {
        return Companion.get(file, z10);
    }

    public static /* synthetic */ Path resolve$default(Path path, ByteString byteString, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return path.resolve(byteString, z10);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull Path other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return getBytes$okio().compareTo(other.getBytes$okio());
    }

    @NotNull
    public final Path resolve(@NotNull Path child, boolean z10) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, child, z10);
    }

    @NotNull
    public static final Path get(@NotNull String str) {
        return Companion.get(str);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return path.resolve(path2, z10);
    }

    @NotNull
    public final Path resolve(@NotNull String child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().writeUtf8(child), false), false);
    }

    @NotNull
    public static final Path get(@NotNull String str, boolean z10) {
        return Companion.get(str, z10);
    }

    @NotNull
    public static final Path get(@NotNull java.nio.file.Path path) {
        return Companion.get(path);
    }

    @NotNull
    public final Path resolve(@NotNull ByteString child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().write(child), false), false);
    }

    @NotNull
    public static final Path get(@NotNull java.nio.file.Path path, boolean z10) {
        return Companion.get(path, z10);
    }

    @NotNull
    public final Path resolve(@NotNull String child, boolean z10) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().writeUtf8(child), false), z10);
    }

    @NotNull
    public final Path resolve(@NotNull ByteString child, boolean z10) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().write(child), false), z10);
    }
}
