package rq;

import io.bidmachine.rendering.model.AdElementType;
import io.bidmachine.rendering.model.AnimationEventType;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final AdElementType f65971a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final k0 f65972b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final String f65973c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f65974d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final s f65975e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final e f65976f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, String> f65977g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final Map<AnimationEventType, d> f65978h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final qq.b f65979i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final List<c0> f65980j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final m f65981k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final String f65982l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final String f65983m;

    public a(@NotNull AdElementType adElementType, @NotNull String name, @Nullable k0 k0Var, @Nullable String str, @Nullable String str2, @Nullable String str3, @NotNull s elementLayoutParams, @NotNull e appearanceParams, @NotNull Map<String, String> customParams, @NotNull Map<AnimationEventType, d> animationParams, @Nullable qq.b bVar, @Nullable List<c0> list, @Nullable m mVar) {
        Intrinsics.checkNotNullParameter(adElementType, "adElementType");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(elementLayoutParams, "elementLayoutParams");
        Intrinsics.checkNotNullParameter(appearanceParams, "appearanceParams");
        Intrinsics.checkNotNullParameter(customParams, "customParams");
        Intrinsics.checkNotNullParameter(animationParams, "animationParams");
        this.f65971a = adElementType;
        this.f65972b = k0Var;
        this.f65973c = str;
        this.f65974d = str2;
        this.f65975e = elementLayoutParams;
        this.f65976f = appearanceParams;
        this.f65977g = customParams;
        this.f65978h = animationParams;
        this.f65979i = bVar;
        this.f65980j = list;
        this.f65981k = mVar;
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = name.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        this.f65982l = lowerCase;
        this.f65983m = str3 != null ? str3 : str;
    }

    @NotNull
    public final AdElementType a() {
        return this.f65971a;
    }

    @NotNull
    public final Map<AnimationEventType, d> b() {
        return this.f65978h;
    }

    @NotNull
    public final e c() {
        return this.f65976f;
    }

    @Nullable
    public final m d() {
        return this.f65981k;
    }

    @Nullable
    public final String e(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f65977g.get(key);
    }

    @NotNull
    public final Map<String, String> f() {
        return this.f65977g;
    }

    @NotNull
    public final s g() {
        return this.f65975e;
    }

    @Nullable
    public final qq.b h() {
        return this.f65979i;
    }

    @Nullable
    public final List<c0> i() {
        return this.f65980j;
    }

    @NotNull
    public final String j() {
        return this.f65982l;
    }

    @Nullable
    public final String k() {
        return this.f65974d;
    }

    @Nullable
    public final k0 l() {
        return this.f65972b;
    }

    @Nullable
    public final String m() {
        return this.f65973c;
    }

    @Nullable
    public final String n() {
        return this.f65983m;
    }

    public /* synthetic */ a(AdElementType adElementType, String str, k0 k0Var, String str2, String str3, String str4, s sVar, e eVar, Map map, Map map2, qq.b bVar, List list, m mVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(adElementType, str, (i10 & 4) != 0 ? null : k0Var, (i10 & 8) != 0 ? null : str2, (i10 & 16) != 0 ? null : str3, (i10 & 32) != 0 ? null : str4, sVar, eVar, (i10 & 256) != 0 ? new HashMap() : map, (i10 & 512) != 0 ? new EnumMap(AnimationEventType.class) : map2, (i10 & 1024) != 0 ? null : bVar, (i10 & 2048) != 0 ? null : list, (i10 & 4096) != 0 ? null : mVar);
    }
}
