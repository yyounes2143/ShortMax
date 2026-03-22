package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes6.dex */
public final class UrlGetRequestWorker extends CoroutineWorker {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ KProperty<Object>[] f36621a = {Reflection.property0(new PropertyReference0Impl(UrlGetRequestWorker.class, "url", "<v#0>", 0))};

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker", f = "PersistentHttpRequest.kt", l = {84}, m = "doWork")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f36622h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36623i;

        /* renamed from: k  reason: collision with root package name */
        public int f36625k;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36623i = obj;
            this.f36625k |= Integer.MIN_VALUE;
            return UrlGetRequestWorker.this.doWork(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UrlGetRequestWorker(@NotNull Context context, @NotNull WorkerParameters params) {
        super(com.moloco.sdk.internal.android_context.b.a(context), params);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(params, "params");
    }

    public static final String b(Map<String, Object> map) {
        Intrinsics.checkNotNull(map);
        return (String) p0.a(map, f36621a[0].getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull rs.c<? super androidx.work.ListenableWorker.Result> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker.a
            if (r0 == 0) goto L13
            r0 = r12
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker.a) r0
            int r1 = r0.f36625k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f36625k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker$a
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f36623i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f36625k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.f36622h
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker) r0
            kotlin.f.b(r12)
            goto L77
        L2d:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L35:
            kotlin.f.b(r12)
            com.moloco.sdk.service_locator.b$i r12 = com.moloco.sdk.service_locator.b.i.f33662a
            io.ktor.client.HttpClient r12 = r12.a()
            androidx.work.Data r2 = r11.getInputData()
            java.util.Map r2 = r2.getKeyValueMap()
            com.moloco.sdk.internal.MolocoLogger r4 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Sending request to "
            r5.append(r6)
            java.lang.String r6 = b(r2)
            r5.append(r6)
            java.lang.String r6 = r5.toString()
            r9 = 12
            r10 = 0
            java.lang.String r5 = "PersistentHttpRequest"
            r7 = 0
            r8 = 0
            com.moloco.sdk.internal.MolocoLogger.info$default(r4, r5, r6, r7, r8, r9, r10)
            java.lang.String r2 = b(r2)
            r0.f36622h = r11
            r0.f36625k = r3
            java.lang.Object r12 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.a(r12, r2, r0)
            if (r12 != r1) goto L76
            return r1
        L76:
            r0 = r11
        L77:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto L8a
            androidx.work.ListenableWorker$Result r12 = androidx.work.ListenableWorker.Result.success()
            java.lang.String r0 = "success(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r0)
            goto La4
        L8a:
            int r12 = r0.getRunAttemptCount()
            r0 = 5
            if (r12 < r0) goto L9b
            androidx.work.ListenableWorker$Result r12 = androidx.work.ListenableWorker.Result.failure()
            java.lang.String r0 = "failure(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r0)
            goto La4
        L9b:
            androidx.work.ListenableWorker$Result r12 = androidx.work.ListenableWorker.Result.retry()
            java.lang.String r0 = "retry(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r0)
        La4:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlGetRequestWorker.doWork(rs.c):java.lang.Object");
    }
}
