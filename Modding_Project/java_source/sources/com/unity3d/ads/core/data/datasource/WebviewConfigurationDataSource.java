package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.DataStore;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: WebviewConfigurationDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WebviewConfigurationDataSource {
    @NotNull
    private final DataStore<WebviewConfigurationStore.WebViewConfigurationStore> webviewConfigurationStore;

    public WebviewConfigurationDataSource(@NotNull DataStore<WebviewConfigurationStore.WebViewConfigurationStore> webviewConfigurationStore) {
        Intrinsics.checkNotNullParameter(webviewConfigurationStore, "webviewConfigurationStore");
        this.webviewConfigurationStore = webviewConfigurationStore;
    }

    @Nullable
    public final Object get(@NotNull c<? super WebviewConfigurationStore.WebViewConfigurationStore> cVar) {
        return kotlinx.coroutines.flow.c.y(kotlinx.coroutines.flow.c.i(this.webviewConfigurationStore.getData(), new WebviewConfigurationDataSource$get$2(null)), cVar);
    }

    @Nullable
    public final Object set(@NotNull WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, @NotNull c<? super Unit> cVar) {
        Object updateData = this.webviewConfigurationStore.updateData(new WebviewConfigurationDataSource$set$2(webViewConfigurationStore, null), cVar);
        if (updateData == kotlin.coroutines.intrinsics.a.f()) {
            return updateData;
        }
        return Unit.f60915a;
    }
}
