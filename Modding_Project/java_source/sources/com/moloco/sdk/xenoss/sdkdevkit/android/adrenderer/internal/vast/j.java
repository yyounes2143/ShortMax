package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class j implements v {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserImpl", f = "VastParser.kt", l = {65}, m = "invoke")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35195h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35196i;

        /* renamed from: k  reason: collision with root package name */
        public int f35198k;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35196i = obj;
            this.f35198k |= Integer.MIN_VALUE;
            return j.this.b(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0061 A[Catch: all -> 0x002d, TryCatch #3 {all -> 0x002d, blocks: (B:12:0x0029, B:24:0x005d, B:26:0x0061, B:27:0x0067), top: B:40:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0067 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #3 {all -> 0x002d, blocks: (B:12:0x0029, B:24:0x005d, B:26:0x0061, B:27:0x0067), top: B:40:0x0029 }] */
    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.v
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.j.a
            if (r0 == 0) goto L13
            r0 = r8
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.j$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.j.a) r0
            int r1 = r0.f35198k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35198k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.j$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.j$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f35196i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35198k
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r7 = r0.f35195h
            java.io.Closeable r7 = (java.io.Closeable) r7
            kotlin.f.b(r8)     // Catch: java.lang.Throwable -> L2d
            goto L5d
        L2d:
            r8 = move-exception
            goto L77
        L2f:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L37:
            kotlin.f.b(r8)
            java.io.StringReader r8 = new java.io.StringReader     // Catch: java.lang.Exception -> L7d
            r8.<init>(r7)     // Catch: java.lang.Exception -> L7d
            org.xmlpull.v1.XmlPullParser r7 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = "http://xmlpull.org/v1/doc/features.html#process-namespaces"
            r4 = 0
            r7.setFeature(r2, r4)     // Catch: java.lang.Throwable -> L73
            r7.setInput(r8)     // Catch: java.lang.Throwable -> L73
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: java.lang.Throwable -> L73
            r0.f35195h = r8     // Catch: java.lang.Throwable -> L73
            r0.f35198k = r3     // Catch: java.lang.Throwable -> L73
            java.lang.Object r7 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C0(r7, r0)     // Catch: java.lang.Throwable -> L73
            if (r7 != r1) goto L5a
            return r1
        L5a:
            r5 = r8
            r8 = r7
            r7 = r5
        L5d:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z r8 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z) r8     // Catch: java.lang.Throwable -> L2d
            if (r8 == 0) goto L67
            com.moloco.sdk.internal.g0$b r0 = new com.moloco.sdk.internal.g0$b     // Catch: java.lang.Throwable -> L2d
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L2d
            goto L6e
        L67:
            com.moloco.sdk.internal.g0$a r0 = new com.moloco.sdk.internal.g0$a     // Catch: java.lang.Throwable -> L2d
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k r8 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k.f34025c     // Catch: java.lang.Throwable -> L2d
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L2d
        L6e:
            r8 = 0
            ws.b.a(r7, r8)     // Catch: java.lang.Exception -> L7d
            goto L84
        L73:
            r7 = move-exception
            r5 = r8
            r8 = r7
            r7 = r5
        L77:
            throw r8     // Catch: java.lang.Throwable -> L78
        L78:
            r0 = move-exception
            ws.b.a(r7, r8)     // Catch: java.lang.Exception -> L7d
            throw r0     // Catch: java.lang.Exception -> L7d
        L7d:
            com.moloco.sdk.internal.g0$a r0 = new com.moloco.sdk.internal.g0$a
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k r7 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k.f34024b
            r0.<init>(r7)
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.j.b(java.lang.String, rs.c):java.lang.Object");
    }
}
