package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.domain.task.InitializeStateCreate;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.webview.WebViewApp;
import gt.g0;
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
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitializeStateCreate.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateCreate$doWork$2", f = "InitializeStateCreate.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nInitializeStateCreate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateCreate.kt\ncom/unity3d/services/core/domain/task/InitializeStateCreate$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n24#2:61\n14#2,12:62\n26#2:75\n1#3:74\n*S KotlinDebug\n*F\n+ 1 InitializeStateCreate.kt\ncom/unity3d/services/core/domain/task/InitializeStateCreate$doWork$2\n*L\n29#1:61\n29#1:62,12\n29#1:75\n29#1:74\n*E\n"})
/* loaded from: classes7.dex */
public final class InitializeStateCreate$doWork$2 extends SuspendLambda implements Function2<g0, c<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateCreate.Params $params;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateCreate$doWork$2(InitializeStateCreate.Params params, c<? super InitializeStateCreate$doWork$2> cVar) {
        super(2, cVar);
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateCreate$doWork$2(this.$params, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Result<? extends Configuration>> cVar) {
        return ((InitializeStateCreate$doWork$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object d10;
        Configuration config;
        ErrorState create;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            InitializeStateCreate.Params params = this.$params;
            try {
                Result.a aVar = Result.f60901b;
                DeviceLog.debug("Unity Ads init: creating webapp");
                config = params.getConfig();
                config.setWebViewData(params.getWebViewData());
                try {
                    create = WebViewApp.create(config, false);
                } catch (IllegalThreadStateException e10) {
                    DeviceLog.exception("Illegal Thread", e10);
                    throw new InitializationException(ErrorState.CreateWebApp, e10, config);
                }
            } catch (CancellationException e11) {
                throw e11;
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                d10 = Result.d(f.a(th2));
            }
            if (create == null) {
                d10 = Result.d(config);
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
            String str = "Unity Ads WebApp creation failed";
            if (WebViewApp.getCurrentApp().getWebAppFailureMessage() != null) {
                str = WebViewApp.getCurrentApp().getWebAppFailureMessage();
            }
            DeviceLog.error(str);
            throw new InitializationException(create, new Exception(str), config);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
