package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l;
import gt.g0;
import io.ktor.http.a;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.y0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class e implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final l f34661a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f34662b;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.HttpEventHandler$handleGetRequest$1", f = "HttpEventHandler.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34663h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f34665j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34665j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34665j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34663h == 0) {
                kotlin.f.b(obj);
                e.this.f34661a.a(this.f34665j);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.HttpEventHandler$handlePostRequest$1", f = "HttpEventHandler.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34666h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ String f34667i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ e f34668j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f34669k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ io.ktor.http.a f34670l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, e eVar, String str2, io.ktor.http.a aVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34667i = str;
            this.f34668j = eVar;
            this.f34669k = str2;
            this.f34670l = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34667i, this.f34668j, this.f34669k, this.f34670l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34666h == 0) {
                kotlin.f.b(obj);
                byte[] bytes = this.f34667i.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                f.a.a(this.f34668j.f34661a, this.f34669k, bytes, this.f34670l, null, 8, null);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public e(@NotNull l persistentHttpRequest) {
        Intrinsics.checkNotNullParameter(persistentHttpRequest, "persistentHttpRequest");
        this.f34661a = persistentHttpRequest;
        this.f34662b = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getIo());
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public String b() {
        return "HttpEventHandler";
    }

    public final r c(String str, String str2, io.ktor.http.a aVar) {
        r d10;
        d10 = gt.g.d(this.f34662b, null, null, new b(str2, this, str, aVar, null), 3, null);
        return d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public Set<String> a() {
        return y0.j("sendGet", "sendPost");
    }

    public final r b(String str) {
        r d10;
        d10 = gt.g.d(this.f34662b, null, null, new a(str, null), 3, null);
        return d10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    public void a(@NotNull JSONObject event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String string = event.getString(NotificationCompat.CATEGORY_EVENT);
        if (Intrinsics.areEqual(string, "sendGet")) {
            String string2 = event.getString("url");
            Intrinsics.checkNotNull(string2);
            b(string2);
        } else if (Intrinsics.areEqual(string, "sendPost")) {
            String string3 = event.getString("url");
            String string4 = event.getString("body");
            a.b bVar = io.ktor.http.a.f59220f;
            String optString = event.optString("contentType", bVar.a().toString());
            Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
            io.ktor.http.a b10 = bVar.b(optString);
            Intrinsics.checkNotNull(string3);
            Intrinsics.checkNotNull(string4);
            c(string3, string4, b10);
        } else {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String b11 = b();
            MolocoLogger.error$default(molocoLogger, b11, "Unsupported event type: " + string, null, false, 12, null);
            Unit unit = Unit.f60915a;
        }
    }
}
