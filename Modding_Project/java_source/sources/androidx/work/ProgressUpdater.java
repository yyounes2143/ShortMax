package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.common.util.concurrent.e;
import java.util.UUID;
/* loaded from: classes2.dex */
public interface ProgressUpdater {
    @NonNull
    e<Void> updateProgress(@NonNull Context context, @NonNull UUID uuid, @NonNull Data data);
}
