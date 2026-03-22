package com.moloco.sdk.internal.ilrd.provider;

import android.content.Context;
import android.os.Bundle;
import androidx.compose.runtime.internal.StabilityInferred;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.moloco.sdk.IlrdRequest$MaxImpression;
import com.moloco.sdk.internal.ilrd.h;
import com.moloco.sdk.internal.ilrd.k;
import gt.g;
import gt.g0;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nApplovinIlrd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplovinIlrd.kt\ncom/moloco/sdk/internal/ilrd/provider/ApplovinIlrd\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,148:1\n1#2:149\n*E\n"})
/* loaded from: classes6.dex */
public final class a implements h {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final C0472a f32285h = new C0472a(null);

    /* renamed from: i  reason: collision with root package name */
    public static final int f32286i = 8;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public static volatile AppLovinCommunicatorSubscriber f32287j;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f32288a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f32289b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.ilrd.model.a f32290c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final i f32291d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final i f32292e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.e<k> f32293f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final kt.d<h.a.b> f32294g;

    /* renamed from: com.moloco.sdk.internal.ilrd.provider.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0472a {
        public /* synthetic */ C0472a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C0472a() {
        }
    }

    /* loaded from: classes6.dex */
    public static final class b implements AppLovinCommunicatorSubscriber {

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.ilrd.provider.ApplovinIlrd$createCallback$1$onMessageReceived$1", f = "ApplovinIlrd.kt", l = {106}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.internal.ilrd.provider.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0473a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f32296h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ a f32297i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ h.a.b f32298j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0473a(a aVar, h.a.b bVar, rs.c<? super C0473a> cVar) {
                super(2, cVar);
                this.f32297i = aVar;
                this.f32298j = bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return ((C0473a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0473a(this.f32297i, this.f32298j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f32296h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    kt.d dVar = this.f32297i.f32294g;
                    h.a.b bVar = this.f32298j;
                    this.f32296h = 1;
                    if (dVar.emit(bVar, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        public b() {
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorEntity
        public String getCommunicatorId() {
            return "Moloco";
        }

        @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
        public void onMessageReceived(AppLovinCommunicatorMessage message) {
            Intrinsics.checkNotNullParameter(message, "message");
            if (kotlinx.coroutines.i.h(a.this.f32289b) && Intrinsics.areEqual("max_revenue_events", message.getTopic())) {
                Bundle messageData = message.getMessageData();
                Intrinsics.checkNotNullExpressionValue(messageData, "getMessageData(...)");
                g.d(a.this.f32289b, null, null, new C0473a(a.this, a.this.a(messageData), null), 3, null);
            }
        }
    }

    public a(@NotNull Context context, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f32288a = context;
        this.f32289b = scope;
        this.f32290c = com.moloco.sdk.internal.ilrd.model.a.f32281a;
        this.f32291d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.provider.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.g(a.this);
            }
        });
        this.f32292e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.ilrd.provider.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return a.e(a.this);
            }
        });
        this.f32293f = o.a(k.c.f32280a);
        this.f32294g = kt.g.b(0, 0, null, 7, null);
    }

    public static final kt.f e(a aVar) {
        return kotlinx.coroutines.flow.c.c(aVar.f32294g);
    }

    public static final kt.i g(a aVar) {
        return kotlinx.coroutines.flow.c.d(aVar.f32293f);
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public com.moloco.sdk.internal.ilrd.model.a a() {
        return this.f32290c;
    }

    public final b f() {
        return new b();
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public kt.i<k> getState() {
        return (kt.i) this.f32291d.getValue();
    }

    public final Object h() {
        Object d10;
        try {
            Result.a aVar = Result.f60901b;
            int i10 = AppLovinCommunicator.f7278g;
            int i11 = AppLovinCommunicatorMessage.f7283b;
            d10 = Result.d(AppLovinCommunicator.getInstance(this.f32288a));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        Throwable g10 = Result.g(d10);
        if (g10 == null) {
            b f10 = f();
            f32287j = f10;
            ((AppLovinCommunicator) d10).subscribe(f10, "max_revenue_events");
            return Result.d(Unit.f60915a);
        }
        return Result.d(kotlin.f.a(g10));
    }

    public final h.a.b a(Bundle bundle) {
        double d10 = bundle.getDouble("revenue");
        String string = bundle.getString("country_code");
        String string2 = bundle.getString("network_name");
        String string3 = bundle.getString("max_ad_unit_id");
        String string4 = bundle.getString("third_party_ad_placement_id");
        String string5 = bundle.getString("ad_format");
        String string6 = bundle.getString("user_segment");
        String string7 = bundle.getString("id");
        IlrdRequest$MaxImpression.a newBuilder = IlrdRequest$MaxImpression.newBuilder();
        newBuilder.g(d10);
        if (string != null) {
            newBuilder.b(string);
        }
        if (string2 != null) {
            newBuilder.f(string2);
        }
        if (string3 != null) {
            newBuilder.e(string3);
        }
        if (string4 != null) {
            newBuilder.h(string4);
        }
        if (string5 != null) {
            newBuilder.a(string5);
        }
        if (string6 != null) {
            newBuilder.i(string6);
        }
        if (string7 != null) {
            newBuilder.c(string7);
        }
        IlrdRequest$MaxImpression build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return new h.a.b(build);
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public synchronized Object b() {
        Object h10;
        try {
            h10 = h();
            Throwable g10 = Result.g(h10);
            if (g10 != null) {
                this.f32293f.setValue(new k.a(g10.toString()));
            }
            if (Result.j(h10)) {
                Unit unit = (Unit) h10;
                this.f32293f.setValue(k.b.f32279a);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return h10;
    }

    @Override // com.moloco.sdk.internal.ilrd.h
    @NotNull
    public kt.f<h.a.b> c() {
        return (kt.f) this.f32292e.getValue();
    }
}
