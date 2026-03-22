package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.f0;
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
public final class b implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final f0 f34648a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f34649b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.d<Unit> f34650c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final kt.d<Unit> f34651d;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.ClickthroughEventHandler$handleEvent$1", f = "ClickthroughEventHandler.kt", l = {34}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34652h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f34654j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34654j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34654j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34652h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                f0 f0Var = b.this.f34648a;
                String str = this.f34654j;
                Intrinsics.checkNotNull(str);
                kt.d<Unit> dVar = b.this.f34650c;
                this.f34652h = 1;
                if (f0Var.a(str, dVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public b(@NotNull f0 clickthroughService, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f34648a = clickthroughService;
        this.f34649b = scope;
        kt.d<Unit> b10 = kt.g.b(0, 0, null, 7, null);
        this.f34650c = b10;
        this.f34651d = b10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public String b() {
        return "ClickthroughEventHandler";
    }

    @NotNull
    public final kt.d<Unit> d() {
        return this.f34651d;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public Set<String> a() {
        return y0.d("clickthrough");
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    public void a(@NotNull JSONObject event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!Intrinsics.areEqual(event.getString(NotificationCompat.CATEGORY_EVENT), CollectionsKt.q0(a()))) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String b10 = b();
            MolocoLogger.debug$default(molocoLogger, b10, "Event not supported: " + event.getString(NotificationCompat.CATEGORY_EVENT), false, 4, null);
            return;
        }
        String string = event.getString("contentType");
        MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
        String b11 = b();
        MolocoLogger.debug$default(molocoLogger2, b11, "Ad clicked on " + string, false, 4, null);
        gt.g.d(this.f34649b, null, null, new a(event.getString("url"), null), 3, null);
    }
}
