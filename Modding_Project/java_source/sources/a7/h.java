package a7;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: DataSource.java */
/* loaded from: classes4.dex */
public interface h extends f {

    /* compiled from: DataSource.java */
    /* loaded from: classes4.dex */
    public interface a {
        h createDataSource();
    }

    long b(k kVar) throws IOException;

    void c(y yVar);

    void close() throws IOException;

    default Map<String, List<String>> getResponseHeaders() {
        return Collections.emptyMap();
    }

    @Nullable
    Uri getUri();
}
