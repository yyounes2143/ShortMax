package y3;

import com.facebook.fresco.middleware.HasExtraData;
import java.io.Closeable;
/* compiled from: CloseableImage.java */
/* loaded from: classes3.dex */
public interface e extends Closeable, m, o2.d, HasExtraData {
    boolean J0();

    m M();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int getHeight();

    int getSizeInBytes();

    int getWidth();

    boolean isClosed();

    p x0();
}
