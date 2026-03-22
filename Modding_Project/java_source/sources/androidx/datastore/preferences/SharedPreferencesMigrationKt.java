package androidx.datastore.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.migrations.SharedPreferencesView;
import androidx.datastore.preferences.core.Preferences;
import at.n;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: SharedPreferencesMigration.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SharedPreferencesMigrationKt {
    @NotNull
    private static final Set<String> MIGRATE_ALL_KEYS = new LinkedHashSet();

    @NotNull
    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(@NotNull Context context, @NotNull String sharedPreferencesName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        return SharedPreferencesMigration$default(context, sharedPreferencesName, null, 4, null);
    }

    public static /* synthetic */ SharedPreferencesMigration SharedPreferencesMigration$default(Function0 function0, Set set, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            set = MIGRATE_ALL_KEYS;
        }
        return SharedPreferencesMigration(function0, set);
    }

    @NotNull
    public static final Set<String> getMIGRATE_ALL_KEYS() {
        return MIGRATE_ALL_KEYS;
    }

    private static final n<SharedPreferencesView, Preferences, c<? super Preferences>, Object> getMigrationFunction() {
        return new SharedPreferencesMigrationKt$getMigrationFunction$1(null);
    }

    private static final Function2<Preferences, c<? super Boolean>, Object> getShouldRunMigration(Set<String> set) {
        return new SharedPreferencesMigrationKt$getShouldRunMigration$1(set, null);
    }

    @NotNull
    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(@NotNull Function0<? extends SharedPreferences> produceSharedPreferences) {
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        return SharedPreferencesMigration$default(produceSharedPreferences, null, 2, null);
    }

    @NotNull
    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(@NotNull Function0<? extends SharedPreferences> produceSharedPreferences, @NotNull Set<String> keysToMigrate) {
        Intrinsics.checkNotNullParameter(produceSharedPreferences, "produceSharedPreferences");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        if (keysToMigrate == MIGRATE_ALL_KEYS) {
            return new SharedPreferencesMigration<>(produceSharedPreferences, (Set) null, getShouldRunMigration(keysToMigrate), getMigrationFunction(), 2, (DefaultConstructorMarker) null);
        }
        return new SharedPreferencesMigration<>(produceSharedPreferences, keysToMigrate, getShouldRunMigration(keysToMigrate), getMigrationFunction());
    }

    public static /* synthetic */ SharedPreferencesMigration SharedPreferencesMigration$default(Context context, String str, Set set, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            set = MIGRATE_ALL_KEYS;
        }
        return SharedPreferencesMigration(context, str, set);
    }

    @NotNull
    public static final SharedPreferencesMigration<Preferences> SharedPreferencesMigration(@NotNull Context context, @NotNull String sharedPreferencesName, @NotNull Set<String> keysToMigrate) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(keysToMigrate, "keysToMigrate");
        if (keysToMigrate == MIGRATE_ALL_KEYS) {
            return new SharedPreferencesMigration<>(context, sharedPreferencesName, null, getShouldRunMigration(keysToMigrate), getMigrationFunction(), 4, null);
        }
        return new SharedPreferencesMigration<>(context, sharedPreferencesName, keysToMigrate, getShouldRunMigration(keysToMigrate), getMigrationFunction());
    }
}
