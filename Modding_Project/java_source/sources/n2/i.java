package n2;

import com.facebook.common.memory.PooledByteBuffer;
import java.io.IOException;
import java.io.OutputStream;
import k2.m;
/* compiled from: PooledByteBufferOutputStream.java */
/* loaded from: classes3.dex */
public abstract class i extends OutputStream {
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } catch (IOException e10) {
            m.a(e10);
        }
    }

    public abstract PooledByteBuffer d();

    public abstract int size();
}
