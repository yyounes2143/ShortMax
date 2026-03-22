package com.unity3d.ads.core.data.datasource;

import com.unity3d.ads.datastore.WebviewConfigurationStore;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebviewConfigurationDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource$set$2", f = "WebviewConfigurationDataSource.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class WebviewConfigurationDataSource$set$2 extends SuspendLambda implements Function2<WebviewConfigurationStore.WebViewConfigurationStore, c<? super WebviewConfigurationStore.WebViewConfigurationStore>, Object> {
    final /* synthetic */ WebviewConfigurationStore.WebViewConfigurationStore $data;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebviewConfigurationDataSource$set$2(WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, c<? super WebviewConfigurationDataSource$set$2> cVar) {
        super(2, cVar);
        this.$data = webViewConfigurationStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new WebviewConfigurationDataSource$set$2(this.$data, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, @Nullable c<? super WebviewConfigurationStore.WebViewConfigurationStore> cVar) {
        return ((WebviewConfigurationDataSource$set$2) create(webViewConfigurationStore, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            return this.$data;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
