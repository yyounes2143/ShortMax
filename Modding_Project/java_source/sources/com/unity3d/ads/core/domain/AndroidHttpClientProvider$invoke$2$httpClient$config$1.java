package com.unity3d.ads.core.domain;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.task.ConfigFileFromLocalStorage;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidHttpClientProvider.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider$invoke$2$httpClient$config$1", f = "AndroidHttpClientProvider.kt", l = {104}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidHttpClientProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHttpClientProvider.kt\ncom/unity3d/ads/core/domain/AndroidHttpClientProvider$invoke$2$httpClient$config$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHttpClientProvider$invoke$2$httpClient$config$1 extends SuspendLambda implements Function2<g0, c<? super Configuration>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidHttpClientProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHttpClientProvider$invoke$2$httpClient$config$1(AndroidHttpClientProvider androidHttpClientProvider, c<? super AndroidHttpClientProvider$invoke$2$httpClient$config$1> cVar) {
        super(2, cVar);
        this.this$0 = androidHttpClientProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidHttpClientProvider$invoke$2$httpClient$config$1 androidHttpClientProvider$invoke$2$httpClient$config$1 = new AndroidHttpClientProvider$invoke$2$httpClient$config$1(this.this$0, cVar);
        androidHttpClientProvider$invoke$2$httpClient$config$1.L$0 = obj;
        return androidHttpClientProvider$invoke$2$httpClient$config$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Configuration> cVar) {
        return ((AndroidHttpClientProvider$invoke$2$httpClient$config$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        ConfigFileFromLocalStorage configFileFromLocalStorage;
        Object mo4733invokegIAlus;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        Configuration configuration = null;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                    mo4733invokegIAlus = ((Result) obj).n();
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                g0 g0Var = (g0) this.L$0;
                AndroidHttpClientProvider androidHttpClientProvider = this.this$0;
                Result.a aVar = Result.f60901b;
                configFileFromLocalStorage = androidHttpClientProvider.configFileFromLocalStorage;
                ConfigFileFromLocalStorage.Params params = new ConfigFileFromLocalStorage.Params(null, 1, null);
                this.label = 1;
                mo4733invokegIAlus = configFileFromLocalStorage.mo4733invokegIAlus(params, this);
                if (mo4733invokegIAlus == f10) {
                    return f10;
                }
            }
            d10 = Result.d(Result.b(mo4733invokegIAlus));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        if (Result.i(d10)) {
            d10 = null;
        }
        Result result = (Result) d10;
        if (result == null) {
            return null;
        }
        Object n10 = result.n();
        if (!Result.i(n10)) {
            configuration = n10;
        }
        return configuration;
    }
}
