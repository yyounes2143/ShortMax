package okio.internal;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.shadow.okhttp3.internal.ws.WebSocketProtocol;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import ms.k;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import org.jetbrains.annotations.NotNull;
import ps.a;
import ws.b;
/* compiled from: ZipFiles.kt */
@Metadata
@SourceDebugExtension({"SMAP\nZipFiles.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,459:1\n1045#2:460\n*S KotlinDebug\n*F\n+ 1 ZipFiles.kt\nokio/internal/ZipFilesKt\n*L\n156#1:460\n*E\n"})
/* loaded from: classes8.dex */
public final class ZipFilesKt {
    private static final int BIT_FLAG_ENCRYPTED = 1;
    private static final int BIT_FLAG_UNSUPPORTED_MASK = 1;
    private static final int CENTRAL_FILE_HEADER_SIGNATURE = 33639248;
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;
    private static final int END_OF_CENTRAL_DIRECTORY_SIGNATURE = 101010256;
    private static final int HEADER_ID_EXTENDED_TIMESTAMP = 21589;
    private static final int HEADER_ID_ZIP64_EXTENDED_INFO = 1;
    private static final int LOCAL_FILE_HEADER_SIGNATURE = 67324752;
    private static final long MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE = 4294967295L;
    private static final int ZIP64_EOCD_RECORD_SIGNATURE = 101075792;
    private static final int ZIP64_LOCATOR_SIGNATURE = 117853008;

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        Path path = Path.Companion.get$default(Path.Companion, DomExceptionUtils.SEPARATOR, false, 1, (Object) null);
        Map<Path, ZipEntry> o10 = p0.o(k.a(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null)));
        for (ZipEntry zipEntry : CollectionsKt.U0(list, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                return a.a(((ZipEntry) t10).getCanonicalPath(), ((ZipEntry) t11).getCanonicalPath());
            }
        })) {
            if (o10.put(zipEntry.getCanonicalPath(), zipEntry) == null) {
                while (true) {
                    Path parent = zipEntry.getCanonicalPath().parent();
                    if (parent != null) {
                        ZipEntry zipEntry2 = o10.get(parent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(parent, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                        o10.put(parent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return o10;
    }

    private static final Long dosDateTimeToEpochMillis(int i10, int i11) {
        if (i11 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i10 >> 9) & 127) + 1980, ((i10 >> 5) & 15) - 1, i10 & 31, (i11 >> 11) & 31, (i11 >> 5) & 63, (i11 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final String getHex(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("0x");
        String num = Integer.toString(i10, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num, "toString(this, checkRadix(radix))");
        sb2.append(num);
        return sb2.toString();
    }

    @NotNull
    public static final ZipFileSystem openZip(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Function1<? super ZipEntry, Boolean> predicate) throws IOException {
        int readIntLe;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FileHandle openReadOnly = fileSystem.openReadOnly(zipPath);
        try {
            long size = openReadOnly.size() - 22;
            if (size >= 0) {
                long max = Math.max(size - 65536, 0L);
                while (true) {
                    BufferedSource buffer = Okio.buffer(openReadOnly.source(size));
                    if (buffer.readIntLe() == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                        EocdRecord readEocdRecord = readEocdRecord(buffer);
                        String readUtf8 = buffer.readUtf8(readEocdRecord.getCommentByteCount());
                        buffer.close();
                        long j10 = size - 20;
                        if (j10 > 0) {
                            BufferedSource buffer2 = Okio.buffer(openReadOnly.source(j10));
                            if (buffer2.readIntLe() == ZIP64_LOCATOR_SIGNATURE) {
                                int readIntLe2 = buffer2.readIntLe();
                                long readLongLe = buffer2.readLongLe();
                                if (buffer2.readIntLe() == 1 && readIntLe2 == 0) {
                                    BufferedSource buffer3 = Okio.buffer(openReadOnly.source(readLongLe));
                                    if (buffer3.readIntLe() == ZIP64_EOCD_RECORD_SIGNATURE) {
                                        readEocdRecord = readZip64EocdRecord(buffer3, readEocdRecord);
                                        Unit unit = Unit.f60915a;
                                        b.a(buffer3, null);
                                    } else {
                                        throw new IOException("bad zip: expected " + getHex(ZIP64_EOCD_RECORD_SIGNATURE) + " but was " + getHex(readIntLe));
                                    }
                                } else {
                                    throw new IOException("unsupported zip: spanned");
                                }
                            }
                            Unit unit2 = Unit.f60915a;
                            b.a(buffer2, null);
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource buffer4 = Okio.buffer(openReadOnly.source(readEocdRecord.getCentralDirectoryOffset()));
                        long entryCount = readEocdRecord.getEntryCount();
                        for (long j11 = 0; j11 < entryCount; j11++) {
                            ZipEntry readEntry = readEntry(buffer4);
                            if (readEntry.getOffset() < readEocdRecord.getCentralDirectoryOffset()) {
                                if (predicate.invoke(readEntry).booleanValue()) {
                                    arrayList.add(readEntry);
                                }
                            } else {
                                throw new IOException("bad zip: local file header offset >= central directory offset");
                            }
                        }
                        Unit unit3 = Unit.f60915a;
                        b.a(buffer4, null);
                        ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, buildIndex(arrayList), readUtf8);
                        b.a(openReadOnly, null);
                        return zipFileSystem;
                    }
                    buffer.close();
                    size--;
                    if (size < max) {
                        throw new IOException("not a zip: end of central directory signature not found");
                    }
                }
            } else {
                throw new IOException("not a zip: size=" + openReadOnly.size());
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                b.a(openReadOnly, th2);
                throw th3;
            }
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i10, Object obj) throws IOException {
        if ((i10 & 4) != 0) {
            function1 = new Function1<ZipEntry, Boolean>() { // from class: okio.internal.ZipFilesKt$openZip$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull ZipEntry it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.TRUE;
                }
            };
        }
        return openZip(path, fileSystem, function1);
    }

    @NotNull
    public static final ZipEntry readEntry(@NotNull final BufferedSource bufferedSource) throws IOException {
        int readIntLe;
        long j10;
        long j11;
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        if (bufferedSource.readIntLe() == CENTRAL_FILE_HEADER_SIGNATURE) {
            bufferedSource.skip(4L);
            short readShortLe = bufferedSource.readShortLe();
            int i10 = readShortLe & 65535;
            if ((readShortLe & 1) == 0) {
                int readShortLe2 = bufferedSource.readShortLe() & 65535;
                Long dosDateTimeToEpochMillis = dosDateTimeToEpochMillis(bufferedSource.readShortLe() & 65535, bufferedSource.readShortLe() & 65535);
                long readIntLe2 = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                final Ref.LongRef longRef = new Ref.LongRef();
                longRef.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                final Ref.LongRef longRef2 = new Ref.LongRef();
                longRef2.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                int readShortLe3 = bufferedSource.readShortLe() & 65535;
                int readShortLe4 = bufferedSource.readShortLe() & 65535;
                bufferedSource.skip(8L);
                final Ref.LongRef longRef3 = new Ref.LongRef();
                longRef3.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                String readUtf8 = bufferedSource.readUtf8(bufferedSource.readShortLe() & 65535);
                if (!StringsKt.a0(readUtf8, (char) 0, false, 2, null)) {
                    if (longRef2.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j10 = 8;
                    } else {
                        j10 = 0;
                    }
                    if (longRef.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j11 = j10 + 8;
                    } else {
                        j11 = j10;
                    }
                    if (longRef3.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j11 += 8;
                    }
                    final long j12 = j11;
                    final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                    readExtra(bufferedSource, readShortLe3, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt$readEntry$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l10) {
                            invoke(num.intValue(), l10.longValue());
                            return Unit.f60915a;
                        }

                        public final void invoke(int i11, long j13) {
                            if (i11 == 1) {
                                Ref.BooleanRef booleanRef2 = Ref.BooleanRef.this;
                                if (!booleanRef2.element) {
                                    booleanRef2.element = true;
                                    if (j13 >= j12) {
                                        Ref.LongRef longRef4 = longRef2;
                                        long j14 = longRef4.element;
                                        if (j14 == 4294967295L) {
                                            j14 = bufferedSource.readLongLe();
                                        }
                                        longRef4.element = j14;
                                        Ref.LongRef longRef5 = longRef;
                                        longRef5.element = longRef5.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
                                        Ref.LongRef longRef6 = longRef3;
                                        longRef6.element = longRef6.element == 4294967295L ? bufferedSource.readLongLe() : 0L;
                                        return;
                                    }
                                    throw new IOException("bad zip: zip64 extra too short");
                                }
                                throw new IOException("bad zip: zip64 extra repeated");
                            }
                        }
                    });
                    if (j12 > 0 && !booleanRef.element) {
                        throw new IOException("bad zip: zip64 extra required but absent");
                    }
                    return new ZipEntry(Path.Companion.get$default(Path.Companion, DomExceptionUtils.SEPARATOR, false, 1, (Object) null).resolve(readUtf8), StringsKt.F(readUtf8, DomExceptionUtils.SEPARATOR, false, 2, null), bufferedSource.readUtf8(readShortLe4), readIntLe2, longRef.element, longRef2.element, readShortLe2, dosDateTimeToEpochMillis, longRef3.element);
                }
                throw new IOException("bad zip: filename contains 0x00");
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i10));
        }
        throw new IOException("bad zip: expected " + getHex(CENTRAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe));
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int readShortLe = bufferedSource.readShortLe() & 65535;
        int readShortLe2 = bufferedSource.readShortLe() & 65535;
        long readShortLe3 = bufferedSource.readShortLe() & 65535;
        if (readShortLe3 == (bufferedSource.readShortLe() & 65535) && readShortLe == 0 && readShortLe2 == 0) {
            bufferedSource.skip(4L);
            return new EocdRecord(readShortLe3, MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE & bufferedSource.readIntLe(), bufferedSource.readShortLe() & 65535);
        }
        throw new IOException("unsupported zip: spanned");
    }

    private static final void readExtra(BufferedSource bufferedSource, int i10, Function2<? super Integer, ? super Long, Unit> function2) {
        long j10 = i10;
        while (j10 != 0) {
            if (j10 >= 4) {
                int readShortLe = bufferedSource.readShortLe() & 65535;
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                long j11 = j10 - 4;
                if (j11 >= readShortLe2) {
                    bufferedSource.require(readShortLe2);
                    long size = bufferedSource.getBuffer().size();
                    function2.invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
                    long size2 = (bufferedSource.getBuffer().size() + readShortLe2) - size;
                    int i11 = (size2 > 0L ? 1 : (size2 == 0L ? 0 : -1));
                    if (i11 >= 0) {
                        if (i11 > 0) {
                            bufferedSource.getBuffer().skip(size2);
                        }
                        j10 = j11 - readShortLe2;
                    } else {
                        throw new IOException("unsupported zip: too many bytes processed for " + readShortLe);
                    }
                } else {
                    throw new IOException("bad zip: truncated value in extra field");
                }
            } else {
                throw new IOException("bad zip: truncated header in extra field");
            }
        }
    }

    @NotNull
    public static final FileMetadata readLocalHeader(@NotNull BufferedSource bufferedSource, @NotNull FileMetadata basicMetadata) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(basicMetadata, "basicMetadata");
        FileMetadata readOrSkipLocalHeader = readOrSkipLocalHeader(bufferedSource, basicMetadata);
        Intrinsics.checkNotNull(readOrSkipLocalHeader);
        return readOrSkipLocalHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final FileMetadata readOrSkipLocalHeader(final BufferedSource bufferedSource, FileMetadata fileMetadata) {
        T t10;
        int readIntLe;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (fileMetadata != null) {
            t10 = fileMetadata.getLastModifiedAtMillis();
        } else {
            t10 = 0;
        }
        objectRef.element = t10;
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        if (bufferedSource.readIntLe() == LOCAL_FILE_HEADER_SIGNATURE) {
            bufferedSource.skip(2L);
            short readShortLe = bufferedSource.readShortLe();
            int i10 = readShortLe & 65535;
            if ((readShortLe & 1) == 0) {
                bufferedSource.skip(18L);
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                int readShortLe3 = bufferedSource.readShortLe() & 65535;
                bufferedSource.skip(readShortLe2);
                if (fileMetadata == null) {
                    bufferedSource.skip(readShortLe3);
                    return null;
                }
                readExtra(bufferedSource, readShortLe3, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt$readOrSkipLocalHeader$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l10) {
                        invoke(num.intValue(), l10.longValue());
                        return Unit.f60915a;
                    }

                    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Long] */
                    /* JADX WARN: Type inference failed for: r10v11, types: [T, java.lang.Long] */
                    /* JADX WARN: Type inference failed for: r11v3, types: [T, java.lang.Long] */
                    public final void invoke(int i11, long j10) {
                        if (i11 == 21589) {
                            if (j10 >= 1) {
                                byte readByte = BufferedSource.this.readByte();
                                boolean z10 = (readByte & 1) == 1;
                                boolean z11 = (readByte & 2) == 2;
                                boolean z12 = (readByte & 4) == 4;
                                BufferedSource bufferedSource2 = BufferedSource.this;
                                long j11 = z10 ? 5L : 1L;
                                if (z11) {
                                    j11 += 4;
                                }
                                if (z12) {
                                    j11 += 4;
                                }
                                if (j10 < j11) {
                                    throw new IOException("bad zip: extended timestamp extra too short");
                                }
                                if (z10) {
                                    objectRef.element = Long.valueOf(bufferedSource2.readIntLe() * 1000);
                                }
                                if (z11) {
                                    objectRef2.element = Long.valueOf(BufferedSource.this.readIntLe() * 1000);
                                }
                                if (z12) {
                                    objectRef3.element = Long.valueOf(BufferedSource.this.readIntLe() * 1000);
                                    return;
                                }
                                return;
                            }
                            throw new IOException("bad zip: extended timestamp extra too short");
                        }
                    }
                });
                return new FileMetadata(fileMetadata.isRegularFile(), fileMetadata.isDirectory(), null, fileMetadata.getSize(), (Long) objectRef3.element, (Long) objectRef.element, (Long) objectRef2.element, null, 128, null);
            }
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i10));
        }
        throw new IOException("bad zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe));
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int readIntLe = bufferedSource.readIntLe();
        int readIntLe2 = bufferedSource.readIntLe();
        long readLongLe = bufferedSource.readLongLe();
        if (readLongLe == bufferedSource.readLongLe() && readIntLe == 0 && readIntLe2 == 0) {
            bufferedSource.skip(8L);
            return new EocdRecord(readLongLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
        }
        throw new IOException("unsupported zip: spanned");
    }

    public static final void skipLocalHeader(@NotNull BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        readOrSkipLocalHeader(bufferedSource, null);
    }
}
