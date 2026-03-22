package c5;

import android.content.Context;
import java.io.Closeable;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransportRuntimeComponent.java */
/* loaded from: classes4.dex */
public abstract class v implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TransportRuntimeComponent.java */
    /* loaded from: classes4.dex */
    public interface a {
        a a(Context context);

        v build();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        d().close();
    }

    abstract k5.d d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract u k();
}
