package com.moloco.sdk.acm.eventprocessing;

import android.database.sqlite.SQLiteException;
import gt.g0;
import gt.q0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class i implements f {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f31888e = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.acm.db.d f31889a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.acm.services.f f31890b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g f31891c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.acm.services.b f31892d;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.EventProcessorImpl$processCountEvent$2", f = "EventProcessor.kt", l = {49}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processCountEvent$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1557#2:95\n1628#2,3:96\n*S KotlinDebug\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processCountEvent$2\n*L\n49#1:95\n49#1:96,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31893h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.b f31895j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.moloco.sdk.acm.b bVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f31895j = bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f31895j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f31893h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                i iVar = i.this;
                String c10 = this.f31895j.c();
                com.moloco.sdk.acm.db.c cVar = com.moloco.sdk.acm.db.c.f31846b;
                long a10 = this.f31895j.a();
                List<com.moloco.sdk.acm.c> b10 = this.f31895j.b();
                ArrayList arrayList = new ArrayList(CollectionsKt.z(b10, 10));
                for (com.moloco.sdk.acm.c cVar2 : b10) {
                    arrayList.add(com.moloco.sdk.acm.i.a(cVar2));
                }
                this.f31893h = 1;
                if (iVar.e(c10, cVar, a10, arrayList, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.EventProcessorImpl$processEvent$2", f = "EventProcessor.kt", l = {79, 80}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31896h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ String f31897i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ i f31898j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.db.c f31899k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ long f31900l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ List<String> f31901m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, i iVar, com.moloco.sdk.acm.db.c cVar, long j10, List<String> list, rs.c<? super c> cVar2) {
            super(2, cVar2);
            this.f31897i = str;
            this.f31898j = iVar;
            this.f31899k = cVar;
            this.f31900l = j10;
            this.f31901m = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f31897i, this.f31898j, this.f31899k, this.f31900l, this.f31901m, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f31896h;
            try {
            } catch (SQLiteException e10) {
                com.moloco.sdk.acm.services.e eVar = com.moloco.sdk.acm.services.e.f31983a;
                com.moloco.sdk.acm.services.e.f(eVar, "EventProcessor", "Database error: " + e10.getMessage(), false, 4, null);
            } catch (Exception e11) {
                com.moloco.sdk.acm.services.e eVar2 = com.moloco.sdk.acm.services.e.f31983a;
                com.moloco.sdk.acm.services.e.f(eVar2, "EventProcessor", "Unexpected error while processing event: " + e11.getMessage(), false, 4, null);
            }
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                this.f31898j.f31889a.b(new com.moloco.sdk.acm.db.b(0L, this.f31897i, this.f31898j.f31890b.invoke(), this.f31899k, kotlin.coroutines.jvm.internal.a.e(this.f31900l), this.f31901m, 1, null));
                g gVar = this.f31898j.f31891c;
                this.f31896h = 1;
                if (gVar.c(this) == f10) {
                    return f10;
                }
            }
            com.moloco.sdk.acm.services.b bVar = this.f31898j.f31892d;
            this.f31896h = 2;
            if (bVar.a(this) == f10) {
                return f10;
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.EventProcessorImpl$processTimerEvent$2", f = "EventProcessor.kt", l = {58, 60}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processTimerEvent$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1557#2:95\n1628#2,3:96\n1557#2:99\n1628#2,3:100\n*S KotlinDebug\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processTimerEvent$2\n*L\n58#1:95\n58#1:96,3\n60#1:99\n60#1:100,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31902h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.e f31903i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ i f31904j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(com.moloco.sdk.acm.e eVar, i iVar, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f31903i = eVar;
            this.f31904j = iVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f31903i, this.f31904j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f31902h;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                if (this.f31903i.c() > 0) {
                    i iVar = this.f31904j;
                    String b10 = this.f31903i.b();
                    com.moloco.sdk.acm.db.c cVar = com.moloco.sdk.acm.db.c.f31845a;
                    long c10 = this.f31903i.c();
                    List<com.moloco.sdk.acm.c> a10 = this.f31903i.a();
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(a10, 10));
                    for (com.moloco.sdk.acm.c cVar2 : a10) {
                        arrayList.add(com.moloco.sdk.acm.i.a(cVar2));
                    }
                    this.f31902h = 1;
                    if (iVar.e(b10, cVar, c10, arrayList, this) == f10) {
                        return f10;
                    }
                } else {
                    i iVar2 = this.f31904j;
                    String str = "negative_time_" + this.f31903i.b();
                    com.moloco.sdk.acm.db.c cVar3 = com.moloco.sdk.acm.db.c.f31845a;
                    long c11 = this.f31903i.c();
                    List<com.moloco.sdk.acm.c> a11 = this.f31903i.a();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.z(a11, 10));
                    for (com.moloco.sdk.acm.c cVar4 : a11) {
                        arrayList2.add(com.moloco.sdk.acm.i.a(cVar4));
                    }
                    this.f31902h = 2;
                    if (iVar2.e(str, cVar3, c11, arrayList2, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    public i(@NotNull com.moloco.sdk.acm.db.d metricsDAO, @NotNull com.moloco.sdk.acm.services.f timeProviderService, @NotNull g requestScheduler, @NotNull com.moloco.sdk.acm.services.b applicationLifecycle) {
        Intrinsics.checkNotNullParameter(metricsDAO, "metricsDAO");
        Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
        Intrinsics.checkNotNullParameter(requestScheduler, "requestScheduler");
        Intrinsics.checkNotNullParameter(applicationLifecycle, "applicationLifecycle");
        this.f31889a = metricsDAO;
        this.f31890b = timeProviderService;
        this.f31891c = requestScheduler;
        this.f31892d = applicationLifecycle;
    }

    @Override // com.moloco.sdk.acm.eventprocessing.f
    @Nullable
    public Object a(@NotNull com.moloco.sdk.acm.b bVar, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(q0.b(), new b(bVar, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.acm.eventprocessing.f
    @Nullable
    public Object b(@NotNull com.moloco.sdk.acm.e eVar, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(q0.b(), new d(eVar, this, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    public final Object e(String str, com.moloco.sdk.acm.db.c cVar, long j10, List<String> list, rs.c<? super Unit> cVar2) {
        Object g10 = gt.e.g(q0.b(), new c(str, this, cVar, j10, list, null), cVar2);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
