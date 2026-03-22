package com.moloco.sdk.internal.ilrd;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.ilrd.h;
import com.moloco.sdk.internal.ilrd.k;
import gt.g0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f32256f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    public static final int f32257g = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f32258a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final IlrdEventsRepository f32259b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final ms.i f32260c;

    /* renamed from: d  reason: collision with root package name */
    public final Set<h> f32261d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public r f32262e;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdService$subscribe$1", f = "IlrdService.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nIlrdService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrdService.kt\ncom/moloco/sdk/internal/ilrd/IlrdService$subscribe$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n1863#2,2:127\n*S KotlinDebug\n*F\n+ 1 IlrdService.kt\ncom/moloco/sdk/internal/ilrd/IlrdService$subscribe$1\n*L\n62#1:127,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32263h;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32263h == 0) {
                kotlin.f.b(obj);
                List<h> b10 = e.this.b();
                e eVar = e.this;
                for (h hVar : b10) {
                    k value = hVar.getState().getValue();
                    if (value instanceof k.a) {
                        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                        MolocoLogger.warn$default(molocoLogger, "IlrdService", "Failed to subscribe to " + hVar.a() + " ILRD: " + ((k.a) value).a(), null, false, 12, null);
                    } else if (value instanceof k.c) {
                        eVar.d(hVar);
                    } else if (!(value instanceof k.b)) {
                        throw new NoWhenBranchMatchedException();
                    }
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.IlrdService$subscribeToProvider$2$1", f = "IlrdService.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<h.a, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32265h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f32266i;

        public c(rs.c<? super c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            c cVar2 = new c(cVar);
            cVar2.f32266i = obj;
            return cVar2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(h.a aVar, rs.c<? super Unit> cVar) {
            return ((c) create(aVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32265h == 0) {
                kotlin.f.b(obj);
                h.a aVar = (h.a) this.f32266i;
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.info$default(molocoLogger, "IlrdService", "Revenue event: " + aVar, null, false, 12, null);
                e.this.f32259b.i(aVar);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public e(@NotNull g0 scope, @NotNull final Context context, @NotNull IlrdEventsRepository eventsRepository, @NotNull final List<? extends Init$SDKInitResponse.SupportedNetworks> supportedNetworksList) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(supportedNetworksList, "supportedNetworksList");
        this.f32258a = scope;
        this.f32259b = eventsRepository;
        this.f32260c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return e.c(supportedNetworksList, context, this);
            }
        });
        this.f32261d = Collections.synchronizedSet(new LinkedHashSet());
    }

    public static final List c(List list, Context context, e eVar) {
        ArrayList arrayList = new ArrayList();
        if (list.contains(Init$SDKInitResponse.SupportedNetworks.MAX)) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "IlrdService", "Adding AppLovin as ILRD provider", null, false, 12, null);
            arrayList.add(new com.moloco.sdk.internal.ilrd.provider.a(context, eVar.f32258a));
        }
        if (list.contains(Init$SDKInitResponse.SupportedNetworks.LEVEL_PLAY)) {
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "IlrdService", "Adding IronSource as ILRD provider", null, false, 12, null);
            arrayList.add(new com.moloco.sdk.internal.ilrd.provider.f(context, eVar.f32258a));
        }
        return CollectionsKt.d1(arrayList);
    }

    public final List<h> b() {
        return (List) this.f32260c.getValue();
    }

    public final void d(h hVar) {
        Object b10 = hVar.b();
        Throwable g10 = Result.g(b10);
        if (g10 != null) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.warn$default(molocoLogger, "IlrdService", "Failed to subscribe to " + hVar.a() + " ILRD: " + g10, null, false, 12, null);
        }
        if (Result.j(b10)) {
            Unit unit = (Unit) b10;
            this.f32261d.add(hVar);
            kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(hVar.c(), new c(null)), this.f32258a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000b, code lost:
        r0 = com.moloco.sdk.internal.ilrd.j.b(r0);
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.moloco.sdk.internal.services.bidtoken.providers.q f() {
        /*
            r8 = this;
            com.moloco.sdk.internal.ilrd.IlrdEventsRepository r0 = r8.f32259b
            r0.l()
            com.moloco.sdk.internal.ilrd.a r0 = r0.j()
            if (r0 == 0) goto L11
            com.moloco.sdk.internal.services.bidtoken.providers.q r0 = com.moloco.sdk.internal.ilrd.j.a(r0)
            if (r0 != 0) goto L20
        L11:
            com.moloco.sdk.internal.MolocoLogger r1 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
            r6 = 12
            r7 = 0
            java.lang.String r2 = "IlrdService"
            java.lang.String r3 = "provideDataForBidToken() Session is null"
            r4 = 0
            r5 = 0
            com.moloco.sdk.internal.MolocoLogger.warn$default(r1, r2, r3, r4, r5, r6, r7)
            r0 = 0
        L20:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.ilrd.e.f():com.moloco.sdk.internal.services.bidtoken.providers.q");
    }

    public final synchronized void h() {
        r d10;
        r rVar = this.f32262e;
        if (rVar == null || !rVar.isActive()) {
            d10 = gt.g.d(this.f32258a, null, null, new b(null), 3, null);
            this.f32262e = d10;
        }
    }
}
