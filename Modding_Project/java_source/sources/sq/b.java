package sq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
/* loaded from: classes8.dex */
public abstract class b {
    protected abstract boolean a(@NonNull File file);

    public void b(@Nullable File file) {
        File[] listFiles;
        if (file == null || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2 != null && a(file2)) {
                e.b(file2);
            }
        }
    }
}
