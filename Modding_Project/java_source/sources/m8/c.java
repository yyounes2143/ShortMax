package m8;

import androidx.datastore.preferences.core.Preferences;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: JavaDataStorage.kt */
@Metadata
/* loaded from: classes5.dex */
public final class c {
    public static final <T> T a(@NotNull Preferences preferences, @NotNull Preferences.Key<T> key, T t10) {
        Intrinsics.checkNotNullParameter(preferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        T t11 = (T) preferences.get(key);
        if (t11 != null) {
            return t11;
        }
        return t10;
    }
}
