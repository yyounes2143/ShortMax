package androidx.datastore.core;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Storage.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Storage<T> {
    @NotNull
    StorageConnection<T> createConnection();
}
