package okio.internal;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Path.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,406:1\n59#1,22:407\n209#1:433\n209#1:434\n1549#2:429\n1620#2,3:430\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n53#1:407,22\n199#1:433\n204#1:434\n53#1:429\n53#1:430,3\n*E\n"})
/* renamed from: okio.internal.-Path */
/* loaded from: classes8.dex */
public final class Path {
    @NotNull
    private static final ByteString ANY_SLASH;
    @NotNull
    private static final ByteString BACKSLASH;
    @NotNull
    private static final ByteString DOT;
    @NotNull
    private static final ByteString DOT_DOT;
    @NotNull
    private static final ByteString SLASH;

    static {
        ByteString.Companion companion = ByteString.Companion;
        SLASH = companion.encodeUtf8(DomExceptionUtils.SEPARATOR);
        BACKSLASH = companion.encodeUtf8("\\");
        ANY_SLASH = companion.encodeUtf8("/\\");
        DOT = companion.encodeUtf8(".");
        DOT_DOT = companion.encodeUtf8("..");
    }

    public static final int commonCompareTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return path.getBytes$okio().compareTo(other.getBytes$okio());
    }

    public static final boolean commonEquals(@NotNull okio.Path path, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if ((obj instanceof okio.Path) && Intrinsics.areEqual(((okio.Path) obj).getBytes$okio(), path.getBytes$okio())) {
            return true;
        }
        return false;
    }

    public static final int commonHashCode(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getBytes$okio().hashCode();
    }

    public static final boolean commonIsAbsolute(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (rootLength(path) != -1) {
            return true;
        }
        return false;
    }

    public static final boolean commonIsRelative(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (rootLength(path) == -1) {
            return true;
        }
        return false;
    }

    public static final boolean commonIsRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (rootLength(path) == path.getBytes$okio().size()) {
            return true;
        }
        return false;
    }

    @NotNull
    public static final String commonName(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.nameBytes().utf8();
    }

    @NotNull
    public static final ByteString commonNameBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int indexOfLastSlash = getIndexOfLastSlash(path);
        if (indexOfLastSlash != -1) {
            return ByteString.substring$default(path.getBytes$okio(), indexOfLastSlash + 1, 0, 2, null);
        }
        if (path.volumeLetter() != null && path.getBytes$okio().size() == 2) {
            return ByteString.EMPTY;
        }
        return path.getBytes$okio();
    }

    @NotNull
    public static final okio.Path commonNormalized(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return okio.Path.Companion.get(path.toString(), true);
    }

    @Nullable
    public static final okio.Path commonParent(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (!Intrinsics.areEqual(path.getBytes$okio(), DOT) && !Intrinsics.areEqual(path.getBytes$okio(), SLASH) && !Intrinsics.areEqual(path.getBytes$okio(), BACKSLASH) && !lastSegmentIsDotDot(path)) {
            int indexOfLastSlash = getIndexOfLastSlash(path);
            if (indexOfLastSlash == 2 && path.volumeLetter() != null) {
                if (path.getBytes$okio().size() == 3) {
                    return null;
                }
                return new okio.Path(ByteString.substring$default(path.getBytes$okio(), 0, 3, 1, null));
            } else if (indexOfLastSlash == 1 && path.getBytes$okio().startsWith(BACKSLASH)) {
                return null;
            } else {
                if (indexOfLastSlash == -1 && path.volumeLetter() != null) {
                    if (path.getBytes$okio().size() == 2) {
                        return null;
                    }
                    return new okio.Path(ByteString.substring$default(path.getBytes$okio(), 0, 2, 1, null));
                } else if (indexOfLastSlash == -1) {
                    return new okio.Path(DOT);
                } else {
                    if (indexOfLastSlash == 0) {
                        return new okio.Path(ByteString.substring$default(path.getBytes$okio(), 0, 1, 1, null));
                    }
                    return new okio.Path(ByteString.substring$default(path.getBytes$okio(), 0, indexOfLastSlash, 1, null));
                }
            }
        }
        return null;
    }

    @NotNull
    public static final okio.Path commonRelativeTo(@NotNull okio.Path path, @NotNull okio.Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (Intrinsics.areEqual(path.getRoot(), other.getRoot())) {
            List<ByteString> segmentsBytes = path.getSegmentsBytes();
            List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
            int min = Math.min(segmentsBytes.size(), segmentsBytes2.size());
            int i10 = 0;
            while (i10 < min && Intrinsics.areEqual(segmentsBytes.get(i10), segmentsBytes2.get(i10))) {
                i10++;
            }
            if (i10 == min && path.getBytes$okio().size() == other.getBytes$okio().size()) {
                return Path.Companion.get$default(okio.Path.Companion, ".", false, 1, (Object) null);
            }
            if (segmentsBytes2.subList(i10, segmentsBytes2.size()).indexOf(DOT_DOT) == -1) {
                Buffer buffer = new Buffer();
                ByteString slash = getSlash(other);
                if (slash == null && (slash = getSlash(path)) == null) {
                    slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
                }
                int size = segmentsBytes2.size();
                for (int i11 = i10; i11 < size; i11++) {
                    buffer.write(DOT_DOT);
                    buffer.write(slash);
                }
                int size2 = segmentsBytes.size();
                while (i10 < size2) {
                    buffer.write(segmentsBytes.get(i10));
                    buffer.write(slash);
                    i10++;
                }
                return toPath(buffer, false);
            }
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + " and " + other).toString());
        }
        throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + " and " + other).toString());
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull String child, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z10);
    }

    @Nullable
    public static final okio.Path commonRoot(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int rootLength = rootLength(path);
        if (rootLength == -1) {
            return null;
        }
        return new okio.Path(path.getBytes$okio().substring(0, rootLength));
    }

    @NotNull
    public static final List<String> commonSegments(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList<ByteString> arrayList = new ArrayList();
        int rootLength = rootLength(path);
        if (rootLength == -1) {
            rootLength = 0;
        } else if (rootLength < path.getBytes$okio().size() && path.getBytes$okio().getByte(rootLength) == 92) {
            rootLength++;
        }
        int size = path.getBytes$okio().size();
        int i10 = rootLength;
        while (rootLength < size) {
            if (path.getBytes$okio().getByte(rootLength) == 47 || path.getBytes$okio().getByte(rootLength) == 92) {
                arrayList.add(path.getBytes$okio().substring(i10, rootLength));
                i10 = rootLength + 1;
            }
            rootLength++;
        }
        if (i10 < path.getBytes$okio().size()) {
            arrayList.add(path.getBytes$okio().substring(i10, path.getBytes$okio().size()));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
        for (ByteString byteString : arrayList) {
            arrayList2.add(byteString.utf8());
        }
        return arrayList2;
    }

    @NotNull
    public static final List<ByteString> commonSegmentsBytes(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int rootLength = rootLength(path);
        if (rootLength == -1) {
            rootLength = 0;
        } else if (rootLength < path.getBytes$okio().size() && path.getBytes$okio().getByte(rootLength) == 92) {
            rootLength++;
        }
        int size = path.getBytes$okio().size();
        int i10 = rootLength;
        while (rootLength < size) {
            if (path.getBytes$okio().getByte(rootLength) == 47 || path.getBytes$okio().getByte(rootLength) == 92) {
                arrayList.add(path.getBytes$okio().substring(i10, rootLength));
                i10 = rootLength + 1;
            }
            rootLength++;
        }
        if (i10 < path.getBytes$okio().size()) {
            arrayList.add(path.getBytes$okio().substring(i10, path.getBytes$okio().size()));
        }
        return arrayList;
    }

    @NotNull
    public static final okio.Path commonToPath(@NotNull String str, boolean z10) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z10);
    }

    @NotNull
    public static final String commonToString(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.getBytes$okio().utf8();
    }

    @Nullable
    public static final Character commonVolumeLetter(@NotNull okio.Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (ByteString.indexOf$default(path.getBytes$okio(), SLASH, 0, 2, (Object) null) != -1 || path.getBytes$okio().size() < 2 || path.getBytes$okio().getByte(1) != 58) {
            return null;
        }
        char c10 = (char) path.getBytes$okio().getByte(0);
        if (('a' > c10 || c10 >= '{') && ('A' > c10 || c10 >= '[')) {
            return null;
        }
        return Character.valueOf(c10);
    }

    public static final int getIndexOfLastSlash(okio.Path path) {
        int lastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes$okio(), SLASH, 0, 2, (Object) null);
        if (lastIndexOf$default != -1) {
            return lastIndexOf$default;
        }
        return ByteString.lastIndexOf$default(path.getBytes$okio(), BACKSLASH, 0, 2, (Object) null);
    }

    public static final ByteString getSlash(okio.Path path) {
        ByteString bytes$okio = path.getBytes$okio();
        ByteString byteString = SLASH;
        if (ByteString.indexOf$default(bytes$okio, byteString, 0, 2, (Object) null) == -1) {
            ByteString bytes$okio2 = path.getBytes$okio();
            ByteString byteString2 = BACKSLASH;
            if (ByteString.indexOf$default(bytes$okio2, byteString2, 0, 2, (Object) null) == -1) {
                return null;
            }
            return byteString2;
        }
        return byteString;
    }

    public static final boolean lastSegmentIsDotDot(okio.Path path) {
        if (!path.getBytes$okio().endsWith(DOT_DOT) || (path.getBytes$okio().size() != 2 && !path.getBytes$okio().rangeEquals(path.getBytes$okio().size() - 3, SLASH, 0, 1) && !path.getBytes$okio().rangeEquals(path.getBytes$okio().size() - 3, BACKSLASH, 0, 1))) {
            return false;
        }
        return true;
    }

    public static final int rootLength(okio.Path path) {
        if (path.getBytes$okio().size() == 0) {
            return -1;
        }
        if (path.getBytes$okio().getByte(0) == 47) {
            return 1;
        }
        if (path.getBytes$okio().getByte(0) == 92) {
            if (path.getBytes$okio().size() <= 2 || path.getBytes$okio().getByte(1) != 92) {
                return 1;
            }
            int indexOf = path.getBytes$okio().indexOf(BACKSLASH, 2);
            if (indexOf == -1) {
                return path.getBytes$okio().size();
            }
            return indexOf;
        }
        if (path.getBytes$okio().size() > 2 && path.getBytes$okio().getByte(1) == 58 && path.getBytes$okio().getByte(2) == 92) {
            char c10 = (char) path.getBytes$okio().getByte(0);
            if ('a' > c10 || c10 >= '{') {
                if ('A' <= c10 && c10 < '[') {
                    return 3;
                }
            } else {
                return 3;
            }
        }
        return -1;
    }

    private static final boolean startsWithVolumeLetterAndColon(Buffer buffer, ByteString byteString) {
        if (!Intrinsics.areEqual(byteString, BACKSLASH) || buffer.size() < 2 || buffer.getByte(1L) != 58) {
            return false;
        }
        char c10 = (char) buffer.getByte(0L);
        if (('a' > c10 || c10 >= '{') && ('A' > c10 || c10 >= '[')) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final okio.Path toPath(@NotNull Buffer buffer, boolean z10) {
        ByteString byteString;
        boolean z11;
        boolean z12;
        ByteString readByteString;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        ByteString byteString2 = null;
        int i10 = 0;
        while (true) {
            if (!buffer.rangeEquals(0L, SLASH)) {
                byteString = BACKSLASH;
                if (!buffer.rangeEquals(0L, byteString)) {
                    break;
                }
            }
            byte readByte = buffer.readByte();
            if (byteString2 == null) {
                byteString2 = toSlash(readByte);
            }
            i10++;
        }
        if (i10 >= 2 && Intrinsics.areEqual(byteString2, byteString)) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            Intrinsics.checkNotNull(byteString2);
            buffer2.write(byteString2);
            buffer2.write(byteString2);
        } else if (i10 > 0) {
            Intrinsics.checkNotNull(byteString2);
            buffer2.write(byteString2);
        } else {
            long indexOfElement = buffer.indexOfElement(ANY_SLASH);
            if (byteString2 == null) {
                if (indexOfElement == -1) {
                    byteString2 = toSlash(okio.Path.DIRECTORY_SEPARATOR);
                } else {
                    byteString2 = toSlash(buffer.getByte(indexOfElement));
                }
            }
            if (startsWithVolumeLetterAndColon(buffer, byteString2)) {
                if (indexOfElement == 2) {
                    buffer2.write(buffer, 3L);
                } else {
                    buffer2.write(buffer, 2L);
                }
            }
        }
        if (buffer2.size() > 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        ArrayList arrayList = new ArrayList();
        while (!buffer.exhausted()) {
            long indexOfElement2 = buffer.indexOfElement(ANY_SLASH);
            if (indexOfElement2 == -1) {
                readByteString = buffer.readByteString();
            } else {
                readByteString = buffer.readByteString(indexOfElement2);
                buffer.readByte();
            }
            ByteString byteString3 = DOT_DOT;
            if (Intrinsics.areEqual(readByteString, byteString3)) {
                if (!z12 || !arrayList.isEmpty()) {
                    if (z10 && (z12 || (!arrayList.isEmpty() && !Intrinsics.areEqual(CollectionsKt.C0(arrayList), byteString3)))) {
                        if (!z11 || arrayList.size() != 1) {
                            CollectionsKt.S(arrayList);
                        }
                    } else {
                        arrayList.add(readByteString);
                    }
                }
            } else if (!Intrinsics.areEqual(readByteString, DOT) && !Intrinsics.areEqual(readByteString, ByteString.EMPTY)) {
                arrayList.add(readByteString);
            }
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (i11 > 0) {
                buffer2.write(byteString2);
            }
            buffer2.write((ByteString) arrayList.get(i11));
        }
        if (buffer2.size() == 0) {
            buffer2.write(DOT);
        }
        return new okio.Path(buffer2.readByteString());
    }

    public static final ByteString toSlash(String str) {
        if (Intrinsics.areEqual(str, DomExceptionUtils.SEPARATOR)) {
            return SLASH;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException("not a directory separator: " + str);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull ByteString child, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().write(child), false), z10);
    }

    private static final ByteString toSlash(byte b10) {
        if (b10 != 47) {
            if (b10 == 92) {
                return BACKSLASH;
            }
            throw new IllegalArgumentException("not a directory separator: " + ((int) b10));
        }
        return SLASH;
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull Buffer child, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(child, false), z10);
    }

    @NotNull
    public static final okio.Path commonResolve(@NotNull okio.Path path, @NotNull okio.Path child, boolean z10) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString slash = getSlash(path);
        if (slash == null && (slash = getSlash(child)) == null) {
            slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes$okio());
        if (buffer.size() > 0) {
            buffer.write(slash);
        }
        buffer.write(child.getBytes$okio());
        return toPath(buffer, z10);
    }

    private static /* synthetic */ void getANY_SLASH$annotations() {
    }

    private static /* synthetic */ void getBACKSLASH$annotations() {
    }

    private static /* synthetic */ void getDOT$annotations() {
    }

    private static /* synthetic */ void getDOT_DOT$annotations() {
    }

    private static /* synthetic */ void getSLASH$annotations() {
    }
}
