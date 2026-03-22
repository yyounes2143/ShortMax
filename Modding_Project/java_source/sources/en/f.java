package en;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: DataSourceUtil.java */
/* loaded from: classes8.dex */
public final class f {
    public static void a(@Nullable d dVar) {
        if (dVar != null) {
            try {
                dVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
