package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.moloco.sdk.internal.MolocoLogger;
import gt.g0;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class c implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f34655a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final kt.d<Unit> f34656b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.d<Unit> f34657c;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.CloseHandler$handleEvent$1", f = "CloseHandler.kt", l = {28}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34658h;

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
            int i10 = this.f34658h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.d dVar = c.this.f34656b;
                Unit unit = Unit.f60915a;
                this.f34658h = 1;
                if (dVar.emit(unit, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public c(@NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f34655a = scope;
        kt.d<Unit> b10 = kt.g.b(0, 0, null, 7, null);
        this.f34656b = b10;
        this.f34657c = b10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public Set<String> a() {
        return y0.d("close");
    }

    @NotNull
    public final kt.d<Unit> c() {
        return this.f34657c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    public void a(@NotNull JSONObject event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (Intrinsics.areEqual(event.getString(NotificationCompat.CATEGORY_EVENT), CollectionsKt.q0(a()))) {
            gt.g.d(this.f34655a, null, null, new a(null), 3, null);
            return;
        }
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String b10 = b();
        MolocoLogger.debug$default(molocoLogger, b10, "Event not supported: " + event.getString(NotificationCompat.CATEGORY_EVENT), false, 4, null);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public String b() {
        return "CloseHandler";
    }
}
