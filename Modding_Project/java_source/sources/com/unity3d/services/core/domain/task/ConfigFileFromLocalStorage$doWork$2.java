package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.task.ConfigFileFromLocalStorage;
import com.unity3d.services.core.properties.SdkProperties;
import gt.g0;
import java.io.File;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigFileFromLocalStorage.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.ConfigFileFromLocalStorage$doWork$2", f = "ConfigFileFromLocalStorage.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nConfigFileFromLocalStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigFileFromLocalStorage.kt\ncom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n24#2:48\n14#2,12:49\n26#2:62\n1#3:61\n*S KotlinDebug\n*F\n+ 1 ConfigFileFromLocalStorage.kt\ncom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage$doWork$2\n*L\n28#1:48\n28#1:49,12\n28#1:62\n28#1:61\n*E\n"})
/* loaded from: classes7.dex */
public final class ConfigFileFromLocalStorage$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ ConfigFileFromLocalStorage.Params $params;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigFileFromLocalStorage$doWork$2(ConfigFileFromLocalStorage.Params params, c<? super ConfigFileFromLocalStorage$doWork$2> cVar) {
        super(2, cVar);
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ConfigFileFromLocalStorage$doWork$2(this.$params, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Result<? extends Configuration>> cVar) {
        return ((ConfigFileFromLocalStorage$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        Configuration configuration;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            ConfigFileFromLocalStorage.Params params = this.$params;
            try {
                Result.a aVar = Result.f60901b;
                File file = new File(SdkProperties.getLocalConfigurationFilepath());
                if (!file.exists()) {
                    configuration = params.getDefaultConfiguration();
                } else {
                    configuration = new Configuration(new JSONObject(ws.f.m(file, null, 1, null)));
                }
                d10 = Result.d(configuration);
            } catch (CancellationException e10) {
                throw e10;
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(f.a(th2));
            }
            if (Result.j(d10)) {
                d10 = Result.d(d10);
            } else {
                Throwable g10 = Result.g(d10);
                if (g10 != null) {
                    d10 = Result.d(f.a(g10));
                }
            }
            return Result.b(d10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
