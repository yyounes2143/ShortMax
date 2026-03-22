package com.unity3d.ads.core.domain;

import android.content.Context;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.core.RefactoredOkHttp3Client;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHttpClientProvider.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$2$httpClient$client$1", f = "AndroidHttpClientProvider.kt", l = {83}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidHttpClientProvider$invoke$2$httpClient$client$1 extends SuspendLambda implements Function2<g0, c<? super HttpClient>, Object> {
    final /* synthetic */ boolean $usingRefactoredGatewayClient;
    int label;
    final /* synthetic */ AndroidHttpClientProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHttpClientProvider$invoke$2$httpClient$client$1(boolean z10, AndroidHttpClientProvider androidHttpClientProvider, c<? super AndroidHttpClientProvider$invoke$2$httpClient$client$1> cVar) {
        super(2, cVar);
        this.$usingRefactoredGatewayClient = z10;
        this.this$0 = androidHttpClientProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidHttpClientProvider$invoke$2$httpClient$client$1(this.$usingRefactoredGatewayClient, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super HttpClient> cVar) {
        return ((AndroidHttpClientProvider$invoke$2$httpClient$client$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Context context;
        ISDKDispatchers iSDKDispatchers;
        ISDKDispatchers iSDKDispatchers2;
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
            if (this.$usingRefactoredGatewayClient) {
                iSDKDispatchers2 = this.this$0.dispatchers;
                return new RefactoredOkHttp3Client(iSDKDispatchers2, new OkHttpClient());
            }
            AndroidHttpClientProvider androidHttpClientProvider = this.this$0;
            context = androidHttpClientProvider.context;
            iSDKDispatchers = this.this$0.dispatchers;
            this.label = 1;
            obj = androidHttpClientProvider.buildNetworkClient(context, iSDKDispatchers, this);
            if (obj == f10) {
                return f10;
            }
        }
        return (HttpClient) obj;
    }
}
