package com.ss.ttm.player;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
@Keep
/* loaded from: classes6.dex */
public interface IMediaDataSource extends Closeable {
    public static final int MDS_VERSION_0 = 0;
    public static final int MDS_VERSION_1 = 1;

    @CalledByNative
    default int close(int i10) {
        return -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @CalledByNative
    void close() throws IOException;

    @CalledByNative
    default String getFilePath() {
        return "/mds_default_file";
    }

    @CalledByNative
    default int getMDSVersion() {
        return 0;
    }

    @CalledByNative
    long getSize() throws IOException;

    @CalledByNative
    default long getSize(int i10) {
        return -1L;
    }

    @CalledByNative
    default int open(String str) {
        return -1;
    }

    @CalledByNative
    default int readAt(int i10, long j10, ByteBuffer byteBuffer, int i11, int i12) {
        return -1;
    }

    @CalledByNative
    int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException;
}
