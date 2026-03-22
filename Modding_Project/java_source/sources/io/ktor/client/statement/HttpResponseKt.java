package io.ktor.client.statement;

import gt.s;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import sr.b;
import tr.c;
/* compiled from: HttpResponse.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpResponse.kt\nio/ktor/client/statement/HttpResponseKt\n+ 2 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,96:1\n156#2:97\n156#2:101\n17#3,3:98\n17#3,3:102\n*S KotlinDebug\n*F\n+ 1 HttpResponse.kt\nio/ktor/client/statement/HttpResponseKt\n*L\n87#1:97\n95#1:101\n87#1:98,3\n95#1:102,3\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpResponseKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull tr.c r5, @org.jetbrains.annotations.NotNull rs.c<? super io.ktor.utils.io.ByteReadChannel> r6) {
        /*
            boolean r0 = r6 instanceof io.ktor.client.statement.HttpResponseKt$bodyAsChannel$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.client.statement.HttpResponseKt$bodyAsChannel$1 r0 = (io.ktor.client.statement.HttpResponseKt$bodyAsChannel$1) r0
            int r1 = r0.f59142i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59142i = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpResponseKt$bodyAsChannel$1 r0 = new io.ktor.client.statement.HttpResponseKt$bodyAsChannel$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f59141h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59142i
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L53
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r6)
            io.ktor.client.call.HttpClientCall r5 = r5.x()
            java.lang.Class<io.ktor.utils.io.ByteReadChannel> r6 = io.ktor.utils.io.ByteReadChannel.class
            kotlin.reflect.KType r2 = kotlin.jvm.internal.Reflection.typeOf(r6)
            java.lang.reflect.Type r4 = kotlin.reflect.TypesJVMKt.getJavaType(r2)
            kotlin.reflect.KClass r6 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r6)
            es.a r6 = es.b.b(r4, r6, r2)
            r0.f59142i = r3
            java.lang.Object r6 = r5.a(r6, r0)
            if (r6 != r1) goto L53
            return r1
        L53:
            if (r6 == 0) goto L58
            io.ktor.utils.io.ByteReadChannel r6 = (io.ktor.utils.io.ByteReadChannel) r6
            return r6
        L58:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r6 = "null cannot be cast to non-null type io.ktor.utils.io.ByteReadChannel"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpResponseKt.a(tr.c, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0077  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(@org.jetbrains.annotations.NotNull tr.c r5, @org.jetbrains.annotations.NotNull java.nio.charset.Charset r6, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.String> r7) {
        /*
            boolean r0 = r7 instanceof io.ktor.client.statement.HttpResponseKt$bodyAsText$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.client.statement.HttpResponseKt$bodyAsText$1 r0 = (io.ktor.client.statement.HttpResponseKt$bodyAsText$1) r0
            int r1 = r0.f59145j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f59145j = r1
            goto L18
        L13:
            io.ktor.client.statement.HttpResponseKt$bodyAsText$1 r0 = new io.ktor.client.statement.HttpResponseKt$bodyAsText$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f59144i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f59145j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f59143h
            java.nio.charset.CharsetDecoder r5 = (java.nio.charset.CharsetDecoder) r5
            kotlin.f.b(r7)
            goto L66
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r7)
            java.nio.charset.Charset r7 = io.ktor.http.d.a(r5)
            if (r7 != 0) goto L3f
            goto L40
        L3f:
            r6 = r7
        L40:
            java.nio.charset.CharsetDecoder r6 = r6.newDecoder()
            io.ktor.client.call.HttpClientCall r5 = r5.x()
            java.lang.Class<hs.j> r7 = hs.j.class
            kotlin.reflect.KType r2 = kotlin.jvm.internal.Reflection.typeOf(r7)
            java.lang.reflect.Type r4 = kotlin.reflect.TypesJVMKt.getJavaType(r2)
            kotlin.reflect.KClass r7 = kotlin.jvm.internal.Reflection.getOrCreateKotlinClass(r7)
            es.a r7 = es.b.b(r4, r7, r2)
            r0.f59143h = r6
            r0.f59145j = r3
            java.lang.Object r7 = r5.a(r7, r0)
            if (r7 != r1) goto L65
            return r1
        L65:
            r5 = r6
        L66:
            if (r7 == 0) goto L77
            hs.j r7 = (hs.j) r7
            java.lang.String r6 = "decoder"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            r6 = 2
            r0 = 0
            r1 = 0
            java.lang.String r5 = gs.b.b(r5, r7, r1, r6, r0)
            return r5
        L77:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r6 = "null cannot be cast to non-null type io.ktor.utils.io.core.ByteReadPacket"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.statement.HttpResponseKt.b(tr.c, java.nio.charset.Charset, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object c(c cVar, Charset charset, rs.c cVar2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return b(cVar, charset, cVar2);
    }

    public static final void d(@NotNull c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        CoroutineContext.Element element = cVar.getCoroutineContext().get(r.G8);
        Intrinsics.checkNotNull(element);
        ((s) element).complete();
    }

    @NotNull
    public static final b e(@NotNull c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        return cVar.x().d();
    }
}
