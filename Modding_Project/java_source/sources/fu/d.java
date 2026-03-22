package fu;

import java.io.IOException;
import okhttp3.Request;
/* compiled from: Call.java */
/* loaded from: classes8.dex */
public interface d<T> extends Cloneable {
    void cancel();

    d<T> clone();

    void d(f<T> fVar);

    c0<T> execute() throws IOException;

    boolean isCanceled();

    Request request();
}
