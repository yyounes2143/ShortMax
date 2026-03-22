package io.ktor.client.statement;

import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequestBuilder;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import or.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qr.d;
import qr.e;
/* compiled from: HttpStatement.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpStatement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n+ 2 HttpTimeout.kt\nio/ktor/client/plugins/HttpTimeoutKt\n+ 3 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n269#2,4:146\n269#2,2:150\n271#2,2:156\n269#2,2:158\n271#2,2:164\n269#2,4:166\n156#3:152\n156#3:160\n17#4,3:153\n17#4,3:161\n800#5,11:170\n1855#5,2:181\n*S KotlinDebug\n*F\n+ 1 HttpStatement.kt\nio/ktor/client/statement/HttpStatement\n*L\n46#1:146,4\n74#1:150,2\n74#1:156,2\n90#1:158,2\n90#1:164,2\n105#1:166,4\n77#1:152\n93#1:160\n77#1:153,3\n93#1:161,3\n135#1:170,11\n136#1:181,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpStatement {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpRequestBuilder f59146a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final HttpClient f59147b;

    public HttpStatement(@NotNull HttpRequestBuilder builder, @NotNull HttpClient client) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        Intrinsics.checkNotNullParameter(client, "client");
        this.f59146a = builder;
        this.f59147b = client;
        a();
    }

    private final void a() {
        Set keySet;
        Map map = (Map) this.f59146a.c().f(c.a());
        if (map != null && (keySet = map.keySet()) != null) {
            ArrayList<d> arrayList = new ArrayList();
            for (Object obj : keySet) {
                if (obj instanceof d) {
                    arrayList.add(obj);
                }
            }
            for (d dVar : arrayList) {
                if (e.c(this.f59147b, dVar) == null) {
                    throw new IllegalArgumentException(("Consider installing " + dVar + " plugin because the request requires it to be installed").toString());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.NotNull tr.c r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.client.statement.HttpStatement$cleanup$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.client.statement.HttpStatement$cleanup$1 r0 = (io.ktor.client.statement.HttpStatement$cleanup$1) r0
            int r1 = r0.f59151k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59151k = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpStatement$cleanup$1 r0 = new io.ktor.client.statement.HttpStatement$cleanup$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f59149i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59151k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f59148h
            gt.s r5 = (gt.s) r5
            kotlin.f.b(r6)
            goto L5c
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            kotlin.coroutines.CoroutineContext r6 = r5.getCoroutineContext()
            kotlinx.coroutines.r$b r2 = kotlinx.coroutines.r.G8
            kotlin.coroutines.CoroutineContext$Element r6 = r6.get(r2)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            gt.s r6 = (gt.s) r6
            r6.complete()
            io.ktor.utils.io.ByteReadChannel r5 = r5.b()     // Catch: java.lang.Throwable -> L51
            io.ktor.utils.io.ByteReadChannelKt.a(r5)     // Catch: java.lang.Throwable -> L51
        L51:
            r0.f59148h = r6
            r0.f59151k = r3
            java.lang.Object r5 = r6.join(r0)
            if (r5 != r1) goto L5c
            return r1
        L5c:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpStatement.b(tr.c, rs.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(2:3|(8:5|6|7|(1:(1:(1:(1:(2:13|14)(3:16|17|18))(3:19|20|21))(5:22|23|24|25|(1:27)(2:28|29)))(2:36|37))(3:46|47|(1:49)(1:50))|38|39|40|(1:42)(3:43|25|(0)(0))))|54|6|7|(0)(0)|38|39|40|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0098, code lost:
        r10 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0095 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a5 A[RETURN] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object c(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function2<? super tr.c, ? super rs.c<? super T>, ? extends java.lang.Object> r10, @org.jetbrains.annotations.NotNull rs.c<? super T> r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof io.ktor.client.statement.HttpStatement$execute$1
            if (r0 == 0) goto L13
            r0 = r11
            io.ktor.client.statement.HttpStatement$execute$1 r0 = (io.ktor.client.statement.HttpStatement$execute$1) r0
            int r1 = r0.f59156l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59156l = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpStatement$execute$1 r0 = new io.ktor.client.statement.HttpStatement$execute$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.f59154j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59156l
            r3 = 0
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r2 == 0) goto L66
            if (r2 == r7) goto L5a
            if (r2 == r6) goto L49
            if (r2 == r5) goto L43
            if (r2 == r4) goto L37
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L37:
            java.lang.Object r10 = r0.f59152h
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            kotlin.f.b(r11)     // Catch: java.util.concurrent.CancellationException -> L40
            goto La6
        L40:
            r10 = move-exception
            goto La7
        L43:
            java.lang.Object r10 = r0.f59152h
            kotlin.f.b(r11)     // Catch: java.util.concurrent.CancellationException -> L40
            goto L97
        L49:
            java.lang.Object r10 = r0.f59153i
            tr.c r10 = (tr.c) r10
            java.lang.Object r2 = r0.f59152h
            io.ktor.client.statement.HttpStatement r2 = (io.ktor.client.statement.HttpStatement) r2
            kotlin.f.b(r11)     // Catch: java.lang.Throwable -> L55
            goto L89
        L55:
            r11 = move-exception
            r8 = r11
            r11 = r10
            r10 = r8
            goto L99
        L5a:
            java.lang.Object r10 = r0.f59153i
            kotlin.jvm.functions.Function2 r10 = (kotlin.jvm.functions.Function2) r10
            java.lang.Object r2 = r0.f59152h
            io.ktor.client.statement.HttpStatement r2 = (io.ktor.client.statement.HttpStatement) r2
            kotlin.f.b(r11)     // Catch: java.util.concurrent.CancellationException -> L40
            goto L77
        L66:
            kotlin.f.b(r11)
            r0.f59152h = r9     // Catch: java.util.concurrent.CancellationException -> L40
            r0.f59153i = r10     // Catch: java.util.concurrent.CancellationException -> L40
            r0.f59156l = r7     // Catch: java.util.concurrent.CancellationException -> L40
            java.lang.Object r11 = r9.e(r0)     // Catch: java.util.concurrent.CancellationException -> L40
            if (r11 != r1) goto L76
            return r1
        L76:
            r2 = r9
        L77:
            tr.c r11 = (tr.c) r11     // Catch: java.util.concurrent.CancellationException -> L40
            r0.f59152h = r2     // Catch: java.lang.Throwable -> L98
            r0.f59153i = r11     // Catch: java.lang.Throwable -> L98
            r0.f59156l = r6     // Catch: java.lang.Throwable -> L98
            java.lang.Object r10 = r10.invoke(r11, r0)     // Catch: java.lang.Throwable -> L98
            if (r10 != r1) goto L86
            return r1
        L86:
            r8 = r11
            r11 = r10
            r10 = r8
        L89:
            r0.f59152h = r11     // Catch: java.util.concurrent.CancellationException -> L40
            r0.f59153i = r3     // Catch: java.util.concurrent.CancellationException -> L40
            r0.f59156l = r5     // Catch: java.util.concurrent.CancellationException -> L40
            java.lang.Object r10 = r2.b(r10, r0)     // Catch: java.util.concurrent.CancellationException -> L40
            if (r10 != r1) goto L96
            return r1
        L96:
            r10 = r11
        L97:
            return r10
        L98:
            r10 = move-exception
        L99:
            r0.f59152h = r10     // Catch: java.util.concurrent.CancellationException -> L40
            r0.f59153i = r3     // Catch: java.util.concurrent.CancellationException -> L40
            r0.f59156l = r4     // Catch: java.util.concurrent.CancellationException -> L40
            java.lang.Object r11 = r2.b(r11, r0)     // Catch: java.util.concurrent.CancellationException -> L40
            if (r11 != r1) goto La6
            return r1
        La6:
            throw r10     // Catch: java.util.concurrent.CancellationException -> L40
        La7:
            java.lang.Throwable r10 = ur.c.a(r10)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpStatement.c(kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object d(@NotNull rs.c<? super tr.c> cVar) {
        return c(new HttpStatement$execute$4(null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.NotNull rs.c<? super tr.c> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof io.ktor.client.statement.HttpStatement$executeUnsafe$1
            if (r0 == 0) goto L13
            r0 = r5
            io.ktor.client.statement.HttpStatement$executeUnsafe$1 r0 = (io.ktor.client.statement.HttpStatement$executeUnsafe$1) r0
            int r1 = r0.f59161j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59161j = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpStatement$executeUnsafe$1 r0 = new io.ktor.client.statement.HttpStatement$executeUnsafe$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f59159h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59161j
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.f.b(r5)     // Catch: java.util.concurrent.CancellationException -> L29
            goto L4c
        L29:
            r5 = move-exception
            goto L53
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L33:
            kotlin.f.b(r5)
            io.ktor.client.request.HttpRequestBuilder r5 = new io.ktor.client.request.HttpRequestBuilder     // Catch: java.util.concurrent.CancellationException -> L29
            r5.<init>()     // Catch: java.util.concurrent.CancellationException -> L29
            io.ktor.client.request.HttpRequestBuilder r2 = r4.f59146a     // Catch: java.util.concurrent.CancellationException -> L29
            io.ktor.client.request.HttpRequestBuilder r5 = r5.p(r2)     // Catch: java.util.concurrent.CancellationException -> L29
            io.ktor.client.HttpClient r2 = r4.f59147b     // Catch: java.util.concurrent.CancellationException -> L29
            r0.f59161j = r3     // Catch: java.util.concurrent.CancellationException -> L29
            java.lang.Object r5 = r2.a(r5, r0)     // Catch: java.util.concurrent.CancellationException -> L29
            if (r5 != r1) goto L4c
            return r1
        L4c:
            io.ktor.client.call.HttpClientCall r5 = (io.ktor.client.call.HttpClientCall) r5     // Catch: java.util.concurrent.CancellationException -> L29
            tr.c r5 = r5.e()     // Catch: java.util.concurrent.CancellationException -> L29
            return r5
        L53:
            java.lang.Throwable r5 = ur.c.a(r5)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpStatement.e(rs.c):java.lang.Object");
    }

    @NotNull
    public String toString() {
        return "HttpStatement[" + this.f59146a.i() + ']';
    }
}
