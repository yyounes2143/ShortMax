package io.ktor.client.engine;

import gt.g0;
import io.ktor.client.HttpClient;
import java.io.Closeable;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.y0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import or.b;
import or.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sr.c;
import sr.e;
import sr.f;
/* compiled from: HttpClientEngine.kt */
@Metadata
/* loaded from: classes8.dex */
public interface HttpClientEngine extends g0, Closeable {

    /* compiled from: HttpClientEngine.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngine$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        /* JADX INFO: Access modifiers changed from: private */
        public static void d(HttpClientEngine httpClientEngine, c cVar) {
            for (b<?> bVar : cVar.g()) {
                if (!httpClientEngine.I().contains(bVar)) {
                    throw new IllegalArgumentException(("Engine doesn't support " + bVar).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x007a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007b A[PHI: r12 
          PHI: (r12v7 java.lang.Object) = (r12v6 java.lang.Object), (r12v1 java.lang.Object) binds: [B:21:0x0078, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object e(io.ktor.client.engine.HttpClientEngine r10, sr.c r11, rs.c<? super sr.e> r12) {
            /*
                boolean r0 = r12 instanceof io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1
                if (r0 == 0) goto L13
                r0 = r12
                io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1 r0 = (io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1) r0
                int r1 = r0.f58817k
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f58817k = r1
                goto L18
            L13:
                io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1 r0 = new io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$1
                r0.<init>(r12)
            L18:
                java.lang.Object r12 = r0.f58816j
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f58817k
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L42
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                kotlin.f.b(r12)
                goto L7b
            L2c:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r11)
                throw r10
            L34:
                java.lang.Object r10 = r0.f58815i
                r11 = r10
                sr.c r11 = (sr.c) r11
                java.lang.Object r10 = r0.f58814h
                io.ktor.client.engine.HttpClientEngine r10 = (io.ktor.client.engine.HttpClientEngine) r10
                kotlin.f.b(r12)
            L40:
                r4 = r10
                goto L56
            L42:
                kotlin.f.b(r12)
                kotlinx.coroutines.r r12 = r11.d()
                r0.f58814h = r10
                r0.f58815i = r11
                r0.f58817k = r4
                java.lang.Object r12 = or.f.b(r10, r12, r0)
                if (r12 != r1) goto L40
                return r1
            L56:
                kotlin.coroutines.CoroutineContext r12 = (kotlin.coroutines.CoroutineContext) r12
                io.ktor.client.engine.a r10 = new io.ktor.client.engine.a
                r10.<init>(r12)
                kotlin.coroutines.CoroutineContext r5 = r12.plus(r10)
                io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2 r7 = new io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2
                r10 = 0
                r7.<init>(r4, r11, r10)
                r8 = 2
                r9 = 0
                r6 = 0
                gt.k0 r11 = gt.e.b(r4, r5, r6, r7, r8, r9)
                r0.f58814h = r10
                r0.f58815i = r10
                r0.f58817k = r3
                java.lang.Object r12 = r11.await(r0)
                if (r12 != r1) goto L7b
                return r1
            L7b:
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.HttpClientEngine.DefaultImpls.e(io.ktor.client.engine.HttpClientEngine, sr.c, rs.c):java.lang.Object");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean f(HttpClientEngine httpClientEngine) {
            boolean z10;
            r rVar = (r) httpClientEngine.getCoroutineContext().get(r.G8);
            if (rVar != null) {
                z10 = rVar.isActive();
            } else {
                z10 = false;
            }
            return !z10;
        }

        @NotNull
        public static Set<b<?>> g(@NotNull HttpClientEngine httpClientEngine) {
            return y0.f();
        }

        public static void h(@NotNull HttpClientEngine httpClientEngine, @NotNull HttpClient client) {
            Intrinsics.checkNotNullParameter(client, "client");
            client.r().l(f.f66615h.a(), new HttpClientEngine$install$1(client, httpClientEngine, null));
        }
    }

    @NotNull
    Set<b<?>> I();

    void N(@NotNull HttpClient httpClient);

    @NotNull
    d getConfig();

    @Nullable
    Object r0(@NotNull c cVar, @NotNull rs.c<? super e> cVar2);
}
