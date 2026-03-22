package n2;

import com.facebook.common.memory.PooledByteBuffer;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: PooledByteBufferFactory.java */
/* loaded from: classes3.dex */
public interface g {
    PooledByteBuffer a(InputStream inputStream) throws IOException;

    i b();

    PooledByteBuffer c(byte[] bArr);

    i d(int i10);

    PooledByteBuffer e(InputStream inputStream, int i10) throws IOException;
}
