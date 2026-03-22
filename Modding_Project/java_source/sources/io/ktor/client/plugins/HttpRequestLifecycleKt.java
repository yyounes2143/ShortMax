package io.ktor.client.plugins;

import gt.s;
import gt.s0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpRequestLifecycle.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpRequestLifecycleKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final du.a f59013a = cs.a.a("io.ktor.client.plugins.HttpRequestLifecycle");

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(final s sVar, r rVar) {
        final s0 invokeOnCompletion = rVar.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.plugins.HttpRequestLifecycleKt$attachToClientEngineJob$handler$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                du.a aVar;
                du.a aVar2;
                if (th2 != null) {
                    aVar2 = HttpRequestLifecycleKt.f59013a;
                    aVar2.b("Cancelling request because engine Job failed with error: " + th2);
                    t.d(s.this, "Engine failed", th2);
                    return;
                }
                aVar = HttpRequestLifecycleKt.f59013a;
                aVar.b("Cancelling request because engine Job completed");
                s.this.complete();
            }
        });
        sVar.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.plugins.HttpRequestLifecycleKt$attachToClientEngineJob$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                s0.this.dispose();
            }
        });
    }
}
