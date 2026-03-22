package com.moloco.sdk.internal.services.init;

import android.content.SharedPreferences;
import android.util.Base64;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.MolocoLogger;
import gt.g0;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nInitCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitCache.kt\ncom/moloco/sdk/internal/services/init/InitCacheImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,268:1\n535#2:269\n520#2,6:270\n43#3,2:276\n45#3,6:280\n216#4,2:278\n*S KotlinDebug\n*F\n+ 1 InitCache.kt\ncom/moloco/sdk/internal/services/init/InitCacheImpl\n*L\n236#1:269\n236#1:270,6\n248#1:276,2\n248#1:280,6\n251#1:278,2\n*E\n"})
/* loaded from: classes6.dex */
public final class h implements g {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f33446d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public static final int f33447e = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final SharedPreferences f33448b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final CoroutineContext f33449c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitCacheImpl$clearAll$2", f = "InitCache.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33450h;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33450h == 0) {
                kotlin.f.b(obj);
                h.this.f33448b.edit().clear().commit();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitCacheImpl$clearCache$2", f = "InitCache.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33452h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33453i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.services.init.a f33454j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ h f33455k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(com.moloco.sdk.acm.recorder.a aVar, com.moloco.sdk.internal.services.init.a aVar2, h hVar, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f33453i = aVar;
            this.f33454j = aVar2;
            this.f33455k = hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f33453i, this.f33454j, this.f33455k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33452h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.acm.e c10 = this.f33453i.c("SDKInitCacheClear");
                try {
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Clearing cache for cacheKey: " + this.f33454j.b(), null, false, 12, null);
                    SharedPreferences.Editor edit = this.f33455k.f33448b.edit();
                    h hVar = this.f33455k;
                    com.moloco.sdk.internal.services.init.a aVar = this.f33454j;
                    Intrinsics.checkNotNull(edit);
                    hVar.f(aVar, edit);
                    edit.remove(this.f33454j.b());
                    if (edit.commit()) {
                        MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Successfully cleared cache for cacheKey: " + this.f33454j.b(), null, false, 12, null);
                        this.f33453i.b(new com.moloco.sdk.acm.b("SDKInitCacheClear").e("Result", "success"));
                        this.f33453i.a(c10.f("Result", "success"));
                    } else {
                        MolocoLogger.warn$default(molocoLogger, "InitCacheImpl", "Failed to clear cache for cacheKey: " + this.f33454j.b(), null, false, 12, null);
                        this.f33453i.b(new com.moloco.sdk.acm.b("SDKInitCacheClear").e("Result", "failure").e("Reason", "commit_failure"));
                        this.f33453i.a(c10.f("Result", "failure").f("Reason", "commit_failure"));
                    }
                } catch (Exception e10) {
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    MolocoLogger.warn$default(molocoLogger2, "InitCacheImpl", "Failed to clear cache for cacheKey: " + this.f33454j.b() + " with exception", e10, false, 8, null);
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f33453i;
                    com.moloco.sdk.acm.b e11 = new com.moloco.sdk.acm.b("SDKInitCacheClear").e("Result", "failure");
                    String simpleName = e10.getClass().getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                    aVar2.b(e11.e("Reason", simpleName));
                    com.moloco.sdk.acm.recorder.a aVar3 = this.f33453i;
                    com.moloco.sdk.acm.e f10 = c10.f("Result", "failure");
                    String simpleName2 = e10.getClass().getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
                    aVar3.a(f10.f("Reason", simpleName2));
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitCacheImpl$get$2", f = "InitCache.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<g0, rs.c<? super Init$SDKInitResponse>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33456h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33457i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.services.init.a f33458j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ h f33459k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(com.moloco.sdk.acm.recorder.a aVar, com.moloco.sdk.internal.services.init.a aVar2, h hVar, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f33457i = aVar;
            this.f33458j = aVar2;
            this.f33459k = hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Init$SDKInitResponse> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f33457i, this.f33458j, this.f33459k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Init$SDKInitResponse init$SDKInitResponse;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33456h == 0) {
                kotlin.f.b(obj);
                com.moloco.sdk.acm.e c10 = this.f33457i.c("SDKInitCacheRead");
                try {
                    MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                    MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Reading cache for cacheKey: " + this.f33458j.b(), null, false, 12, null);
                    h hVar = this.f33459k;
                    hVar.j(this.f33458j, hVar.f33448b);
                    String string = this.f33459k.f33448b.getString(this.f33458j.b(), null);
                    if (string != null) {
                        init$SDKInitResponse = Init$SDKInitResponse.parseFrom(Base64.decode(string, 0));
                    } else {
                        init$SDKInitResponse = null;
                    }
                    if (init$SDKInitResponse != null) {
                        MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Successfully read cache for cacheKey: " + this.f33458j.b(), null, false, 12, null);
                        this.f33457i.a(c10.f("Result", "success"));
                        this.f33457i.b(new com.moloco.sdk.acm.b("SDKInitCacheRead").e("Result", "success"));
                    } else {
                        MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Failed to read from cache (cache_miss) for cacheKey: " + this.f33458j.b(), null, false, 12, null);
                        this.f33457i.a(c10.f("Result", "failure").f("Reason", "cache_miss"));
                        this.f33457i.b(new com.moloco.sdk.acm.b("SDKInitCacheRead").e("Result", "failure").e("Reason", "cache_miss"));
                    }
                    return init$SDKInitResponse;
                } catch (Exception e10) {
                    MolocoLogger.warn$default(MolocoLogger.INSTANCE, "InitCacheImpl", "Failed to read cache for cacheKey: " + this.f33458j.b() + " with exception", e10, false, 8, null);
                    com.moloco.sdk.acm.recorder.a aVar = this.f33457i;
                    com.moloco.sdk.acm.e f10 = c10.f("Result", "failure");
                    String simpleName = e10.getClass().getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
                    aVar.a(f10.f("Reason", simpleName));
                    com.moloco.sdk.acm.recorder.a aVar2 = this.f33457i;
                    com.moloco.sdk.acm.b e11 = new com.moloco.sdk.acm.b("SDKInitCacheRead").e("Result", "failure");
                    String simpleName2 = e10.getClass().getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
                    aVar2.b(e11.e("Reason", simpleName2));
                    return null;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitCacheImpl$updateCache$2", f = "InitCache.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33460h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33461i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.services.init.a f33462j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Init$SDKInitResponse f33463k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ h f33464l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(com.moloco.sdk.acm.recorder.a aVar, com.moloco.sdk.internal.services.init.a aVar2, Init$SDKInitResponse init$SDKInitResponse, h hVar, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f33461i = aVar;
            this.f33462j = aVar2;
            this.f33463k = init$SDKInitResponse;
            this.f33464l = hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new e(this.f33461i, this.f33462j, this.f33463k, this.f33464l, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x008d A[Catch: Exception -> 0x005c, TryCatch #0 {Exception -> 0x005c, blocks: (B:5:0x001f, B:7:0x0050, B:15:0x008d, B:17:0x00ab, B:21:0x00ed, B:13:0x005f), top: B:28:0x001f }] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x00ab A[Catch: Exception -> 0x005c, TryCatch #0 {Exception -> 0x005c, blocks: (B:5:0x001f, B:7:0x0050, B:15:0x008d, B:17:0x00ab, B:21:0x00ed, B:13:0x005f), top: B:28:0x001f }] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00e6  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instructions count: 413
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.init.h.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public h(@NotNull SharedPreferences sharedPreferences, @NotNull CoroutineContext ioDispatcherContext) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(ioDispatcherContext, "ioDispatcherContext");
        this.f33448b = sharedPreferences;
        this.f33449c = ioDispatcherContext;
    }

    @Override // com.moloco.sdk.internal.services.init.g
    @Nullable
    public Object a(@NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f33449c, new b(null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.internal.services.init.g
    @Nullable
    public Object b(@NotNull com.moloco.sdk.internal.services.init.a aVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f33449c, new c(aVar2, aVar, this, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.internal.services.init.g
    @Nullable
    public Object c(@NotNull com.moloco.sdk.internal.services.init.a aVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2, @NotNull rs.c<? super Init$SDKInitResponse> cVar) {
        return gt.e.g(this.f33449c, new d(aVar2, aVar, this, null), cVar);
    }

    @Override // com.moloco.sdk.internal.services.init.g
    @Nullable
    public Object d(@NotNull com.moloco.sdk.internal.services.init.a aVar, @NotNull com.moloco.sdk.acm.recorder.a aVar2, @NotNull Init$SDKInitResponse init$SDKInitResponse, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f33449c, new e(aVar2, aVar, init$SDKInitResponse, this, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    public final void f(com.moloco.sdk.internal.services.init.a aVar, SharedPreferences.Editor editor) {
        for (String str : aVar.c()) {
            editor.remove(str);
        }
    }

    public final void g(com.moloco.sdk.internal.services.init.a aVar, SharedPreferences sharedPreferences) {
        String str;
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Migrating from v0 to v1 for cache key: " + aVar.b(), null, false, 12, null);
        MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Total keys in cache: " + sharedPreferences.getAll().size(), null, false, 12, null);
        Map<String, ?> all = sharedPreferences.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            String key = entry.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "<get-key>(...)");
            List split$default = StringsKt.split$default(key, new String[]{"___"}, false, 0, 6, null);
            if (Intrinsics.areEqual(CollectionsKt.firstOrNull(split$default), aVar.a()) && Intrinsics.areEqual(CollectionsKt.D0(split$default), "v0")) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger2, "InitCacheImpl", "Number of existing V0 keys in cache: " + linkedHashMap.size(), null, false, 12, null);
        if (linkedHashMap.isEmpty()) {
            MolocoLogger.info$default(molocoLogger2, "InitCacheImpl", "No v0 cache keys found for migration for appKey: " + aVar.a(), null, false, 12, null);
            return;
        }
        MolocoLogger.info$default(molocoLogger2, "InitCacheImpl", "Found v0 cache key: " + ((String) CollectionsKt.q0(linkedHashMap.keySet())) + ", migrating to new key: " + aVar.b(), null, false, 12, null);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        Intrinsics.checkNotNullExpressionValue(editor, "editor");
        String b10 = aVar.b();
        Object q02 = CollectionsKt.q0(linkedHashMap.values());
        if (q02 instanceof String) {
            str = (String) q02;
        } else {
            str = null;
        }
        editor.putString(b10, str);
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            editor.remove((String) entry2.getKey());
        }
        editor.commit();
    }

    public final void j(com.moloco.sdk.internal.services.init.a aVar, SharedPreferences sharedPreferences) {
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.info$default(molocoLogger, "InitCacheImpl", "Performing migration for cache key: " + aVar.b(), null, false, 12, null);
        g(aVar, sharedPreferences);
    }
}
