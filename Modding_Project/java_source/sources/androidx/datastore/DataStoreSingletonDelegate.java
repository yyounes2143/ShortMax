package androidx.datastore;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.core.okio.OkioSerializer;
import androidx.datastore.core.okio.OkioStorage;
import gt.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.c;
import kotlin.reflect.KProperty;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DataStoreDelegate.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DataStoreSingletonDelegate<T> implements c<Context, DataStore<T>> {
    @GuardedBy("lock")
    @Nullable
    private volatile DataStore<T> INSTANCE;
    @Nullable
    private final ReplaceFileCorruptionHandler<T> corruptionHandler;
    @NotNull
    private final String fileName;
    @NotNull
    private final Object lock;
    @NotNull
    private final Function1<Context, List<DataMigration<T>>> produceMigrations;
    @NotNull
    private final g0 scope;
    @NotNull
    private final OkioSerializer<T> serializer;

    /* JADX WARN: Multi-variable type inference failed */
    public DataStoreSingletonDelegate(@NotNull String fileName, @NotNull OkioSerializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull Function1<? super Context, ? extends List<? extends DataMigration<T>>> produceMigrations, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.fileName = fileName;
        this.serializer = serializer;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = produceMigrations;
        this.scope = scope;
        this.lock = new Object();
    }

    @Override // kotlin.properties.c
    public /* bridge */ /* synthetic */ Object getValue(Context context, KProperty kProperty) {
        return getValue2(context, (KProperty<?>) kProperty);
    }

    @NotNull
    /* renamed from: getValue  reason: avoid collision after fix types in other method */
    public DataStore<T> getValue2(@NotNull Context thisRef, @NotNull KProperty<?> property) {
        DataStore<T> dataStore;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        DataStore<T> dataStore2 = this.INSTANCE;
        if (dataStore2 == null) {
            synchronized (this.lock) {
                try {
                    if (this.INSTANCE == null) {
                        final Context applicationContext = thisRef.getApplicationContext();
                        DataStoreFactory dataStoreFactory = DataStoreFactory.INSTANCE;
                        OkioStorage okioStorage = new OkioStorage(FileSystem.SYSTEM, this.serializer, null, new Function0<Path>() { // from class: androidx.datastore.DataStoreSingletonDelegate$getValue$1$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            @NotNull
                            public final Path invoke() {
                                String str;
                                Path.Companion companion = Path.Companion;
                                Context applicationContext2 = applicationContext;
                                Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext");
                                str = ((DataStoreSingletonDelegate) this).fileName;
                                String absolutePath = DataStoreFile.dataStoreFile(applicationContext2, str).getAbsolutePath();
                                Intrinsics.checkNotNullExpressionValue(absolutePath, "applicationContext.dataS…le(fileName).absolutePath");
                                return Path.Companion.get$default(companion, absolutePath, false, 1, (Object) null);
                            }
                        }, 4, null);
                        ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler = this.corruptionHandler;
                        Function1<Context, List<DataMigration<T>>> function1 = this.produceMigrations;
                        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                        this.INSTANCE = dataStoreFactory.create(okioStorage, replaceFileCorruptionHandler, function1.invoke(applicationContext), this.scope);
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
