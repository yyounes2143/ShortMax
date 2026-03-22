package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Preferences.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PreferencesKt {
    @Nullable
    public static final Object edit(@NotNull DataStore<Preferences> dataStore, @NotNull Function2<? super MutablePreferences, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Preferences> cVar) {
        return dataStore.updateData(new PreferencesKt$edit$2(function2, null), cVar);
    }
}
