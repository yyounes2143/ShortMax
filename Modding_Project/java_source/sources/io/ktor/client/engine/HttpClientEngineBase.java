package io.ktor.client.engine;

import gt.c0;
import gt.f0;
import gt.s;
import io.ktor.client.HttpClient;
import io.ktor.client.engine.HttpClientEngine;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import or.b;
import org.jetbrains.annotations.NotNull;
import yr.k;
/* compiled from: HttpClientEngineBase.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class HttpClientEngineBase implements HttpClientEngine {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f58828d = AtomicIntegerFieldUpdater.newUpdater(HttpClientEngineBase.class, "closed");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58829a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final c0 f58830b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final i f58831c;
    @NotNull
    private volatile /* synthetic */ int closed;

    public HttpClientEngineBase(@NotNull String engineName) {
        Intrinsics.checkNotNullParameter(engineName, "engineName");
        this.f58829a = engineName;
        this.closed = 0;
        this.f58830b = or.a.a();
        this.f58831c = c.b(new Function0<CoroutineContext>() { // from class: io.ktor.client.engine.HttpClientEngineBase$coroutineContext$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CoroutineContext invoke() {
                String str;
                CoroutineContext plus = k.b(null, 1, null).plus(HttpClientEngineBase.this.d());
                StringBuilder sb2 = new StringBuilder();
                str = HttpClientEngineBase.this.f58829a;
                sb2.append(str);
                sb2.append("-context");
                return plus.plus(new f0(sb2.toString()));
            }
        });
    }

    @Override // io.ktor.client.engine.HttpClientEngine
    @NotNull
    public Set<b<?>> I() {
        return HttpClientEngine.DefaultImpls.g(this);
    }

    @Override // io.ktor.client.engine.HttpClientEngine
    public void N(@NotNull HttpClient httpClient) {
        HttpClientEngine.DefaultImpls.h(this, httpClient);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        s sVar;
        if (!f58828d.compareAndSet(this, 0, 1)) {
            return;
        }
        CoroutineContext.Element element = getCoroutineContext().get(r.G8);
        if (element instanceof s) {
            sVar = (s) element;
        } else {
            sVar = null;
        }
        if (sVar == null) {
            return;
        }
        sVar.complete();
    }

    @NotNull
    public c0 d() {
        return this.f58830b;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return (CoroutineContext) this.f58831c.getValue();
    }
}
