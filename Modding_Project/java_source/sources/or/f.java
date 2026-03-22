package or;

import gt.f0;
import gt.s;
import gt.s0;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.engine.HttpClientEngine;
import io.ktor.http.UnsafeHeaderException;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.i;
/* compiled from: HttpClientEngine.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngineKt\n+ 2 Utils.kt\nio/ktor/client/engine/UtilsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n94#2,11:164\n766#3:175\n857#3,2:176\n*S KotlinDebug\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngineKt\n*L\n146#1:164,11\n156#1:175\n156#1:176,2\n*E\n"})
/* loaded from: classes8.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final f0 f64360a = new f0("call-context");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final yr.a<HttpClientConfig<?>> f64361b = new yr.a<>("client-config");

    @Nullable
    public static final Object b(@NotNull HttpClientEngine httpClientEngine, @NotNull r rVar, @NotNull rs.c<? super CoroutineContext> cVar) {
        final s a10 = t.a(rVar);
        CoroutineContext plus = httpClientEngine.getCoroutineContext().plus(a10).plus(f64360a);
        r rVar2 = (r) cVar.getContext().get(r.G8);
        if (rVar2 != null) {
            final s0 e10 = r.a.e(rVar2, true, false, new Function1<Throwable, Unit>() { // from class: io.ktor.client.engine.UtilsKt$attachToUserJob$cleanupHandler$1
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
                    if (th2 == null) {
                        return;
                    }
                    r.this.cancel(new CancellationException(th2.getMessage()));
                }
            }, 2, null);
            a10.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.engine.UtilsKt$attachToUserJob$2
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
        return plus;
    }

    @NotNull
    public static final yr.a<HttpClientConfig<?>> c() {
        return f64361b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(sr.c cVar) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : cVar.e().names()) {
            if (i.f70141a.v().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        throw new UnsafeHeaderException(arrayList.toString());
    }
}
