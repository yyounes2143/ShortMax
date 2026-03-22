package com.moloco.sdk.acm.eventprocessing;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import com.moloco.sdk.acm.db.MetricsDb;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
@SourceDebugExtension({"SMAP\nDBWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBRequestWorker\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,134:1\n503#2,7:135\n*S KotlinDebug\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBRequestWorker\n*L\n95#1:135,7\n*E\n"})
/* loaded from: classes6.dex */
public final class DBRequestWorker extends CoroutineWorker {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f31872a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.acm.db.d f31873b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f31874c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f31875d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final Function1<wr.g, Unit> f31876e;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.DBRequestWorker", f = "DBWorkRequest.kt", l = {110}, m = "doWork")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f31877h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f31878i;

        /* renamed from: k  reason: collision with root package name */
        public int f31880k;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f31878i = obj;
            this.f31880k |= Integer.MIN_VALUE;
            return DBRequestWorker.this.doWork(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBRequestWorker(@NotNull Context context, @NotNull WorkerParameters params) {
        super(context, params);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(params, "params");
        this.f31872a = "DBRequestWorker";
        this.f31873b = MetricsDb.f31835a.b(context).g();
        this.f31874c = getInputData().getString("url");
        Map m10 = p0.m(ms.k.a("AppKey", getInputData().getString("AppKey")), ms.k.a("AppBundle", getInputData().getString("AppBundle")), ms.k.a("AppVersion", getInputData().getString("AppVersion")), ms.k.a("OS", getInputData().getString("OS")), ms.k.a("osv", getInputData().getString("osv")), ms.k.a("SdkVersion", getInputData().getString("SdkVersion")), ms.k.a("Mediator", getInputData().getString("Mediator")));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : m10.entrySet()) {
            if (((String) entry.getValue()) != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        this.f31875d = linkedHashMap;
        this.f31876e = new com.moloco.sdk.acm.http.b().b((String) linkedHashMap.get("SdkVersion"), (String) linkedHashMap.get("osv"), (String) linkedHashMap.get("AppKey"), (String) linkedHashMap.get("AppBundle"), (String) linkedHashMap.get("AppVersion"), (String) linkedHashMap.get("Mediator"));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull rs.c<? super androidx.work.ListenableWorker.Result> r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.moloco.sdk.acm.eventprocessing.DBRequestWorker.a
            if (r0 == 0) goto L13
            r0 = r10
            com.moloco.sdk.acm.eventprocessing.DBRequestWorker$a r0 = (com.moloco.sdk.acm.eventprocessing.DBRequestWorker.a) r0
            int r1 = r0.f31880k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31880k = r1
            goto L18
        L13:
            com.moloco.sdk.acm.eventprocessing.DBRequestWorker$a r0 = new com.moloco.sdk.acm.eventprocessing.DBRequestWorker$a
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f31878i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f31880k
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r0 = r0.f31877h
            com.moloco.sdk.acm.eventprocessing.DBRequestWorker r0 = (com.moloco.sdk.acm.eventprocessing.DBRequestWorker) r0
            kotlin.f.b(r10)     // Catch: java.lang.Exception -> L32
            kotlin.Result r10 = (kotlin.Result) r10     // Catch: java.lang.Exception -> L32
            r10.n()     // Catch: java.lang.Exception -> L32
            goto L76
        L32:
            r10 = move-exception
            goto L7b
        L34:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L3c:
            kotlin.f.b(r10)
            java.lang.String r10 = r9.f31874c     // Catch: java.lang.Exception -> L72
            if (r10 == 0) goto L75
            com.moloco.sdk.acm.http.d r10 = com.moloco.sdk.acm.http.d.f31949a     // Catch: java.lang.Exception -> L72
            io.ktor.client.HttpClient r2 = com.moloco.sdk.acm.http.h.d()     // Catch: java.lang.Exception -> L72
            java.lang.String r4 = r9.f31874c     // Catch: java.lang.Exception -> L72
            r10.b(r2, r4)     // Catch: java.lang.Exception -> L72
            com.moloco.sdk.acm.eventprocessing.k r2 = new com.moloco.sdk.acm.eventprocessing.k     // Catch: java.lang.Exception -> L72
            com.moloco.sdk.acm.http.j r10 = r10.a()     // Catch: java.lang.Exception -> L72
            com.moloco.sdk.acm.db.d r4 = r9.f31873b     // Catch: java.lang.Exception -> L72
            com.moloco.sdk.acm.eventprocessing.e r5 = new com.moloco.sdk.acm.eventprocessing.e     // Catch: java.lang.Exception -> L72
            com.moloco.sdk.acm.services.g r6 = new com.moloco.sdk.acm.services.g     // Catch: java.lang.Exception -> L72
            r6.<init>()     // Catch: java.lang.Exception -> L72
            r7 = 720(0x2d0, double:3.557E-321)
            r5.<init>(r6, r7)     // Catch: java.lang.Exception -> L72
            kotlin.jvm.functions.Function1<wr.g, kotlin.Unit> r6 = r9.f31876e     // Catch: java.lang.Exception -> L72
            r2.<init>(r10, r4, r5, r6)     // Catch: java.lang.Exception -> L72
            r0.f31877h = r9     // Catch: java.lang.Exception -> L72
            r0.f31880k = r3     // Catch: java.lang.Exception -> L72
            java.lang.Object r10 = r2.a(r0)     // Catch: java.lang.Exception -> L72
            if (r10 != r1) goto L75
            return r1
        L72:
            r10 = move-exception
            r0 = r9
            goto L7b
        L75:
            r0 = r9
        L76:
            androidx.work.ListenableWorker$Result r10 = androidx.work.ListenableWorker.Result.success()     // Catch: java.lang.Exception -> L32
            goto La0
        L7b:
            com.moloco.sdk.acm.services.e r1 = com.moloco.sdk.acm.services.e.f31983a
            java.lang.String r2 = r0.f31872a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "Work Manager failure: "
            r0.append(r3)
            java.lang.String r10 = r10.getMessage()
            r0.append(r10)
            java.lang.String r3 = r0.toString()
            r6 = 12
            r7 = 0
            r4 = 0
            r5 = 0
            com.moloco.sdk.acm.services.e.e(r1, r2, r3, r4, r5, r6, r7)
            androidx.work.ListenableWorker$Result r10 = androidx.work.ListenableWorker.Result.failure()
        La0:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.eventprocessing.DBRequestWorker.doWork(rs.c):java.lang.Object");
    }
}
