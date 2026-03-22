package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.moloco.sdk.internal.MolocoLogger;
import gt.g0;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class h implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f34689a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final kt.d<Boolean> f34690b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.f<Boolean> f34691c;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.RequiredContentEventHandler$handleEvent$1", f = "RequiredContentEventHandler.kt", l = {33}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34692h;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34692h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                MolocoLogger.info$default(MolocoLogger.INSTANCE, h.this.b(), "Content loaded event emitting", null, false, 12, null);
                kt.d dVar = h.this.f34690b;
                Boolean a10 = kotlin.coroutines.jvm.internal.a.a(true);
                this.f34692h = 1;
                if (dVar.emit(a10, this) == f10) {
                    return f10;
                }
            }
            MolocoLogger.info$default(MolocoLogger.INSTANCE, h.this.b(), "Content loaded event emitted", null, false, 12, null);
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.RequiredContentEventHandler$handleEvent$2", f = "RequiredContentEventHandler.kt", l = {39}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34694h;

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
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34694h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.d dVar = h.this.f34690b;
                Boolean a10 = kotlin.coroutines.jvm.internal.a.a(false);
                this.f34694h = 1;
                if (dVar.emit(a10, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public h(@NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f34689a = scope;
        kt.d<Boolean> b10 = kt.g.b(1, 0, null, 6, null);
        this.f34690b = b10;
        this.f34691c = b10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public Set<String> a() {
        return y0.j("requiredContentLoaded", "requiredContentError");
    }

    @NotNull
    public final kt.f<Boolean> c() {
        return this.f34691c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    public void a(@NotNull JSONObject event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String string = event.getString(NotificationCompat.CATEGORY_EVENT);
        if (Intrinsics.areEqual(string, "requiredContentLoaded")) {
            gt.g.d(this.f34689a, null, null, new a(null), 3, null);
        } else if (Intrinsics.areEqual(string, "requiredContentError")) {
            gt.g.d(this.f34689a, null, null, new b(null), 3, null);
        } else {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String b10 = b();
            MolocoLogger.debug$default(molocoLogger, b10, "Event not handled: " + string, false, 4, null);
            Unit unit = Unit.f60915a;
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public String b() {
        return "RequiredContentEventHandler";
    }
}
