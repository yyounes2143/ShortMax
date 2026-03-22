package com.applovin.shadow.okhttp3.internal.cache2;

import com.applovin.shadow.okhttp3.internal.Util;
import com.applovin.shadow.okio.Buffer;
import com.applovin.shadow.okio.ByteString;
import com.applovin.shadow.okio.Source;
import com.applovin.shadow.okio.Timeout;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Relay.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Relay {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long FILE_HEADER_SIZE = 32;
    @NotNull
    public static final ByteString PREFIX_CLEAN;
    @NotNull
    public static final ByteString PREFIX_DIRTY;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    @NotNull
    private final Buffer buffer;
    private final long bufferMaxSize;
    private boolean complete;
    @Nullable
    private RandomAccessFile file;
    @NotNull
    private final ByteString metadata;
    private int sourceCount;
    @Nullable
    private Source upstream;
    @NotNull
    private final Buffer upstreamBuffer;
    private long upstreamPos;
    @Nullable
    private Thread upstreamReader;

    /* compiled from: Relay.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Relay edit(@NotNull File file, @NotNull Source upstream, @NotNull ByteString metadata, long j10) throws IOException {
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(upstream, "upstream");
            Intrinsics.checkNotNullParameter(metadata, "metadata");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            Relay relay = new Relay(randomAccessFile, upstream, 0L, metadata, j10, null);
            randomAccessFile.setLength(0L);
            relay.writeHeader(Relay.PREFIX_DIRTY, -1L, -1L);
            return relay;
        }

        @NotNull
        public final Relay read(@NotNull File file) throws IOException {
            Intrinsics.checkNotNullParameter(file, "file");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "randomAccessFile.channel");
            FileOperator fileOperator = new FileOperator(channel);
            Buffer buffer = new Buffer();
            fileOperator.read(0L, buffer, 32L);
            ByteString byteString = Relay.PREFIX_CLEAN;
            if (Intrinsics.areEqual(buffer.readByteString(byteString.size()), byteString)) {
                long readLong = buffer.readLong();
                long readLong2 = buffer.readLong();
                Buffer buffer2 = new Buffer();
                fileOperator.read(readLong + 32, buffer2, readLong2);
                return new Relay(randomAccessFile, null, readLong, buffer2.readByteString(), 0L, null);
            }
            throw new IOException("unreadable cache file");
        }

        private Companion() {
        }
    }

    /* compiled from: Relay.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n+ 2 Util.kt\nokhttp3/internal/Util\n*L\n1#1,356:1\n563#2:357\n*S KotlinDebug\n*F\n+ 1 Relay.kt\nokhttp3/internal/cache2/Relay$RelaySource\n*L\n267#1:357\n*E\n"})
    /* loaded from: classes2.dex */
    public final class RelaySource implements Source {
        @Nullable
        private FileOperator fileOperator;
        private long sourcePos;
        @NotNull
        private final Timeout timeout = new Timeout();

        public RelaySource() {
            RandomAccessFile file = Relay.this.getFile();
            Intrinsics.checkNotNull(file);
            FileChannel channel = file.getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "file!!.channel");
            this.fileOperator = new FileOperator(channel);
        }

        @Override // com.applovin.shadow.okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            Relay relay = Relay.this;
            synchronized (relay) {
                try {
                    relay.setSourceCount(relay.getSourceCount() - 1);
                    if (relay.getSourceCount() == 0) {
                        RandomAccessFile file = relay.getFile();
                        relay.setFile(null);
                        randomAccessFile = file;
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (randomAccessFile != null) {
                Util.closeQuietly(randomAccessFile);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
            if (r0 != true) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
            r10 = java.lang.Math.min(r23, r21.this$0.getUpstreamPos() - r21.sourcePos);
            r2 = r21.fileOperator;
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2);
            r2.read(r21.sourcePos + 32, r22, r10);
            r21.sourcePos += r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
            return r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x007a, code lost:
            r0 = r21.this$0.getUpstream();
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0);
            r11 = r0.read(r21.this$0.getUpstreamBuffer(), r21.this$0.getBufferMaxSize());
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0095, code lost:
            if (r11 != (-1)) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0097, code lost:
            r0 = r21.this$0;
            r0.commit(r0.getUpstreamPos());
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00a0, code lost:
            r2 = r21.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00a2, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x00a3, code lost:
            r2.setUpstreamReader(null);
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
            r0 = kotlin.Unit.f60915a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00b0, code lost:
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00b1, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b5, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00b8, code lost:
            r19 = java.lang.Math.min(r11, r23);
            r21.this$0.getUpstreamBuffer().copyTo(r22, 0, r19);
            r21.sourcePos += r19;
            r13 = r21.fileOperator;
            kotlin.jvm.internal.Intrinsics.checkNotNull(r13);
            r13.write(r21.this$0.getUpstreamPos() + 32, r21.this$0.getUpstreamBuffer().m4605clone(), r11);
            r2 = r21.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x00f0, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x00f1, code lost:
            r2.getBuffer().write(r2.getUpstreamBuffer(), r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x010a, code lost:
            if (r2.getBuffer().size() <= r2.getBufferMaxSize()) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x010c, code lost:
            r2.getBuffer().skip(r2.getBuffer().size() - r2.getBufferMaxSize());
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0123, code lost:
            r2.setUpstreamPos(r2.getUpstreamPos() + r11);
            r0 = kotlin.Unit.f60915a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x012d, code lost:
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x012e, code lost:
            r2 = r21.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0130, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0131, code lost:
            r2.setUpstreamReader(null);
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x013c, code lost:
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x013d, code lost:
            return r19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0143, code lost:
            r2 = r21.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0145, code lost:
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0146, code lost:
            r2.setUpstreamReader(null);
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
            r3 = kotlin.Unit.f60915a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0154, code lost:
            throw r0;
         */
        @Override // com.applovin.shadow.okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(@org.jetbrains.annotations.NotNull com.applovin.shadow.okio.Buffer r22, long r23) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 387
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.shadow.okhttp3.internal.cache2.Relay.RelaySource.read(com.applovin.shadow.okio.Buffer, long):long");
        }

        @Override // com.applovin.shadow.okio.Source
        @NotNull
        public Timeout timeout() {
            return this.timeout;
        }
    }

    static {
        ByteString.Companion companion = ByteString.Companion;
        PREFIX_CLEAN = companion.encodeUtf8("OkHttp cache v1\n");
        PREFIX_DIRTY = companion.encodeUtf8("OkHttp DIRTY :(\n");
    }

    public /* synthetic */ Relay(RandomAccessFile randomAccessFile, Source source, long j10, ByteString byteString, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(randomAccessFile, source, j10, byteString, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeHeader(ByteString byteString, long j10, long j11) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(byteString);
        buffer.writeLong(j10);
        buffer.writeLong(j11);
        if (buffer.size() == 32) {
            RandomAccessFile randomAccessFile = this.file;
            Intrinsics.checkNotNull(randomAccessFile);
            FileChannel channel = randomAccessFile.getChannel();
            Intrinsics.checkNotNullExpressionValue(channel, "file!!.channel");
            new FileOperator(channel).write(0L, buffer, 32L);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    private final void writeMetadata(long j10) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(this.metadata);
        RandomAccessFile randomAccessFile = this.file;
        Intrinsics.checkNotNull(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        Intrinsics.checkNotNullExpressionValue(channel, "file!!.channel");
        new FileOperator(channel).write(32 + j10, buffer, this.metadata.size());
    }

    public final void commit(long j10) throws IOException {
        writeMetadata(j10);
        RandomAccessFile randomAccessFile = this.file;
        Intrinsics.checkNotNull(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j10, this.metadata.size());
        RandomAccessFile randomAccessFile2 = this.file;
        Intrinsics.checkNotNull(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
            Unit unit = Unit.f60915a;
        }
        Source source = this.upstream;
        if (source != null) {
            Util.closeQuietly(source);
        }
        this.upstream = null;
    }

    @NotNull
    public final Buffer getBuffer() {
        return this.buffer;
    }

    public final long getBufferMaxSize() {
        return this.bufferMaxSize;
    }

    public final boolean getComplete() {
        return this.complete;
    }

    @Nullable
    public final RandomAccessFile getFile() {
        return this.file;
    }

    public final int getSourceCount() {
        return this.sourceCount;
    }

    @Nullable
    public final Source getUpstream() {
        return this.upstream;
    }

    @NotNull
    public final Buffer getUpstreamBuffer() {
        return this.upstreamBuffer;
    }

    public final long getUpstreamPos() {
        return this.upstreamPos;
    }

    @Nullable
    public final Thread getUpstreamReader() {
        return this.upstreamReader;
    }

    public final boolean isClosed() {
        if (this.file == null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ByteString metadata() {
        return this.metadata;
    }

    @Nullable
    public final Source newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }

    public final void setComplete(boolean z10) {
        this.complete = z10;
    }

    public final void setFile(@Nullable RandomAccessFile randomAccessFile) {
        this.file = randomAccessFile;
    }

    public final void setSourceCount(int i10) {
        this.sourceCount = i10;
    }

    public final void setUpstream(@Nullable Source source) {
        this.upstream = source;
    }

    public final void setUpstreamPos(long j10) {
        this.upstreamPos = j10;
    }

    public final void setUpstreamReader(@Nullable Thread thread) {
        this.upstreamReader = thread;
    }

    private Relay(RandomAccessFile randomAccessFile, Source source, long j10, ByteString byteString, long j11) {
        this.file = randomAccessFile;
        this.upstream = source;
        this.upstreamPos = j10;
        this.metadata = byteString;
        this.bufferMaxSize = j11;
        this.upstreamBuffer = new Buffer();
        this.complete = this.upstream == null;
        this.buffer = new Buffer();
    }
}
