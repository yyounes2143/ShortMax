package com.applovin.shadow.okhttp3.internal.cache;

import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okhttp3.internal.cache.DiskLruCache;
import com.applovin.shadow.okhttp3.internal.concurrent.Task;
import com.applovin.shadow.okhttp3.internal.concurrent.TaskQueue;
import com.applovin.shadow.okhttp3.internal.concurrent.TaskRunner;
import com.applovin.shadow.okhttp3.internal.io.FileSystem;
import com.applovin.shadow.okhttp3.internal.platform.Platform;
import com.applovin.shadow.okio.BufferedSink;
import com.applovin.shadow.okio.BufferedSource;
import com.applovin.shadow.okio.ForwardingSource;
import com.applovin.shadow.okio.Okio;
import com.applovin.shadow.okio.Sink;
import com.applovin.shadow.okio.Source;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ws.b;
/* compiled from: DiskLruCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1065:1\n1#2:1066\n608#3,4:1067\n37#4,2:1071\n37#4,2:1073\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n*L\n215#1:1067,4\n672#1:1071,2\n721#1:1073,2\n*E\n"})
/* loaded from: classes2.dex */
public final class DiskLruCache implements Closeable, Flushable {
    private final int appVersion;
    private boolean civilizedFileSystem;
    @NotNull
    private final TaskQueue cleanupQueue;
    @NotNull
    private final DiskLruCache$cleanupTask$1 cleanupTask;
    private boolean closed;
    @NotNull
    private final File directory;
    @NotNull
    private final FileSystem fileSystem;
    private boolean hasJournalErrors;
    private boolean initialized;
    @NotNull
    private final File journalFile;
    @NotNull
    private final File journalFileBackup;
    @NotNull
    private final File journalFileTmp;
    @Nullable
    private BufferedSink journalWriter;
    @NotNull
    private final LinkedHashMap<String, Entry> lruEntries;
    private long maxSize;
    private boolean mostRecentRebuildFailed;
    private boolean mostRecentTrimFailed;
    private long nextSequenceNumber;
    private int redundantOpCount;
    private long size;
    private final int valueCount;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String JOURNAL_FILE = "journal";
    @NotNull
    public static final String JOURNAL_FILE_TEMP = "journal.tmp";
    @NotNull
    public static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    @NotNull
    public static final String MAGIC = "libcore.io.DiskLruCache";
    @NotNull
    public static final String VERSION_1 = "1";
    public static final long ANY_SEQUENCE_NUMBER = -1;
    @NotNull
    public static final Regex LEGAL_KEY_PATTERN = new Regex("[a-z0-9_-]{1,120}");
    @NotNull
    public static final String CLEAN = "CLEAN";
    @NotNull
    public static final String DIRTY = "DIRTY";
    @NotNull
    public static final String REMOVE = "REMOVE";
    @NotNull
    public static final String READ = "READ";

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class Editor {
        private boolean done;
        @NotNull
        private final Entry entry;
        final /* synthetic */ DiskLruCache this$0;
        @Nullable
        private final boolean[] written;

        public Editor(@NotNull DiskLruCache diskLruCache, Entry entry) {
            boolean[] zArr;
            Intrinsics.checkNotNullParameter(entry, "entry");
            this.this$0 = diskLruCache;
            this.entry = entry;
            if (entry.getReadable$okhttp()) {
                zArr = null;
            } else {
                zArr = new boolean[diskLruCache.getValueCount$okhttp()];
            }
            this.written = zArr;
        }

        public final void abort() throws IOException {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                try {
                    if (!this.done) {
                        if (Intrinsics.areEqual(this.entry.getCurrentEditor$okhttp(), this)) {
                            diskLruCache.completeEdit$okhttp(this, false);
                        }
                        this.done = true;
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void commit() throws IOException {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                try {
                    if (!this.done) {
                        if (Intrinsics.areEqual(this.entry.getCurrentEditor$okhttp(), this)) {
                            diskLruCache.completeEdit$okhttp(this, true);
                        }
                        this.done = true;
                        Unit unit = Unit.f60915a;
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public final void detach$okhttp() {
            if (Intrinsics.areEqual(this.entry.getCurrentEditor$okhttp(), this)) {
                if (this.this$0.civilizedFileSystem) {
                    this.this$0.completeEdit$okhttp(this, false);
                } else {
                    this.entry.setZombie$okhttp(true);
                }
            }
        }

        @NotNull
        public final Entry getEntry$okhttp() {
            return this.entry;
        }

        @Nullable
        public final boolean[] getWritten$okhttp() {
            return this.written;
        }

        @NotNull
        public final Sink newSink(int i10) {
            final DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!this.done) {
                    if (!Intrinsics.areEqual(this.entry.getCurrentEditor$okhttp(), this)) {
                        return Okio.blackhole();
                    }
                    if (!this.entry.getReadable$okhttp()) {
                        boolean[] zArr = this.written;
                        Intrinsics.checkNotNull(zArr);
                        zArr[i10] = true;
                    }
                    try {
                        return new FaultHidingSink(diskLruCache.getFileSystem$okhttp().sink(this.entry.getDirtyFiles$okhttp().get(i10)), new Function1<IOException, Unit>() { // from class: com.applovin.shadow.okhttp3.internal.cache.DiskLruCache$Editor$newSink$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(IOException iOException) {
                                invoke2(iOException);
                                return Unit.f60915a;
                            }

                            /* renamed from: invoke  reason: avoid collision after fix types in other method */
                            public final void invoke2(@NotNull IOException it) {
                                Intrinsics.checkNotNullParameter(it, "it");
                                DiskLruCache diskLruCache2 = DiskLruCache.this;
                                DiskLruCache.Editor editor = this;
                                synchronized (diskLruCache2) {
                                    editor.detach$okhttp();
                                    Unit unit = Unit.f60915a;
                                }
                            }
                        });
                    } catch (FileNotFoundException unused) {
                        return Okio.blackhole();
                    }
                }
                throw new IllegalStateException("Check failed.");
            }
        }

        @Nullable
        public final Source newSource(int i10) {
            DiskLruCache diskLruCache = this.this$0;
            synchronized (diskLruCache) {
                if (!this.done) {
                    Source source = null;
                    if (!this.entry.getReadable$okhttp() || !Intrinsics.areEqual(this.entry.getCurrentEditor$okhttp(), this) || this.entry.getZombie$okhttp()) {
                        return null;
                    }
                    try {
                        source = diskLruCache.getFileSystem$okhttp().source(this.entry.getCleanFiles$okhttp().get(i10));
                    } catch (FileNotFoundException unused) {
                    }
                    return source;
                }
                throw new IllegalStateException("Check failed.");
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,1065:1\n608#2,4:1066\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache$Entry\n*L\n1001#1:1066,4\n*E\n"})
    /* loaded from: classes2.dex */
    public final class Entry {
        @NotNull
        private final List<File> cleanFiles;
        @Nullable
        private Editor currentEditor;
        @NotNull
        private final List<File> dirtyFiles;
        @NotNull
        private final String key;
        @NotNull
        private final long[] lengths;
        private int lockingSourceCount;
        private boolean readable;
        private long sequenceNumber;
        final /* synthetic */ DiskLruCache this$0;
        private boolean zombie;

        public Entry(@NotNull DiskLruCache diskLruCache, String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.this$0 = diskLruCache;
            this.key = key;
            this.lengths = new long[diskLruCache.getValueCount$okhttp()];
            this.cleanFiles = new ArrayList();
            this.dirtyFiles = new ArrayList();
            StringBuilder sb2 = new StringBuilder(key);
            sb2.append('.');
            int length = sb2.length();
            int valueCount$okhttp = diskLruCache.getValueCount$okhttp();
            for (int i10 = 0; i10 < valueCount$okhttp; i10++) {
                sb2.append(i10);
                this.cleanFiles.add(new File(this.this$0.getDirectory(), sb2.toString()));
                sb2.append(".tmp");
                this.dirtyFiles.add(new File(this.this$0.getDirectory(), sb2.toString()));
                sb2.setLength(length);
            }
        }

        private final Void invalidLengths(List<String> list) throws IOException {
            throw new IOException("unexpected journal line: " + list);
        }

        private final Source newSource(int i10) {
            final Source source = this.this$0.getFileSystem$okhttp().source(this.cleanFiles.get(i10));
            if (this.this$0.civilizedFileSystem) {
                return source;
            }
            this.lockingSourceCount++;
            final DiskLruCache diskLruCache = this.this$0;
            return new ForwardingSource(source) { // from class: com.applovin.shadow.okhttp3.internal.cache.DiskLruCache$Entry$newSource$1
                private boolean closed;

                @Override // com.applovin.shadow.okio.ForwardingSource, com.applovin.shadow.okio.Source, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    super.close();
                    if (!this.closed) {
                        this.closed = true;
                        DiskLruCache diskLruCache2 = diskLruCache;
                        DiskLruCache.Entry entry = this;
                        synchronized (diskLruCache2) {
                            try {
                                entry.setLockingSourceCount$okhttp(entry.getLockingSourceCount$okhttp() - 1);
                                if (entry.getLockingSourceCount$okhttp() == 0 && entry.getZombie$okhttp()) {
                                    diskLruCache2.removeEntry$okhttp(entry);
                                }
                                Unit unit = Unit.f60915a;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                }
            };
        }

        @NotNull
        public final List<File> getCleanFiles$okhttp() {
            return this.cleanFiles;
        }

        @Nullable
        public final Editor getCurrentEditor$okhttp() {
            return this.currentEditor;
        }

        @NotNull
        public final List<File> getDirtyFiles$okhttp() {
            return this.dirtyFiles;
        }

        @NotNull
        public final String getKey$okhttp() {
            return this.key;
        }

        @NotNull
        public final long[] getLengths$okhttp() {
            return this.lengths;
        }

        public final int getLockingSourceCount$okhttp() {
            return this.lockingSourceCount;
        }

        public final boolean getReadable$okhttp() {
            return this.readable;
        }

        public final long getSequenceNumber$okhttp() {
            return this.sequenceNumber;
        }

        public final boolean getZombie$okhttp() {
            return this.zombie;
        }

        public final void setCurrentEditor$okhttp(@Nullable Editor editor) {
            this.currentEditor = editor;
        }

        public final void setLengths$okhttp(@NotNull List<String> strings) throws IOException {
            Intrinsics.checkNotNullParameter(strings, "strings");
            if (strings.size() == this.this$0.getValueCount$okhttp()) {
                try {
                    int size = strings.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        this.lengths[i10] = Long.parseLong(strings.get(i10));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    invalidLengths(strings);
                    throw new KotlinNothingValueException();
                }
            }
            invalidLengths(strings);
            throw new KotlinNothingValueException();
        }

        public final void setLockingSourceCount$okhttp(int i10) {
            this.lockingSourceCount = i10;
        }

        public final void setReadable$okhttp(boolean z10) {
            this.readable = z10;
        }

        public final void setSequenceNumber$okhttp(long j10) {
            this.sequenceNumber = j10;
        }

        public final void setZombie$okhttp(boolean z10) {
            this.zombie = z10;
        }

        @Nullable
        public final Snapshot snapshot$okhttp() {
            DiskLruCache diskLruCache = this.this$0;
            if (Util.assertionsEnabled && !Thread.holdsLock(diskLruCache)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + diskLruCache);
            } else if (!this.readable) {
                return null;
            } else {
                if (!this.this$0.civilizedFileSystem && (this.currentEditor != null || this.zombie)) {
                    return null;
                }
                ArrayList<Source> arrayList = new ArrayList();
                long[] jArr = (long[]) this.lengths.clone();
                try {
                    int valueCount$okhttp = this.this$0.getValueCount$okhttp();
                    for (int i10 = 0; i10 < valueCount$okhttp; i10++) {
                        arrayList.add(newSource(i10));
                    }
                    return new Snapshot(this.this$0, this.key, this.sequenceNumber, arrayList, jArr);
                } catch (FileNotFoundException unused) {
                    for (Source source : arrayList) {
                        Util.closeQuietly(source);
                    }
                    try {
                        this.this$0.removeEntry$okhttp(this);
                    } catch (IOException unused2) {
                    }
                    return null;
                }
            }
        }

        public final void writeLengths$okhttp(@NotNull BufferedSink writer) throws IOException {
            Intrinsics.checkNotNullParameter(writer, "writer");
            for (long j10 : this.lengths) {
                writer.writeByte(32).writeDecimalLong(j10);
            }
        }
    }

    /* compiled from: DiskLruCache.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public final class Snapshot implements Closeable {
        @NotNull
        private final String key;
        @NotNull
        private final long[] lengths;
        private final long sequenceNumber;
        @NotNull
        private final List<Source> sources;
        final /* synthetic */ DiskLruCache this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public Snapshot(@NotNull DiskLruCache diskLruCache, String key, @NotNull long j10, @NotNull List<? extends Source> sources, long[] lengths) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(sources, "sources");
            Intrinsics.checkNotNullParameter(lengths, "lengths");
            this.this$0 = diskLruCache;
            this.key = key;
            this.sequenceNumber = j10;
            this.sources = sources;
            this.lengths = lengths;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.sources) {
                Util.closeQuietly(source);
            }
        }

        @Nullable
        public final Editor edit() throws IOException {
            return this.this$0.edit(this.key, this.sequenceNumber);
        }

        public final long getLength(int i10) {
            return this.lengths[i10];
        }

        @NotNull
        public final Source getSource(int i10) {
            return this.sources.get(i10);
        }

        @NotNull
        public final String key() {
            return this.key;
        }
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [com.applovin.shadow.okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(@NotNull FileSystem fileSystem, @NotNull File directory, int i10, int i11, long j10, @NotNull TaskRunner taskRunner) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        this.fileSystem = fileSystem;
        this.directory = directory;
        this.appVersion = i10;
        this.valueCount = i11;
        this.maxSize = j10;
        this.lruEntries = new LinkedHashMap<>(0, 0.75f, true);
        this.cleanupQueue = taskRunner.newQueue();
        final String str = Util.okHttpName + " Cache";
        this.cleanupTask = new Task(str) { // from class: com.applovin.shadow.okhttp3.internal.cache.DiskLruCache$cleanupTask$1
            @Override // com.applovin.shadow.okhttp3.internal.concurrent.Task
            public long runOnce() {
                boolean z10;
                boolean journalRebuildRequired;
                DiskLruCache diskLruCache = DiskLruCache.this;
                synchronized (diskLruCache) {
                    z10 = diskLruCache.initialized;
                    if (!z10 || diskLruCache.getClosed$okhttp()) {
                        return -1L;
                    }
                    try {
                        diskLruCache.trimToSize();
                    } catch (IOException unused) {
                        diskLruCache.mostRecentTrimFailed = true;
                    }
                    try {
                        journalRebuildRequired = diskLruCache.journalRebuildRequired();
                        if (journalRebuildRequired) {
                            diskLruCache.rebuildJournal$okhttp();
                            diskLruCache.redundantOpCount = 0;
                        }
                    } catch (IOException unused2) {
                        diskLruCache.mostRecentRebuildFailed = true;
                        diskLruCache.journalWriter = Okio.buffer(Okio.blackhole());
                    }
                    return -1L;
                }
            }
        };
        if (j10 > 0) {
            if (i11 > 0) {
                this.journalFile = new File(directory, JOURNAL_FILE);
                this.journalFileTmp = new File(directory, JOURNAL_FILE_TEMP);
                this.journalFileBackup = new File(directory, JOURNAL_FILE_BACKUP);
                return;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private final synchronized void checkNotClosed() {
        if (this.closed) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public static /* synthetic */ Editor edit$default(DiskLruCache diskLruCache, String str, long j10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j10 = ANY_SEQUENCE_NUMBER;
        }
        return diskLruCache.edit(str, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean journalRebuildRequired() {
        int i10 = this.redundantOpCount;
        if (i10 >= 2000 && i10 >= this.lruEntries.size()) {
            return true;
        }
        return false;
    }

    private final BufferedSink newJournalWriter() throws FileNotFoundException {
        return Okio.buffer(new FaultHidingSink(this.fileSystem.appendingSink(this.journalFile), new Function1<IOException, Unit>() { // from class: com.applovin.shadow.okhttp3.internal.cache.DiskLruCache$newJournalWriter$faultHidingSink$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IOException iOException) {
                invoke2(iOException);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull IOException it) {
                Intrinsics.checkNotNullParameter(it, "it");
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (!Util.assertionsEnabled || Thread.holdsLock(diskLruCache)) {
                    DiskLruCache.this.hasJournalErrors = true;
                    return;
                }
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + diskLruCache);
            }
        }));
    }

    private final void processJournal() throws IOException {
        this.fileSystem.delete(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "i.next()");
            Entry entry = next;
            int i10 = 0;
            if (entry.getCurrentEditor$okhttp() == null) {
                int i11 = this.valueCount;
                while (i10 < i11) {
                    this.size += entry.getLengths$okhttp()[i10];
                    i10++;
                }
            } else {
                entry.setCurrentEditor$okhttp(null);
                int i12 = this.valueCount;
                while (i10 < i12) {
                    this.fileSystem.delete(entry.getCleanFiles$okhttp().get(i10));
                    this.fileSystem.delete(entry.getDirtyFiles$okhttp().get(i10));
                    i10++;
                }
                it.remove();
            }
        }
    }

    private final void readJournal() throws IOException {
        BufferedSource buffer = Okio.buffer(this.fileSystem.source(this.journalFile));
        try {
            String readUtf8LineStrict = buffer.readUtf8LineStrict();
            String readUtf8LineStrict2 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict3 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict4 = buffer.readUtf8LineStrict();
            String readUtf8LineStrict5 = buffer.readUtf8LineStrict();
            if (Intrinsics.areEqual(MAGIC, readUtf8LineStrict) && Intrinsics.areEqual(VERSION_1, readUtf8LineStrict2) && Intrinsics.areEqual(String.valueOf(this.appVersion), readUtf8LineStrict3) && Intrinsics.areEqual(String.valueOf(this.valueCount), readUtf8LineStrict4) && readUtf8LineStrict5.length() <= 0) {
                int i10 = 0;
                while (true) {
                    try {
                        readJournalLine(buffer.readUtf8LineStrict());
                        i10++;
                    } catch (EOFException unused) {
                        this.redundantOpCount = i10 - this.lruEntries.size();
                        if (!buffer.exhausted()) {
                            rebuildJournal$okhttp();
                        } else {
                            this.journalWriter = newJournalWriter();
                        }
                        Unit unit = Unit.f60915a;
                        b.a(buffer, null);
                        return;
                    }
                }
            } else {
                throw new IOException("unexpected journal header: [" + readUtf8LineStrict + ", " + readUtf8LineStrict2 + ", " + readUtf8LineStrict4 + ", " + readUtf8LineStrict5 + ']');
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                b.a(buffer, th2);
                throw th3;
            }
        }
    }

    private final void readJournalLine(String str) throws IOException {
        String substring;
        int p02 = StringsKt.p0(str, ' ', 0, false, 6, null);
        if (p02 != -1) {
            int i10 = p02 + 1;
            int p03 = StringsKt.p0(str, ' ', i10, false, 4, null);
            if (p03 == -1) {
                substring = str.substring(i10);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
                String str2 = REMOVE;
                if (p02 == str2.length() && StringsKt.V(str, str2, false, 2, null)) {
                    this.lruEntries.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i10, p03);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            Entry entry = this.lruEntries.get(substring);
            if (entry == null) {
                entry = new Entry(this, substring);
                this.lruEntries.put(substring, entry);
            }
            if (p03 != -1) {
                String str3 = CLEAN;
                if (p02 == str3.length() && StringsKt.V(str, str3, false, 2, null)) {
                    String substring2 = str.substring(p03 + 1);
                    Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
                    List<String> Y0 = StringsKt.Y0(substring2, new char[]{' '}, false, 0, 6, null);
                    entry.setReadable$okhttp(true);
                    entry.setCurrentEditor$okhttp(null);
                    entry.setLengths$okhttp(Y0);
                    return;
                }
            }
            if (p03 == -1) {
                String str4 = DIRTY;
                if (p02 == str4.length() && StringsKt.V(str, str4, false, 2, null)) {
                    entry.setCurrentEditor$okhttp(new Editor(this, entry));
                    return;
                }
            }
            if (p03 == -1) {
                String str5 = READ;
                if (p02 == str5.length() && StringsKt.V(str, str5, false, 2, null)) {
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + str);
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private final boolean removeOldestEntry() {
        for (Entry toEvict : this.lruEntries.values()) {
            if (!toEvict.getZombie$okhttp()) {
                Intrinsics.checkNotNullExpressionValue(toEvict, "toEvict");
                removeEntry$okhttp(toEvict);
                return true;
            }
        }
        return false;
    }

    private final void validateKey(String str) {
        if (LEGAL_KEY_PATTERN.k(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        Entry[] entryArr;
        Editor currentEditor$okhttp;
        try {
            if (this.initialized && !this.closed) {
                Collection<Entry> values = this.lruEntries.values();
                Intrinsics.checkNotNullExpressionValue(values, "lruEntries.values");
                for (Entry entry : (Entry[]) values.toArray(new Entry[0])) {
                    if (entry.getCurrentEditor$okhttp() != null && (currentEditor$okhttp = entry.getCurrentEditor$okhttp()) != null) {
                        currentEditor$okhttp.detach$okhttp();
                    }
                }
                trimToSize();
                BufferedSink bufferedSink = this.journalWriter;
                Intrinsics.checkNotNull(bufferedSink);
                bufferedSink.close();
                this.journalWriter = null;
                this.closed = true;
                return;
            }
            this.closed = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void completeEdit$okhttp(@NotNull Editor editor, boolean z10) throws IOException {
        Intrinsics.checkNotNullParameter(editor, "editor");
        Entry entry$okhttp = editor.getEntry$okhttp();
        if (Intrinsics.areEqual(entry$okhttp.getCurrentEditor$okhttp(), editor)) {
            if (z10 && !entry$okhttp.getReadable$okhttp()) {
                int i10 = this.valueCount;
                for (int i11 = 0; i11 < i10; i11++) {
                    boolean[] written$okhttp = editor.getWritten$okhttp();
                    Intrinsics.checkNotNull(written$okhttp);
                    if (written$okhttp[i11]) {
                        if (!this.fileSystem.exists(entry$okhttp.getDirtyFiles$okhttp().get(i11))) {
                            editor.abort();
                            return;
                        }
                    } else {
                        editor.abort();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i11);
                    }
                }
            }
            int i12 = this.valueCount;
            for (int i13 = 0; i13 < i12; i13++) {
                File file = entry$okhttp.getDirtyFiles$okhttp().get(i13);
                if (z10 && !entry$okhttp.getZombie$okhttp()) {
                    if (this.fileSystem.exists(file)) {
                        File file2 = entry$okhttp.getCleanFiles$okhttp().get(i13);
                        this.fileSystem.rename(file, file2);
                        long j10 = entry$okhttp.getLengths$okhttp()[i13];
                        long size = this.fileSystem.size(file2);
                        entry$okhttp.getLengths$okhttp()[i13] = size;
                        this.size = (this.size - j10) + size;
                    }
                } else {
                    this.fileSystem.delete(file);
                }
            }
            entry$okhttp.setCurrentEditor$okhttp(null);
            if (entry$okhttp.getZombie$okhttp()) {
                removeEntry$okhttp(entry$okhttp);
                return;
            }
            this.redundantOpCount++;
            BufferedSink bufferedSink = this.journalWriter;
            Intrinsics.checkNotNull(bufferedSink);
            if (!entry$okhttp.getReadable$okhttp() && !z10) {
                this.lruEntries.remove(entry$okhttp.getKey$okhttp());
                bufferedSink.writeUtf8(REMOVE).writeByte(32);
                bufferedSink.writeUtf8(entry$okhttp.getKey$okhttp());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.size <= this.maxSize || journalRebuildRequired()) {
                    TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
                }
                return;
            }
            entry$okhttp.setReadable$okhttp(true);
            bufferedSink.writeUtf8(CLEAN).writeByte(32);
            bufferedSink.writeUtf8(entry$okhttp.getKey$okhttp());
            entry$okhttp.writeLengths$okhttp(bufferedSink);
            bufferedSink.writeByte(10);
            if (z10) {
                long j11 = this.nextSequenceNumber;
                this.nextSequenceNumber = 1 + j11;
                entry$okhttp.setSequenceNumber$okhttp(j11);
            }
            bufferedSink.flush();
            if (this.size <= this.maxSize) {
            }
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public final void delete() throws IOException {
        close();
        this.fileSystem.deleteContents(this.directory);
    }

    @Nullable
    public final Editor edit(@NotNull String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        return edit$default(this, key, 0L, 2, null);
    }

    public final synchronized void evictAll() throws IOException {
        Entry[] entryArr;
        try {
            initialize();
            Collection<Entry> values = this.lruEntries.values();
            Intrinsics.checkNotNullExpressionValue(values, "lruEntries.values");
            for (Entry entry : (Entry[]) values.toArray(new Entry[0])) {
                Intrinsics.checkNotNullExpressionValue(entry, "entry");
                removeEntry$okhttp(entry);
            }
            this.mostRecentTrimFailed = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (!this.initialized) {
            return;
        }
        checkNotClosed();
        trimToSize();
        BufferedSink bufferedSink = this.journalWriter;
        Intrinsics.checkNotNull(bufferedSink);
        bufferedSink.flush();
    }

    @Nullable
    public final synchronized Snapshot get(@NotNull String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (entry == null) {
            return null;
        }
        Snapshot snapshot$okhttp = entry.snapshot$okhttp();
        if (snapshot$okhttp == null) {
            return null;
        }
        this.redundantOpCount++;
        BufferedSink bufferedSink = this.journalWriter;
        Intrinsics.checkNotNull(bufferedSink);
        bufferedSink.writeUtf8(READ).writeByte(32).writeUtf8(key).writeByte(10);
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return snapshot$okhttp;
    }

    public final boolean getClosed$okhttp() {
        return this.closed;
    }

    @NotNull
    public final File getDirectory() {
        return this.directory;
    }

    @NotNull
    public final FileSystem getFileSystem$okhttp() {
        return this.fileSystem;
    }

    @NotNull
    public final LinkedHashMap<String, Entry> getLruEntries$okhttp() {
        return this.lruEntries;
    }

    public final synchronized long getMaxSize() {
        return this.maxSize;
    }

    public final int getValueCount$okhttp() {
        return this.valueCount;
    }

    public final synchronized void initialize() throws IOException {
        try {
            if (Util.assertionsEnabled && !Thread.holdsLock(this)) {
                throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
            }
            if (this.initialized) {
                return;
            }
            if (this.fileSystem.exists(this.journalFileBackup)) {
                if (this.fileSystem.exists(this.journalFile)) {
                    this.fileSystem.delete(this.journalFileBackup);
                } else {
                    this.fileSystem.rename(this.journalFileBackup, this.journalFile);
                }
            }
            this.civilizedFileSystem = Util.isCivilized(this.fileSystem, this.journalFileBackup);
            if (this.fileSystem.exists(this.journalFile)) {
                try {
                    readJournal();
                    processJournal();
                    this.initialized = true;
                    return;
                } catch (IOException e10) {
                    Platform platform = Platform.Companion.get();
                    platform.log("DiskLruCache " + this.directory + " is corrupt: " + e10.getMessage() + ", removing", 5, e10);
                    delete();
                    this.closed = false;
                }
            }
            rebuildJournal$okhttp();
            this.initialized = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized boolean isClosed() {
        return this.closed;
    }

    public final synchronized void rebuildJournal$okhttp() throws IOException {
        try {
            BufferedSink bufferedSink = this.journalWriter;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink buffer = Okio.buffer(this.fileSystem.sink(this.journalFileTmp));
            buffer.writeUtf8(MAGIC).writeByte(10);
            buffer.writeUtf8(VERSION_1).writeByte(10);
            buffer.writeDecimalLong(this.appVersion).writeByte(10);
            buffer.writeDecimalLong(this.valueCount).writeByte(10);
            buffer.writeByte(10);
            for (Entry entry : this.lruEntries.values()) {
                if (entry.getCurrentEditor$okhttp() != null) {
                    buffer.writeUtf8(DIRTY).writeByte(32);
                    buffer.writeUtf8(entry.getKey$okhttp());
                    buffer.writeByte(10);
                } else {
                    buffer.writeUtf8(CLEAN).writeByte(32);
                    buffer.writeUtf8(entry.getKey$okhttp());
                    entry.writeLengths$okhttp(buffer);
                    buffer.writeByte(10);
                }
            }
            Unit unit = Unit.f60915a;
            b.a(buffer, null);
            if (this.fileSystem.exists(this.journalFile)) {
                this.fileSystem.rename(this.journalFile, this.journalFileBackup);
            }
            this.fileSystem.rename(this.journalFileTmp, this.journalFile);
            this.fileSystem.delete(this.journalFileBackup);
            this.journalWriter = newJournalWriter();
            this.hasJournalErrors = false;
            this.mostRecentRebuildFailed = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized boolean remove(@NotNull String key) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (entry == null) {
            return false;
        }
        boolean removeEntry$okhttp = removeEntry$okhttp(entry);
        if (removeEntry$okhttp && this.size <= this.maxSize) {
            this.mostRecentTrimFailed = false;
        }
        return removeEntry$okhttp;
    }

    public final boolean removeEntry$okhttp(@NotNull Entry entry) throws IOException {
        BufferedSink bufferedSink;
        Intrinsics.checkNotNullParameter(entry, "entry");
        if (!this.civilizedFileSystem) {
            if (entry.getLockingSourceCount$okhttp() > 0 && (bufferedSink = this.journalWriter) != null) {
                bufferedSink.writeUtf8(DIRTY);
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(entry.getKey$okhttp());
                bufferedSink.writeByte(10);
                bufferedSink.flush();
            }
            if (entry.getLockingSourceCount$okhttp() > 0 || entry.getCurrentEditor$okhttp() != null) {
                entry.setZombie$okhttp(true);
                return true;
            }
        }
        Editor currentEditor$okhttp = entry.getCurrentEditor$okhttp();
        if (currentEditor$okhttp != null) {
            currentEditor$okhttp.detach$okhttp();
        }
        int i10 = this.valueCount;
        for (int i11 = 0; i11 < i10; i11++) {
            this.fileSystem.delete(entry.getCleanFiles$okhttp().get(i11));
            this.size -= entry.getLengths$okhttp()[i11];
            entry.getLengths$okhttp()[i11] = 0;
        }
        this.redundantOpCount++;
        BufferedSink bufferedSink2 = this.journalWriter;
        if (bufferedSink2 != null) {
            bufferedSink2.writeUtf8(REMOVE);
            bufferedSink2.writeByte(32);
            bufferedSink2.writeUtf8(entry.getKey$okhttp());
            bufferedSink2.writeByte(10);
        }
        this.lruEntries.remove(entry.getKey$okhttp());
        if (journalRebuildRequired()) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
        return true;
    }

    public final void setClosed$okhttp(boolean z10) {
        this.closed = z10;
    }

    public final synchronized void setMaxSize(long j10) {
        this.maxSize = j10;
        if (this.initialized) {
            TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
        }
    }

    public final synchronized long size() throws IOException {
        initialize();
        return this.size;
    }

    @NotNull
    public final synchronized Iterator<Snapshot> snapshots() throws IOException {
        initialize();
        return new DiskLruCache$snapshots$1(this);
    }

    public final void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            if (!removeOldestEntry()) {
                return;
            }
        }
        this.mostRecentTrimFailed = false;
    }

    @Nullable
    public final synchronized Editor edit(@NotNull String key, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(key, "key");
        initialize();
        checkNotClosed();
        validateKey(key);
        Entry entry = this.lruEntries.get(key);
        if (j10 == ANY_SEQUENCE_NUMBER || (entry != null && entry.getSequenceNumber$okhttp() == j10)) {
            if ((entry != null ? entry.getCurrentEditor$okhttp() : null) != null) {
                return null;
            }
            if (entry == null || entry.getLockingSourceCount$okhttp() == 0) {
                if (!this.mostRecentTrimFailed && !this.mostRecentRebuildFailed) {
                    BufferedSink bufferedSink = this.journalWriter;
                    Intrinsics.checkNotNull(bufferedSink);
                    bufferedSink.writeUtf8(DIRTY).writeByte(32).writeUtf8(key).writeByte(10);
                    bufferedSink.flush();
                    if (this.hasJournalErrors) {
                        return null;
                    }
                    if (entry == null) {
                        entry = new Entry(this, key);
                        this.lruEntries.put(key, entry);
                    }
                    Editor editor = new Editor(this, entry);
                    entry.setCurrentEditor$okhttp(editor);
                    return editor;
                }
                TaskQueue.schedule$default(this.cleanupQueue, this.cleanupTask, 0L, 2, null);
                return null;
            }
            return null;
        }
        return null;
    }
}
