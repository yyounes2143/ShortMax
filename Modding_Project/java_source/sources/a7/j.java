package a7;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: DataSourceUtil.java */
/* loaded from: classes4.dex */
public final class j {
    public static void a(@Nullable h hVar) {
        if (hVar != null) {
            try {
                hVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
