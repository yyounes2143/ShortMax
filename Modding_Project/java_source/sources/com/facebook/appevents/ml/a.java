package com.facebook.appevents.ml;

import androidx.annotation.RestrictTo;
import b2.g;
import b2.h;
import com.facebook.appevents.ml.ModelManager;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Model.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final C0254a f15159m = new C0254a(null);
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final Map<String, String> f15160n = p0.k(k.a("embedding.weight", "embed.weight"), k.a("dense1.weight", "fc1.weight"), k.a("dense2.weight", "fc2.weight"), k.a("dense3.weight", "fc3.weight"), k.a("dense1.bias", "fc1.bias"), k.a("dense2.bias", "fc2.bias"), k.a("dense3.bias", "fc3.bias"));
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final b2.a f15161a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final b2.a f15162b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b2.a f15163c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final b2.a f15164d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final b2.a f15165e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final b2.a f15166f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final b2.a f15167g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final b2.a f15168h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final b2.a f15169i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final b2.a f15170j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final b2.a f15171k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final Map<String, b2.a> f15172l;

    /* compiled from: Model.kt */
    @Metadata
    /* renamed from: com.facebook.appevents.ml.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0254a {
        public /* synthetic */ C0254a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Map<String, b2.a> b(File file) {
            Map<String, b2.a> c10 = h.c(file);
            if (c10 == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            Map a10 = a.a();
            for (Map.Entry<String, b2.a> entry : c10.entrySet()) {
                String key = entry.getKey();
                if (a10.containsKey(entry.getKey()) && (key = (String) a10.get(entry.getKey())) == null) {
                    return null;
                }
                hashMap.put(key, entry.getValue());
            }
            return hashMap;
        }

        @Nullable
        public final a a(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            Map<String, b2.a> b10 = b(file);
            if (b10 == null) {
                return null;
            }
            try {
                return new a(b10, null);
            } catch (Exception unused) {
                return null;
            }
        }

        private C0254a() {
        }
    }

    public /* synthetic */ a(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    public static final /* synthetic */ Map a() {
        if (o4.a.d(a.class)) {
            return null;
        }
        try {
            return f15160n;
        } catch (Throwable th2) {
            o4.a.b(th2, a.class);
            return null;
        }
    }

    @Nullable
    public final b2.a b(@NotNull b2.a dense, @NotNull String[] texts, @NotNull String task) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(dense, "dense");
            Intrinsics.checkNotNullParameter(texts, "texts");
            Intrinsics.checkNotNullParameter(task, "task");
            b2.a c10 = g.c(g.e(texts, 128, this.f15161a), this.f15162b);
            g.a(c10, this.f15165e);
            g.i(c10);
            b2.a c11 = g.c(c10, this.f15163c);
            g.a(c11, this.f15166f);
            g.i(c11);
            b2.a g10 = g.g(c11, 2);
            b2.a c12 = g.c(g10, this.f15164d);
            g.a(c12, this.f15167g);
            g.i(c12);
            b2.a g11 = g.g(c10, c10.b(1));
            b2.a g12 = g.g(g10, g10.b(1));
            b2.a g13 = g.g(c12, c12.b(1));
            g.f(g11, 1);
            g.f(g12, 1);
            g.f(g13, 1);
            b2.a d10 = g.d(g.b(new b2.a[]{g11, g12, g13, dense}), this.f15168h, this.f15170j);
            g.i(d10);
            b2.a d11 = g.d(d10, this.f15169i, this.f15171k);
            g.i(d11);
            Map<String, b2.a> map = this.f15172l;
            b2.a aVar = map.get(task + ".weight");
            Map<String, b2.a> map2 = this.f15172l;
            b2.a aVar2 = map2.get(task + ".bias");
            if (aVar != null && aVar2 != null) {
                b2.a d12 = g.d(d11, aVar, aVar2);
                g.j(d12);
                return d12;
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private a(Map<String, b2.a> map) {
        b2.a aVar = map.get("embed.weight");
        if (aVar != null) {
            this.f15161a = aVar;
            b2.a aVar2 = map.get("convs.0.weight");
            if (aVar2 != null) {
                this.f15162b = g.l(aVar2);
                b2.a aVar3 = map.get("convs.1.weight");
                if (aVar3 != null) {
                    this.f15163c = g.l(aVar3);
                    b2.a aVar4 = map.get("convs.2.weight");
                    if (aVar4 != null) {
                        this.f15164d = g.l(aVar4);
                        b2.a aVar5 = map.get("convs.0.bias");
                        if (aVar5 != null) {
                            this.f15165e = aVar5;
                            b2.a aVar6 = map.get("convs.1.bias");
                            if (aVar6 != null) {
                                this.f15166f = aVar6;
                                b2.a aVar7 = map.get("convs.2.bias");
                                if (aVar7 != null) {
                                    this.f15167g = aVar7;
                                    b2.a aVar8 = map.get("fc1.weight");
                                    if (aVar8 != null) {
                                        this.f15168h = g.k(aVar8);
                                        b2.a aVar9 = map.get("fc2.weight");
                                        if (aVar9 != null) {
                                            this.f15169i = g.k(aVar9);
                                            b2.a aVar10 = map.get("fc1.bias");
                                            if (aVar10 != null) {
                                                this.f15170j = aVar10;
                                                b2.a aVar11 = map.get("fc2.bias");
                                                if (aVar11 != null) {
                                                    this.f15171k = aVar11;
                                                    this.f15172l = new HashMap();
                                                    for (String str : y0.j(ModelManager.Task.MTML_INTEGRITY_DETECT.toKey(), ModelManager.Task.MTML_APP_EVENT_PREDICTION.toKey())) {
                                                        String str2 = str + ".weight";
                                                        String str3 = str + ".bias";
                                                        b2.a aVar12 = map.get(str2);
                                                        b2.a aVar13 = map.get(str3);
                                                        if (aVar12 != null) {
                                                            this.f15172l.put(str2, g.k(aVar12));
                                                        }
                                                        if (aVar13 != null) {
                                                            this.f15172l.put(str3, aVar13);
                                                        }
                                                    }
                                                    return;
                                                }
                                                throw new IllegalStateException("Required value was null.");
                                            }
                                            throw new IllegalStateException("Required value was null.");
                                        }
                                        throw new IllegalStateException("Required value was null.");
                                    }
                                    throw new IllegalStateException("Required value was null.");
                                }
                                throw new IllegalStateException("Required value was null.");
                            }
                            throw new IllegalStateException("Required value was null.");
                        }
                        throw new IllegalStateException("Required value was null.");
                    }
                    throw new IllegalStateException("Required value was null.");
                }
                throw new IllegalStateException("Required value was null.");
            }
            throw new IllegalStateException("Required value was null.");
        }
        throw new IllegalStateException("Required value was null.");
    }
}
