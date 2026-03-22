package b1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: LottieFetchResult.java */
/* loaded from: classes2.dex */
public interface c extends Closeable {
    @Nullable
    String K();

    @Nullable
    String S();

    @NonNull
    InputStream V() throws IOException;

    boolean isSuccessful();
}
