package com.facebook.common.memory;

import java.io.Closeable;
import java.nio.ByteBuffer;
/* loaded from: classes3.dex */
public interface PooledByteBuffer extends Closeable {

    /* loaded from: classes3.dex */
    public static class ClosedException extends RuntimeException {
        public ClosedException() {
            super("Invalid bytebuf. Already closed");
        }
    }

    long A();

    int B(int i10, byte[] bArr, int i11, int i12);

    ByteBuffer C();

    byte D(int i10);

    boolean isClosed();

    int size();
}
