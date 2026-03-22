package f9;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.util.Set;
/* compiled from: ConfigUpdate.java */
@AutoValue
/* loaded from: classes5.dex */
public abstract class b {
    @NonNull
    public static b a(@NonNull Set<String> set) {
        return new a(set);
    }

    @NonNull
    public abstract Set<String> b();
}
