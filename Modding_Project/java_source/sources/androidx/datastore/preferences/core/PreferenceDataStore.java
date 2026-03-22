package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: PreferenceDataStoreFactory.kt */
@Metadata
/* loaded from: classes2.dex */
public final class PreferenceDataStore implements DataStore<Preferences> {
    @NotNull
    private final DataStore<Preferences> delegate;

    public PreferenceDataStore(@NotNull DataStore<Preferences> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.datastore.core.DataStore
    @NotNull
    public b<Preferences> getData() {
        return this.delegate.getData();
    }

    @Override // androidx.datastore.core.DataStore
    @Nullable
    public Object updateData(@NotNull Function2<? super Preferences, ? super c<? super Preferences>, ? extends Object> function2, @NotNull c<? super Preferences> cVar) {
        return this.delegate.updateData(new PreferenceDataStore$updateData$2(function2, null), cVar);
    }
}
