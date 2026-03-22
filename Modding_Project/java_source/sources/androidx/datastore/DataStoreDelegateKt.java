package androidx.datastore;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
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
/* compiled from: DataStoreDelegate.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DataStoreDelegateKt {
    @NotNull
    public static final <T> c<Context, DataStore<T>> dataStore(@NotNull String fileName, @NotNull Serializer<T> serializer, @Nullable ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, @NotNull Function1<? super Context, ? extends List<? extends DataMigration<T>>> produceMigrations, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return new DataStoreSingletonDelegate(fileName, new OkioSerializerWrapper(serializer), replaceFileCorruptionHandler, produceMigrations, scope);
    }

    public static /* synthetic */ c dataStore$default(String str, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 function1, g0 g0Var, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i10 & 8) != 0) {
            function1 = new Function1() { // from class: androidx.datastore.DataStoreDelegateKt$dataStore$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final List invoke(@NotNull Context it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return CollectionsKt.n();
                }
            };
        }
        if ((i10 & 16) != 0) {
            g0Var = i.a(q0.b().plus(r1.b(null, 1, null)));
        }
        return dataStore(str, serializer, replaceFileCorruptionHandler, function1, g0Var);
    }
}
