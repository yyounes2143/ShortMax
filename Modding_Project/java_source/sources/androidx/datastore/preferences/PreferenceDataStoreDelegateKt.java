package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.Preferences;
import gt.g0;
import gt.q0;
import gt.r1;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.c;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PreferenceDataStoreDelegate.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PreferenceDataStoreDelegateKt {
    @NotNull
    public static final c<Context, DataStore<Preferences>> preferencesDataStore(@NotNull String name, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull Function1<? super Context, ? extends List<? extends DataMigration<Preferences>>> produceMigrations, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new PreferenceDataStoreSingletonDelegate(name, replaceFileCorruptionHandler, produceMigrations, scope);
    }

    public static /* synthetic */ c preferencesDataStore$default(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 function1, g0 g0Var, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 4) != 0) {
            function1 = new Function1<Context, List<? extends DataMigration<Preferences>>>() { // from class: androidx.datastore.preferences.PreferenceDataStoreDelegateKt$preferencesDataStore$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List<DataMigration<Preferences>> invoke(@NotNull Context it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return CollectionsKt.n();
                }
            };
        }
        if ((i10 & 8) != 0) {
            g0Var = i.a(q0.b().plus(r1.b(null, 1, null)));
        }
        return preferencesDataStore(str, replaceFileCorruptionHandler, function1, g0Var);
    }
}
