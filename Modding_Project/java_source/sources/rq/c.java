package rq;

import androidx.core.view.ViewCompat;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.EventType;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f66000a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final f f66001b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Integer f66002c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final List<rq.a> f66003d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<rq.a> f66004e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<d0> f66005f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, Map<EventType, List<v>>> f66006g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, String> f66007h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final Map<AnimationEventType, d> f66008i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final List<String> f66009j;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f66010a;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        private f f66018i;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final List<rq.a> f66011b = new ArrayList();
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final List<rq.a> f66012c = new ArrayList();
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final List<d0> f66013d = new ArrayList();
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private final Map<String, Map<EventType, List<v>>> f66014e = new HashMap();
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private final Map<String, String> f66015f = new HashMap();
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final Map<AnimationEventType, d> f66016g = new EnumMap(AnimationEventType.class);
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        private final List<String> f66017h = new ArrayList();

        /* renamed from: j  reason: collision with root package name */
        private int f66019j = ViewCompat.MEASURED_STATE_MASK;

        public a(int i10) {
            this.f66010a = i10;
        }

        @NotNull
        public final a a(@NotNull rq.a adElementParams) {
            Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
            this.f66011b.add(adElementParams);
            return this;
        }

        @NotNull
        public final a b(@NotNull rq.a adElementParams) {
            Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
            this.f66012c.add(adElementParams);
            return this;
        }

        @NotNull
        public final a c(@NotNull u eventParams) {
            Intrinsics.checkNotNullParameter(eventParams, "eventParams");
            List<v> a10 = eventParams.a();
            if (!a10.isEmpty()) {
                String c10 = eventParams.c();
                Map<EventType, List<v>> map = this.f66014e.get(c10);
                if (map == null) {
                    map = new EnumMap<>(EventType.class);
                    this.f66014e.put(c10, map);
                }
                EventType b10 = eventParams.b();
                List<v> list = map.get(b10);
                if (list == null) {
                    list = new ArrayList<>();
                    map.put(b10, list);
                }
                list.addAll(a10);
            }
            return this;
        }

        @NotNull
        public final a d(@NotNull d0 methodParams) {
            Intrinsics.checkNotNullParameter(methodParams, "methodParams");
            this.f66013d.add(methodParams);
            return this;
        }

        @NotNull
        public final c e() {
            return new c(this.f66010a, this.f66018i, Integer.valueOf(this.f66019j), this.f66011b, this.f66012c, this.f66013d, this.f66014e, this.f66015f, this.f66016g, this.f66017h);
        }

        @NotNull
        public final a f(@Nullable Map<AnimationEventType, d> map) {
            yq.s.z(this.f66016g, map);
            return this;
        }

        @NotNull
        public final a g(@Nullable f fVar) {
            this.f66018i = fVar;
            return this;
        }

        @ms.c
        @NotNull
        public final a h(int i10) {
            this.f66019j = i10;
            return this;
        }

        @NotNull
        public final a i(@Nullable Map<String, String> map) {
            yq.s.z(this.f66015f, map);
            return this;
        }

        @NotNull
        public final a j(@Nullable List<String> list) {
            yq.s.y(this.f66017h, list);
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(int i10, @Nullable f fVar, @Nullable Integer num, @NotNull List<rq.a> adsList, @NotNull List<rq.a> controlsList, @NotNull List<d0> methodParamsList, @NotNull Map<String, ? extends Map<EventType, ? extends List<v>>> sourceEventTypeMap, @NotNull Map<String, String> customParams, @NotNull Map<AnimationEventType, d> animationParams, @NotNull List<String> stateGroups) {
        Intrinsics.checkNotNullParameter(adsList, "adsList");
        Intrinsics.checkNotNullParameter(controlsList, "controlsList");
        Intrinsics.checkNotNullParameter(methodParamsList, "methodParamsList");
        Intrinsics.checkNotNullParameter(sourceEventTypeMap, "sourceEventTypeMap");
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        Intrinsics.checkNotNullParameter(animationParams, "animationParams");
        Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
        this.f66000a = i10;
        this.f66001b = fVar;
        this.f66002c = num;
        this.f66003d = adsList;
        this.f66004e = controlsList;
        this.f66005f = methodParamsList;
        this.f66006g = sourceEventTypeMap;
        this.f66007h = customParams;
        this.f66008i = animationParams;
        this.f66009j = stateGroups;
    }

    @NotNull
    public final List<rq.a> a() {
        return this.f66003d;
    }

    @NotNull
    public final Map<AnimationEventType, d> b() {
        return this.f66008i;
    }

    @Nullable
    public final f c() {
        return this.f66001b;
    }

    @Nullable
    public final Integer d() {
        return this.f66002c;
    }

    @NotNull
    public final List<rq.a> e() {
        return this.f66004e;
    }

    @Nullable
    public final Map<EventType, List<v>> f(@NotNull String sourceName) {
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        return this.f66006g.get(sourceName);
    }

    @NotNull
    public final List<d0> g() {
        return this.f66005f;
    }

    public final int h() {
        return this.f66000a;
    }

    @NotNull
    public final List<String> i() {
        return this.f66009j;
    }
}
