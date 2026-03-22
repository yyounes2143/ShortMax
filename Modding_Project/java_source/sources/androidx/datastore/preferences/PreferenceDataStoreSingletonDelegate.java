package androidx.datastore.preferences;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import androidx.datastore.preferences.core.Preferences;
import gt.g0;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.c;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PreferenceDataStoreDelegate.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PreferenceDataStoreSingletonDelegate implements c<Context, DataStore<Preferences>> {
    @GuardedBy("lock")
    @Nullable
    private volatile DataStore<Preferences> INSTANCE;
    @Nullable
    private final ReplaceFileCorruptionHandler<Preferences> corruptionHandler;
    @NotNull
    private final Object lock;
    @NotNull
    private final String name;
    @NotNull
    private final Function1<Context, List<DataMigration<Preferences>>> produceMigrations;
    @NotNull
    private final g0 scope;

    /* JADX WARN: Multi-variable type inference failed */
    public PreferenceDataStoreSingletonDelegate(@NotNull String name, @Nullable ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, @NotNull Function1<? super Context, ? extends List<? extends DataMigration<Preferences>>> produceMigrations, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.name = name;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = produceMigrations;
        this.scope = scope;
        this.lock = new Object();
    }

    @Override // kotlin.properties.c
    public /* bridge */ /* synthetic */ DataStore<Preferences> getValue(Context context, KProperty kProperty) {
        return getValue2(context, (KProperty<?>) kProperty);
    }

    @NotNull
    /* renamed from: getValue  reason: avoid collision after fix types in other method */
    public DataStore<Preferences> getValue2(@NotNull Context thisRef, @NotNull KProperty<?> property) {
        DataStore<Preferences> dataStore;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        DataStore<Preferences> dataStore2 = this.INSTANCE;
        if (dataStore2 == null) {
            synchronized (this.lock) {
                try {
                    if (this.INSTANCE == null) {
                        final Context applicationContext = thisRef.getApplicationContext();
                        PreferenceDataStoreFactory preferenceDataStoreFactory = PreferenceDataStoreFactory.INSTANCE;
                        ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler = this.corruptionHandler;
                        Function1<Context, List<DataMigration<Preferences>>> function1 = this.produceMigrations;
                        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                        this.INSTANCE = preferenceDataStoreFactory.create(replaceFileCorruptionHandler, function1.invoke(applicationContext), this.scope, new Function0<File>() { // from class: androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate$getValue$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final File invoke() {
                                String str;
                                Context applicationContext2 = applicationContext;
                                Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext");
                                str = this.name;
                                return PreferenceDataStoreFile.preferencesDataStoreFile(applicationContext2, str);
                            }
                        });
                    }
                    dataStore = this.INSTANCE;
                    Intrinsics.checkNotNull(dataStore);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return dataStore;
        }
        return dataStore2;
    }
}
