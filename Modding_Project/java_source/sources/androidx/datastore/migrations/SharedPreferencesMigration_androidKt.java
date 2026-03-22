package androidx.datastore.migrations;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharedPreferencesMigration.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SharedPreferencesMigration_androidKt {
    @NotNull
    private static final Set<String> MIGRATE_ALL_KEYS = new LinkedHashSet();

    @NotNull
    public static final Set<String> getMIGRATE_ALL_KEYS() {
        return MIGRATE_ALL_KEYS;
    }
}
