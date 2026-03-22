package okio;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileHandle.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n33#2:445\n33#2:447\n33#2:448\n33#2:449\n33#2:450\n33#2:451\n33#2:452\n33#2:453\n33#2:457\n33#2:459\n1#3:446\n62#4:454\n62#4:455\n62#4:456\n51#5:458\n86#6:460\n86#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"})
/* loaded from: classes8.dex */
public abstract class FileHandle implements Closeable {
    private boolean closed;
    @NotNull
    private final ReentrantLock lock = _JvmPlatformKt.newLock();
    private int openStreamCount;
    private final boolean readWrite;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileHandle.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n33#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n*L\n410#1:446\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class FileHandleSink implements Sink {
        private boolean closed;
        @NotNull
        private final FileHandle fileHandle;
        private long position;

        public FileHandleSink(@NotNull FileHandle fileHandle, long j10) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.fileHandle = fileHandle;
            this.position = j10;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ReentrantLock lock = this.fileHandle.getLock();
            lock.lock();
            try {
                FileHandle fileHandle = this.fileHandle;
                fileHandle.openStreamCount--;
                if (this.fileHandle.openStreamCount == 0 && this.fileHandle.closed) {
                    Unit unit = Unit.f60915a;
                    lock.unlock();
                    this.fileHandle.protectedClose();
                }
            } finally {
                lock.unlock();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (!this.closed) {
                this.fileHandle.protectedFlush();
                return;
            }
            throw new IllegalStateException("closed");
        }

        public final boolean getClosed() {
            return this.closed;
        }

        @NotNull
        public final FileHandle getFileHandle() {
            return this.fileHandle;
        }

        public final long getPosition() {
            return this.position;
        }

        public final void setClosed(boolean z10) {
            this.closed = z10;
        }

        public final void setPosition(long j10) {
            this.position = j10;
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j10) {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!this.closed) {
                this.fileHandle.writeNoCloseCheck(this.position, source, j10);
                this.position += j10;
                return;
            }
            throw new IllegalStateException("closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileHandle.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n33#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n*L\n436#1:446\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class FileHandleSource implements Source {
        private boolean closed;
        @NotNull
        private final FileHandle fileHandle;
        private long position;

        public FileHandleSource(@NotNull FileHandle fileHandle, long j10) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.fileHandle = fileHandle;
            this.position = j10;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ReentrantLock lock = this.fileHandle.getLock();
            lock.lock();
            try {
                FileHandle fileHandle = this.fileHandle;
                fileHandle.openStreamCount--;
                if (this.fileHandle.openStreamCount == 0 && this.fileHandle.closed) {
                    Unit unit = Unit.f60915a;
                    lock.unlock();
                    this.fileHandle.protectedClose();
                }
            } finally {
                lock.unlock();
            }
        }

        public final boolean getClosed() {
            return this.closed;
        }

        @NotNull
        public final FileHandle getFileHandle() {
            return this.fileHandle;
        }

