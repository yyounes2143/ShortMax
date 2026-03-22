package rq;

import io.bidmachine.rendering.model.CacheType;
import io.bidmachine.rendering.model.Orientation;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.q0;
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CacheType f65985a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Queue<c> f65986b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final q0 f65987c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final c f65988d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final Orientation f65989e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final f f65990f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, String> f65991g;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Queue<c> f65992a = new LinkedList();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, String> f65993b = new HashMap();
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private CacheType f65994c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private c f65995d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private q0 f65996e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private Orientation f65997f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private f f65998g;

        @NotNull
        public final a a(@NotNull c adPhaseParams) {
            Intrinsics.checkNotNullParameter(adPhaseParams, "adPhaseParams");
            this.f65992a.add(adPhaseParams);
            return this;
        }

        @NotNull
        public final b b() {
            f fVar = this.f65998g;
            CacheType cacheType = this.f65994c;
            if (cacheType == null) {
                cacheType = tp.k.f67634a.d();
            }
            CacheType cacheType2 = cacheType;
            Queue<c> queue = this.f65992a;
            q0 q0Var = this.f65996e;
            if (q0Var == null) {
                q0Var = new q0.a().a();
            }
            return new b(cacheType2, queue, q0Var, this.f65995d, this.f65997f, fVar, this.f65993b);
        }

        @NotNull
        public final a c(@Nullable f fVar) {
            this.f65998g = fVar;
            return this;
        }

        @NotNull
        public final a d(@NotNull CacheType cacheType) {
            Intrinsics.checkNotNullParameter(cacheType, "cacheType");
            this.f65994c = cacheType;
            return this;
        }

        @NotNull
        public final a e(@Nullable Map<String, String> map) {
            yq.s.z(this.f65993b, map);
            return this;
        }

        @NotNull
        public final a f(@Nullable Orientation orientation) {
            this.f65997f = orientation;
            return this;
        }

        @NotNull
        public final a g(@Nullable c cVar) {
            this.f65995d = cVar;
            return this;
        }

        @NotNull
        public final a h(@Nullable q0 q0Var) {
            this.f65996e = q0Var;
            return this;
        }
    }

    public b(@NotNull CacheType cacheType, @NotNull Queue<c> adPhaseParamsQueue, @NotNull q0 visibilityParams, @Nullable c cVar, @Nullable Orientation orientation, @Nullable f fVar, @NotNull Map<String, String> customParams) {
        Intrinsics.checkNotNullParameter(cacheType, "cacheType");
        Intrinsics.checkNotNullParameter(adPhaseParamsQueue, "adPhaseParamsQueue");
        Intrinsics.checkNotNullParameter(visibilityParams, "visibilityParams");
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        this.f65985a = cacheType;
        this.f65986b = adPhaseParamsQueue;
        this.f65987c = visibilityParams;
        this.f65988d = cVar;
        this.f65989e = orientation;
        this.f65990f = fVar;
        this.f65991g = customParams;
    }

    @NotNull
    public final Queue<c> a() {
        return this.f65986b;
    }

    @Nullable
    public final f b() {
        return this.f65990f;
    }

    @NotNull
    public final CacheType c() {
        return this.f65985a;
    }

    @Nullable
    public final Orientation d() {
        return this.f65989e;
    }

    @Nullable
    public final c e() {
        return this.f65988d;
    }

    @NotNull
    public final q0 f() {
        return this.f65987c;
    }
}
