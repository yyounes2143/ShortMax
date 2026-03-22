package io.bidmachine.rendering.internal.event;

import androidx.annotation.VisibleForTesting;
import gt.g;
import gt.g0;
import io.bidmachine.rendering.internal.h;
import io.bidmachine.rendering.model.EventType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import jq.b;
import jq.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.v;
@Metadata
/* loaded from: classes8.dex */
public final class c implements b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58316a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final d f58317b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final d f58318c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final jq.c f58319d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final g0 f58320e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final h f58321f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Map<EventType, List<v>> f58322g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.event.EventCallbackImpl$processEventTasks$1", f = "EventCallbackImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58323h;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ Object[] f58325j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ EventType f58326k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Object[] objArr, EventType eventType, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f58325j = objArr;
            this.f58326k = eventType;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new a(this.f58325j, this.f58326k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f58323h == 0) {
                f.b(obj);
                d dVar = c.this.f58318c;
                List<? extends Object> g12 = CollectionsKt.g1(n.h0(this.f58325j));
                g12.add(0, this.f58326k);
                if (dVar.a(g12)) {
                    return Unit.f60915a;
                }
                List list = (List) c.this.f58322g.get(this.f58326k);
                if (list != null) {
                    if (list.isEmpty()) {
                        list = null;
                    }
                    if (list != null) {
                        c cVar = c.this;
                        ArrayList<v> arrayList = new ArrayList();
                        for (Object obj2 : list) {
                            if (!cVar.f58317b.a(((v) obj2).b())) {
                                arrayList.add(obj2);
                            }
                        }
                        c cVar2 = c.this;
                        EventType eventType = this.f58326k;
                        Object[] objArr = this.f58325j;
                        for (v vVar : arrayList) {
                            cVar2.f58319d.a(eventType, vVar, Arrays.copyOf(objArr, objArr.length));
                        }
                    }
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@NotNull String sourceName, @NotNull d stateGroupEventInterceptor, @NotNull d animationEventInterceptor, @NotNull jq.c callbackProcessor, @NotNull g0 coroutineScope, @NotNull h coroutineDispatchers, @Nullable Map<EventType, ? extends List<v>> map) {
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        Intrinsics.checkNotNullParameter(stateGroupEventInterceptor, "stateGroupEventInterceptor");
        Intrinsics.checkNotNullParameter(animationEventInterceptor, "animationEventInterceptor");
        Intrinsics.checkNotNullParameter(callbackProcessor, "callbackProcessor");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.f58316a = sourceName;
        this.f58317b = stateGroupEventInterceptor;
        this.f58318c = animationEventInterceptor;
        this.f58319d = callbackProcessor;
        this.f58320e = coroutineScope;
        this.f58321f = coroutineDispatchers;
        this.f58322g = map == null ? new EnumMap(EventType.class) : map;
    }

    @Override // jq.b
    public void a(int i10) {
        e(EventType.OnClick, Integer.valueOf(i10));
    }

    @Override // jq.b
    public void b(@Nullable Integer num) {
        e(EventType.OnMute, num);
    }

    @Override // jq.b
    public void d(boolean z10) {
        e(EventType.OnUseCustomClose, Boolean.valueOf(z10));
    }

    @Override // jq.b
    @NotNull
    public String e() {
        return this.f58316a;
    }

    @Override // jq.b
    public void i() {
        e(EventType.OnFirstQuartile, new Object[0]);
    }

    @Override // jq.b
    public void j() {
        e(EventType.OnStart, new Object[0]);
    }

    @Override // jq.b
    public void k() {
        e(EventType.OnImpression, new Object[0]);
    }

    @Override // jq.b
    public void onClose() {
        e(EventType.OnClose, new Object[0]);
    }

    @Override // jq.b
    public void a(@Nullable Integer num) {
        e(EventType.OnUnMute, num);
    }

    @Override // jq.b
    public void b() {
        e(EventType.OnResume, new Object[0]);
    }

    @Override // jq.b
    public void c() {
        e(EventType.OnThirdQuartile, new Object[0]);
    }

    @Override // jq.b
    public void d() {
        e(EventType.OnSkip, new Object[0]);
    }

    @VisibleForTesting
    public final void e(@NotNull EventType eventType, @NotNull Object... params) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(params, "params");
        g.d(this.f58320e, this.f58321f.c(), null, new a(params, eventType, null), 2, null);
    }

    @Override // jq.b
    public void f() {
        e(EventType.OnPause, new Object[0]);
    }

    @Override // jq.b
    public void g() {
        e(EventType.OnMidpoint, new Object[0]);
    }

    @Override // jq.b
    public void h() {
        e(EventType.OnScheduled, new Object[0]);
    }

    @Override // jq.b
    public void a() {
        e(EventType.OnComplete, new Object[0]);
    }

    @Override // jq.b
    public void a(long j10, long j11) {
        e(EventType.OnProgress, Long.valueOf(j10), Long.valueOf(j11));
    }

    @Override // jq.b
    public void a(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        e(EventType.OnNavigate, url);
    }
}