        public final long getPosition() {
            return this.position;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j10) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!this.closed) {
                long readNoCloseCheck = this.fileHandle.readNoCloseCheck(this.position, sink, j10);
                if (readNoCloseCheck != -1) {
                    this.position += readNoCloseCheck;
                }
                return readNoCloseCheck;
            }
            throw new IllegalStateException("closed");
        }

        public final void setClosed(boolean z10) {
            this.closed = z10;
        }

        public final void setPosition(long j10) {
            this.position = j10;
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }
    }

    public FileHandle(boolean z10) {
        this.readWrite = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long readNoCloseCheck(long j10, Buffer buffer, long j11) {
        int i10;
        if (j11 >= 0) {
            long j12 = j11 + j10;
            long j13 = j10;
            while (true) {
                if (j13 >= j12) {
                    break;
                }
                Segment writableSegment$okio = buffer.writableSegment$okio(1);
                int protectedRead = protectedRead(j13, writableSegment$okio.data, writableSegment$okio.limit, (int) Math.min(j12 - j13, 8192 - i10));
                if (protectedRead == -1) {
                    if (writableSegment$okio.pos == writableSegment$okio.limit) {
                        buffer.head = writableSegment$okio.pop();
                        SegmentPool.recycle(writableSegment$okio);
                    }
                    if (j10 == j13) {
                        return -1L;
                    }
                } else {
                    writableSegment$okio.limit += protectedRead;
                    long j14 = protectedRead;
                    j13 += j14;
                    buffer.setSize$okio(buffer.size() + j14);
                }
            }
            return j13 - j10;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j11).toString());
    }

    public static /* synthetic */ Sink sink$default(FileHandle fileHandle, long j10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                j10 = 0;
            }
            return fileHandle.sink(j10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
    }

    public static /* synthetic */ Source source$default(FileHandle fileHandle, long j10, int i10, Object obj) throws IOException {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                j10 = 0;
            }
            return fileHandle.source(j10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: source");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeNoCloseCheck(long j10, Buffer buffer, long j11) {
        SegmentedByteString.checkOffsetAndCount(buffer.size(), 0L, j11);
        long j12 = j11 + j10;
        while (j10 < j12) {
            Segment segment = buffer.head;
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min(j12 - j10, segment.limit - segment.pos);
            protectedWrite(j10, segment.data, segment.pos, min);
            segment.pos += min;
            long j13 = min;
            j10 += j13;
            buffer.setSize$okio(buffer.size() - j13);
            if (segment.pos == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @NotNull
    public final Sink appendingSink() throws IOException {
        return sink(size());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.openStreamCount != 0) {
                return;
            }
            Unit unit = Unit.f60915a;
            reentrantLock.unlock();
            protectedClose();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void flush() throws IOException {
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.closed) {
                    Unit unit = Unit.f60915a;
                    reentrantLock.unlock();
                    protectedFlush();
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    @NotNull
    public final ReentrantLock getLock() {
        return this.lock;
    }

    public final boolean getReadWrite() {
        return this.readWrite;
    }

    public final long position(@NotNull Source source) throws IOException {
        long j10;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof RealBufferedSource) {
            RealBufferedSource realBufferedSource = (RealBufferedSource) source;
            j10 = realBufferedSource.bufferField.size();
            source = realBufferedSource.source;
        } else {
            j10 = 0;
        }
        if ((source instanceof FileHandleSource) && ((FileHandleSource) source).getFileHandle() == this) {
            FileHandleSource fileHandleSource = (FileHandleSource) source;
            if (!fileHandleSource.getClosed()) {
                return fileHandleSource.getPosition() - j10;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException("source was not created by this FileHandle");
    }

    protected abstract void protectedClose() throws IOException;

    protected abstract void protectedFlush() throws IOException;

    protected abstract int protectedRead(long j10, @NotNull byte[] bArr, int i10, int i11) throws IOException;

    protected abstract void protectedResize(long j10) throws IOException;

    protected abstract long protectedSize() throws IOException;

    protected abstract void protectedWrite(long j10, @NotNull byte[] bArr, int i10, int i11) throws IOException;

    public final int read(long j10, @NotNull byte[] array, int i10, int i11) throws IOException {
        Intrinsics.checkNotNullParameter(array, "array");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.closed) {
                Unit unit = Unit.f60915a;
                reentrantLock.unlock();
                return protectedRead(j10, array, i10, i11);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void reposition(@NotNull Source source, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (source instanceof RealBufferedSource) {
            RealBufferedSource realBufferedSource = (RealBufferedSource) source;
            Source source2 = realBufferedSource.source;
            if ((source2 instanceof FileHandleSource) && ((FileHandleSource) source2).getFileHandle() == this) {
                FileHandleSource fileHandleSource = (FileHandleSource) source2;
                if (!fileHandleSource.getClosed()) {
                    long size = realBufferedSource.bufferField.size();
                    long position = j10 - (fileHandleSource.getPosition() - size);
                    if (0 <= position && position < size) {
                        realBufferedSource.skip(position);
                        return;
                    }
                    realBufferedSource.bufferField.clear();
                    fileHandleSource.setPosition(j10);
                    return;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("source was not created by this FileHandle");
        } else if ((source instanceof FileHandleSource) && ((FileHandleSource) source).getFileHandle() == this) {
            FileHandleSource fileHandleSource2 = (FileHandleSource) source;
            if (!fileHandleSource2.getClosed()) {
                fileHandleSource2.setPosition(j10);
                return;
            }
            throw new IllegalStateException("closed");
        } else {
            throw new IllegalArgumentException("source was not created by this FileHandle");
        }
    }

    public final void resize(long j10) throws IOException {
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.closed) {
                    Unit unit = Unit.f60915a;
                    reentrantLock.unlock();
                    protectedResize(j10);
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    @NotNull
    public final Sink sink(long j10) throws IOException {
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.closed) {
                    this.openStreamCount++;
                    reentrantLock.unlock();
                    return new FileHandleSink(this, j10);
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    public final long size() throws IOException {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.closed) {
                Unit unit = Unit.f60915a;
                reentrantLock.unlock();
                return protectedSize();
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @NotNull
    public final Source source(long j10) throws IOException {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.closed) {
                this.openStreamCount++;
                reentrantLock.unlock();
                return new FileHandleSource(this, j10);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void write(long j10, @NotNull byte[] array, int i10, int i11) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.closed) {
                    Unit unit = Unit.f60915a;
                    reentrantLock.unlock();
                    protectedWrite(j10, array, i10, i11);
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    public final long read(long j10, @NotNull Buffer sink, long j11) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (!this.closed) {
                Unit unit = Unit.f60915a;
                reentrantLock.unlock();
                return readNoCloseCheck(j10, sink, j11);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final long position(@NotNull Sink sink) throws IOException {
        long j10;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            j10 = realBufferedSink.bufferField.size();
            sink = realBufferedSink.sink;
        } else {
            j10 = 0;
        }
        if ((sink instanceof FileHandleSink) && ((FileHandleSink) sink).getFileHandle() == this) {
            FileHandleSink fileHandleSink = (FileHandleSink) sink;
            if (!fileHandleSink.getClosed()) {
                return fileHandleSink.getPosition() + j10;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle");
    }

    public final void write(long j10, @NotNull Buffer source, long j11) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (this.readWrite) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (!this.closed) {
                    Unit unit = Unit.f60915a;
                    reentrantLock.unlock();
                    writeNoCloseCheck(j10, source, j11);
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    public final void reposition(@NotNull Sink sink, long j10) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            Sink sink2 = realBufferedSink.sink;
            if ((sink2 instanceof FileHandleSink) && ((FileHandleSink) sink2).getFileHandle() == this) {
                FileHandleSink fileHandleSink = (FileHandleSink) sink2;
                if (!fileHandleSink.getClosed()) {
                    realBufferedSink.emit();
                    fileHandleSink.setPosition(j10);
                    return;
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("sink was not created by this FileHandle");
        } else if ((sink instanceof FileHandleSink) && ((FileHandleSink) sink).getFileHandle() == this) {
            FileHandleSink fileHandleSink2 = (FileHandleSink) sink;
            if (!fileHandleSink2.getClosed()) {
                fileHandleSink2.setPosition(j10);
                return;
            }
            throw new IllegalStateException("closed");
        } else {
            throw new IllegalArgumentException("sink was not created by this FileHandle");
        }
    }
}
