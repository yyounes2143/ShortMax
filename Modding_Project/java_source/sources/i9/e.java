package i9;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import java.util.Set;
/* compiled from: RolloutsState.java */
@AutoValue
/* loaded from: classes5.dex */
public abstract class e {
    @NonNull
    public static e a(@NonNull Set<d> set) {
        return new c(set);
    }

    @NonNull
    public abstract Set<d> b();
}
