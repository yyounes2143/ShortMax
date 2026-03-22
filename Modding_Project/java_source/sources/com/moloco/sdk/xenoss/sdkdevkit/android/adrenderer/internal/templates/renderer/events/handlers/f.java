package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.NotificationCompat;
import com.moloco.sdk.internal.MolocoLogger;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nCompositeEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeEventHandler.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/CompositeEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1368#2:100\n1454#2,5:101\n1279#2,2:106\n1293#2,2:108\n774#2:110\n865#2,2:111\n1296#2:113\n*S KotlinDebug\n*F\n+ 1 CompositeEventHandler.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/templates/renderer/events/handlers/CompositeEventHandler\n*L\n19#1:100\n19#1:101,5\n19#1:106,2\n19#1:108,2\n20#1:110\n20#1:111,2\n19#1:113\n*E\n"})
/* loaded from: classes6.dex */
public final class f {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f34671d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f34672e = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Set<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> f34673a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f34674b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final ms.i f34675c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@NotNull Set<? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> eventHandlers, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder) {
        Intrinsics.checkNotNullParameter(eventHandlers, "eventHandlers");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        this.f34673a = eventHandlers;
        this.f34674b = metricsRecorder;
        this.f34675c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return f.b(f.this);
            }
        });
    }

    public static final Map b(f fVar) {
        Set<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> set = fVar.f34673a;
        ArrayList arrayList = new ArrayList();
        for (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a aVar : set) {
            CollectionsKt.E(arrayList, aVar.a());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(CollectionsKt.z(arrayList, 10)), 16));
        for (Object obj : arrayList) {
            String str = (String) obj;
            Set<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> set2 = fVar.f34673a;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : set2) {
                if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a) obj2).a().contains(str)) {
                    arrayList2.add(obj2);
                }
            }
            linkedHashMap.put(obj, arrayList2);
        }
        return linkedHashMap;
    }

    public final Map<String, List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a>> a() {
        return (Map) this.f34675c.getValue();
    }

    public final void c(@NotNull String event) {
        com.moloco.sdk.acm.e eVar;
        String str;
        com.moloco.sdk.acm.e eVar2;
        com.moloco.sdk.internal.client_metrics_data.c cVar;
        Intrinsics.checkNotNullParameter(event, "event");
        com.moloco.sdk.acm.e c10 = this.f34674b.c(com.moloco.sdk.internal.client_metrics_data.d.f32081s.c());
        JSONObject jSONObject = new JSONObject(event);
        String string = jSONObject.getString(NotificationCompat.CATEGORY_EVENT);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.debug$default(molocoLogger, "CompositeEventHandler", "Event received: " + string, false, 4, null);
        List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a> list = a().get(string);
        if (list != null && !list.isEmpty()) {
            if (list.size() > 1) {
                eVar = c10;
                str = "failure";
                MolocoLogger.warn$default(molocoLogger, "CompositeEventHandler", "Found multiple event handlers for event: " + string + ", using first one", null, false, 12, null);
                com.moloco.sdk.acm.recorder.a aVar = this.f34674b;
                com.moloco.sdk.acm.b e10 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.H.c()).e(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), str);
                Intrinsics.checkNotNull(string);
                aVar.b(e10.e(NotificationCompat.CATEGORY_EVENT, string));
            } else {
                eVar = c10;
                str = "failure";
            }
            com.moloco.sdk.acm.e c11 = this.f34674b.c(com.moloco.sdk.internal.client_metrics_data.d.f32082t.c());
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a aVar2 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.a) CollectionsKt.r0(list);
            try {
                aVar2.a(jSONObject);
                MolocoLogger.debug$default(molocoLogger, "CompositeEventHandler", "Event handled: " + string, false, 4, null);
                com.moloco.sdk.acm.recorder.a aVar3 = this.f34674b;
                Intrinsics.checkNotNull(string);
                com.moloco.sdk.acm.e f10 = c11.f(NotificationCompat.CATEGORY_EVENT, string).f("handler", aVar2.b());
                cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                aVar3.a(f10.f(cVar.c(), "success"));
                this.f34674b.b(new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.G.c()).e(cVar.c(), "success").e("handler", aVar2.b()).e(NotificationCompat.CATEGORY_EVENT, string));
                eVar2 = eVar;
            } catch (Exception e11) {
                e = e11;
                eVar2 = eVar;
            }
            try {
                this.f34674b.a(eVar2.f(cVar.c(), "success").f("handler", aVar2.b()).f(NotificationCompat.CATEGORY_EVENT, string));
                return;
            } catch (Exception e12) {
                e = e12;
                MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                MolocoLogger.warn$default(molocoLogger2, "CompositeEventHandler", "Event handling failed: " + string, e, false, 8, null);
                com.moloco.sdk.acm.recorder.a aVar4 = this.f34674b;
                Intrinsics.checkNotNull(string);
                com.moloco.sdk.acm.e f11 = c11.f(NotificationCompat.CATEGORY_EVENT, string).f("handler", aVar2.b());
                com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
                String c12 = cVar2.c();
                String simpleName = e.getClass().getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                com.moloco.sdk.acm.e f12 = f11.f(c12, simpleName);
                com.moloco.sdk.internal.client_metrics_data.c cVar3 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                aVar4.a(f12.f(cVar3.c(), str));
                com.moloco.sdk.acm.recorder.a aVar5 = this.f34674b;
                com.moloco.sdk.acm.b e13 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.G.c()).e(cVar3.c(), str);
                String c13 = cVar2.c();
                String simpleName2 = e.getClass().getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
                aVar5.b(e13.e(c13, simpleName2).e("handler", aVar2.b()).e(NotificationCompat.CATEGORY_EVENT, string));
                com.moloco.sdk.acm.recorder.a aVar6 = this.f34674b;
                com.moloco.sdk.acm.e f13 = eVar2.f(cVar3.c(), str);
                String c14 = cVar2.c();
                String simpleName3 = e.getClass().getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName3, "getSimpleName(...)");
                aVar6.a(f13.f(c14, simpleName3).f("handler", aVar2.b()).f(NotificationCompat.CATEGORY_EVENT, string));
                return;
            }
        }
        MolocoLogger.error$default(molocoLogger, "CompositeEventHandler", "Event not handled: " + string, null, false, 12, null);
        com.moloco.sdk.acm.recorder.a aVar7 = this.f34674b;
        com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.G.c());
        com.moloco.sdk.internal.client_metrics_data.c cVar4 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
        com.moloco.sdk.acm.b e14 = bVar.e(cVar4.c(), "failure");
        com.moloco.sdk.internal.client_metrics_data.c cVar5 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
        com.moloco.sdk.acm.b e15 = e14.e(cVar5.c(), "no_handler");
        Intrinsics.checkNotNull(string);
        aVar7.b(e15.e(NotificationCompat.CATEGORY_EVENT, string));
        this.f34674b.a(c10.f(cVar4.c(), "failure").f(cVar5.c(), "no_handler").f(NotificationCompat.CATEGORY_EVENT, string));
    }
}
