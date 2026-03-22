package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.CorruptionException;
import at.n;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WebviewConfigurationDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource$get$2", f = "WebviewConfigurationDataSource.kt", l = {15}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class WebviewConfigurationDataSource$get$2 extends SuspendLambda implements n<c<? super WebviewConfigurationStore.WebViewConfigurationStore>, Throwable, rs.c<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebviewConfigurationDataSource$get$2(rs.c<? super WebviewConfigurationDataSource$get$2> cVar) {
        super(3, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            c cVar = (c) this.L$0;
            Throwable th2 = (Throwable) this.L$1;
            if (th2 instanceof CorruptionException) {
                WebviewConfigurationStore.WebViewConfigurationStore defaultInstance = WebviewConfigurationStore.WebViewConfigurationStore.getDefaultInstance();
                Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance()");
                this.L$0 = null;
                this.label = 1;
                if (cVar.emit(defaultInstance, this) == f10) {
                    return f10;
                }
            } else {
                throw th2;
            }
        }
        return Unit.f60915a;
    }

    @Override // at.n
    @Nullable
    public final Object invoke(@NotNull c<? super WebviewConfigurationStore.WebViewConfigurationStore> cVar, @NotNull Throwable th2, @Nullable rs.c<? super Unit> cVar2) {
        WebviewConfigurationDataSource$get$2 webviewConfigurationDataSource$get$2 = new WebviewConfigurationDataSource$get$2(cVar2);
        webviewConfigurationDataSource$get$2.L$0 = cVar;
        webviewConfigurationDataSource$get$2.L$1 = th2;
        return webviewConfigurationDataSource$get$2.invokeSuspend(Unit.f60915a);
    }
}
