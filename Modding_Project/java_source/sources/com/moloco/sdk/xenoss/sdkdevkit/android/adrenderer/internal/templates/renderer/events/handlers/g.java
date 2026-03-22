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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f34676a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final kt.d<a> f34677b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.d<a> f34678c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes6.dex */
    public static final class a {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final C0538a f34679b;

        /* renamed from: c  reason: collision with root package name */
        public static final a f34680c = new a("VIDEO", 0, "videoContainer");

        /* renamed from: d  reason: collision with root package name */
        public static final a f34681d = new a("MRAID", 1, "mraidContainer");

        /* renamed from: e  reason: collision with root package name */
        public static final a f34682e = new a("STATIC", 2, "staticContainer");

        /* renamed from: f  reason: collision with root package name */
        public static final /* synthetic */ a[] f34683f;

        /* renamed from: g  reason: collision with root package name */
        public static final /* synthetic */ ss.a f34684g;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final String f34685a;

        @SourceDebugExtension({"SMAP\nPlayListItemDisplayingEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayListItemDisplayingEventHandler.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/PlayListItemDisplayingEventHandler$PlaylistContainerType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"})
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0538a {
            public /* synthetic */ C0538a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final a a(@NotNull String value) {
                a[] values;
                Intrinsics.checkNotNullParameter(value, "value");
                for (a aVar : a.values()) {
                    if (Intrinsics.areEqual(aVar.c(), value)) {
                        return aVar;
                    }
                }
                return null;
            }

            public C0538a() {
            }
        }

        static {
            a[] a10 = a();
            f34683f = a10;
            f34684g = kotlin.enums.a.a(a10);
            f34679b = new C0538a(null);
        }

        public a(String str, int i10, String str2) {
            this.f34685a = str2;
        }

        public static final /* synthetic */ a[] a() {
            return new a[]{f34680c, f34681d, f34682e};
        }

        @NotNull
        public static ss.a<a> b() {
            return f34684g;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f34683f.clone();
        }

        @NotNull
        public final String c() {
            return this.f34685a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.PlayListItemDisplayingEventHandler$handleEvent$1", f = "PlayListItemDisplayingEventHandler.kt", l = {34}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34686h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ a f34688j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(a aVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34688j = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34688j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34686h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.d dVar = g.this.f34677b;
                a aVar = this.f34688j;
                this.f34686h = 1;
                if (dVar.emit(aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public g(@NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f34676a = scope;
        kt.d<a> b10 = kt.g.b(0, 0, null, 7, null);
        this.f34677b = b10;
        this.f34678c = b10;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public Set<String> a() {
        return y0.d("playlistItemDisplaying");
    }

    @NotNull
    public final kt.d<a> c() {
        return this.f34678c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    public void a(@NotNull JSONObject event) {
        Intrinsics.checkNotNullParameter(event, "event");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String b10 = b();
        MolocoLogger.debug$default(molocoLogger, b10, event + " displaying.", false, 4, null);
        if (!Intrinsics.areEqual(event.getString(NotificationCompat.CATEGORY_EVENT), CollectionsKt.q0(a()))) {
            String b11 = b();
            MolocoLogger.debug$default(molocoLogger, b11, "Event not supported: " + event.getString(NotificationCompat.CATEGORY_EVENT), false, 4, null);
            return;
        }
        String string = event.getString("creativeType");
        a.C0538a c0538a = a.f34679b;
        Intrinsics.checkNotNull(string);
        a a10 = c0538a.a(string);
        String b12 = b();
        MolocoLogger.debug$default(molocoLogger, b12, a10 + " displaying.", false, 4, null);
        if (a10 != null) {
            gt.g.d(this.f34676a, null, null, new b(a10, null), 3, null);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a
    @NotNull
    public String b() {
        return "PlayListItemDisplayingEventHandler";
    }
}
