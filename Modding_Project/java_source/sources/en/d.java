package en;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: DataSource.java */
/* loaded from: classes8.dex */
public interface d extends zm.h {

    /* compiled from: DataSource.java */
    /* loaded from: classes8.dex */
    public interface a {
        d createDataSource();
    }

    long b(g gVar) throws IOException;

    void c(o oVar);

    void close() throws IOException;

    default Map<String, List<String>> getResponseHeaders() {
        return Collections.emptyMap();
    }

    @Nullable
    Uri getUri();
}
