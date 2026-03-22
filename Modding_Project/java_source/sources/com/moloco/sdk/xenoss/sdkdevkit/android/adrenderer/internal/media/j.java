package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h;
import com.ss.ttvideoengine.model.VideoRef;
import gt.g0;
import java.io.File;
import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nMediaCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n72#2,2:365\n1#3:367\n*S KotlinDebug\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl\n*L\n254#1:365,2\n254#1:367\n*E\n"})
/* loaded from: classes6.dex */
public final class j implements n {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f34128j = new a(null);

    /* renamed from: k  reason: collision with root package name */
    public static final int f34129k = 8;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final String f34130l = "MediaCacheRepository";
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final o f34131a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.d f34132b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.a f34133c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final l f34134d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final g0 f34135e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final ConcurrentHashMap<String, qt.a> f34136f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final HashSet<String> f34137g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final ConcurrentHashMap<String, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b> f34138h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final g0 f34139i;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String b(String str) {
            return str + "TEMP";
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.MediaCacheRepositoryImpl$getMediaFile$2", f = "MediaCacheRepository.kt", l = {373, 161}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nMediaCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl$getMediaFile$2\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,364:1\n72#2,2:365\n1#3:367\n116#4,10:368\n*S KotlinDebug\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl$getMediaFile$2\n*L\n113#1:365,2\n113#1:367\n114#1:368,10\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super n.a>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f34140h;

        /* renamed from: i  reason: collision with root package name */
        public Object f34141i;

        /* renamed from: j  reason: collision with root package name */
        public Object f34142j;

        /* renamed from: k  reason: collision with root package name */
        public Object f34143k;

        /* renamed from: l  reason: collision with root package name */
        public int f34144l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ String f34145m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ j f34146n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, j jVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34145m = str;
            this.f34146n = jVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super n.a> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34145m, this.f34146n, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x01a2 A[Catch: all -> 0x01df, Exception -> 0x01e2, TryCatch #5 {Exception -> 0x01e2, all -> 0x01df, blocks: (B:61:0x019c, B:63:0x01a2, B:65:0x01b7, B:72:0x01e6), top: B:91:0x019c }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01ef  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r26) {
            /*
                Method dump skipped, instructions count: 562
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.j.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.MediaCacheRepositoryImpl$streamMediaFile$2", f = "MediaCacheRepository.kt", l = {373}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nMediaCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl$streamMediaFile$2\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,364:1\n72#2,2:365\n72#2,2:378\n1#3:367\n1#3:380\n116#4,10:368\n*S KotlinDebug\n*F\n+ 1 MediaCacheRepository.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/MediaCacheRepositoryImpl$streamMediaFile$2\n*L\n193#1:365,2\n224#1:378,2\n193#1:367\n224#1:380\n194#1:368,10\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f34147h;

        /* renamed from: i  reason: collision with root package name */
        public Object f34148i;

        /* renamed from: j  reason: collision with root package name */
        public Object f34149j;

        /* renamed from: k  reason: collision with root package name */
        public Object f34150k;

        /* renamed from: l  reason: collision with root package name */
        public int f34151l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ String f34152m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ j f34153n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ String f34154o;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.MediaCacheRepositoryImpl$streamMediaFile$2$1$1", f = "MediaCacheRepository.kt", l = {VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34155h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ j f34156i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ String f34157j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ File f34158k;

            /* renamed from: l  reason: collision with root package name */
            public final /* synthetic */ String f34159l;

            /* renamed from: m  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b f34160m;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(j jVar, String str, File file, String str2, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b bVar, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f34156i = jVar;
                this.f34157j = str;
                this.f34158k = file;
                this.f34159l = str2;
                this.f34160m = bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f34156i, this.f34157j, this.f34158k, this.f34159l, this.f34160m, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f34155h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.a aVar = this.f34156i.f34133c;
                    String str = this.f34157j;
                    File file = this.f34158k;
                    String str2 = this.f34159l;
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b bVar = this.f34160m;
                    this.f34155h = 1;
                    if (aVar.c(str, file, str2, bVar, this) == f10) {
                        return f10;
                    }
                }
                this.f34156i.f34137g.remove(this.f34157j);
                this.f34156i.f34138h.remove(this.f34157j);
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, j jVar, String str2, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f34152m = str;
            this.f34153n = jVar;
            this.f34154o = str2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f34152m, this.f34153n, this.f34154o, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            qt.a aVar;
            j jVar;
            String str;
            String str2;
            Object putIfAbsent;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h cVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34151l;
            if (i10 != 0) {
                if (i10 == 1) {
                    aVar = (qt.a) this.f34147h;
                    kotlin.f.b(obj);
                    str2 = (String) this.f34150k;
                    str = (String) this.f34149j;
                    jVar = (j) this.f34148i;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                String str3 = j.f34130l;
                MolocoLogger.info$default(molocoLogger, str3, "Streaming media for: " + this.f34152m, null, false, 12, null);
                if (this.f34152m.length() != 0) {
                    ConcurrentHashMap concurrentHashMap = this.f34153n.f34136f;
                    String str4 = this.f34152m;
                    Object obj2 = concurrentHashMap.get(str4);
                    qt.a aVar2 = obj2;
                    if (obj2 == null) {
                        qt.a b10 = qt.d.b(false, 1, null);
                        Object putIfAbsent2 = concurrentHashMap.putIfAbsent(str4, b10);
                        aVar2 = b10;
                        if (putIfAbsent2 != null) {
                            aVar2 = putIfAbsent2;
                        }
                    }
                    aVar = (qt.a) aVar2;
                    Intrinsics.checkNotNull(aVar);
                    j jVar2 = this.f34153n;
                    String str5 = this.f34152m;
                    String str6 = this.f34154o;
                    this.f34147h = aVar;
                    this.f34148i = jVar2;
                    this.f34149j = str5;
                    this.f34150k = str6;
                    this.f34151l = 1;
                    if (aVar.lock(null, this) == f10) {
                        return f10;
                    }
                    jVar = jVar2;
                    str = str5;
                    str2 = str6;
                } else {
                    return new h.b(n.a.AbstractC0509a.k.f34180a);
                }
            }
            try {
                com.moloco.sdk.internal.g0 h10 = jVar.h();
                if (h10 instanceof g0.a) {
                    return ((g0.a) h10).a();
                }
                if (h10 instanceof g0.b) {
                    File e10 = jVar.e(str, (File) ((g0.b) h10).a());
                    MolocoLogger molocoLogger2 = MolocoLogger.INSTANCE;
                    String str7 = j.f34130l;
                    MolocoLogger.info$default(molocoLogger2, str7, "Going to download the media file to location: " + e10.getAbsolutePath(), null, false, 12, null);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b bVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b) jVar.f34138h.get(str);
                    if (jVar.f34137g.contains(str)) {
                        String str8 = j.f34130l;
                        MolocoLogger.info$default(molocoLogger2, str8, "Media file is already being downloaded, so returning in progress status for url: " + str, null, false, 12, null);
                        if (bVar == null || (cVar = bVar.d()) == null) {
                            cVar = new h.c(e10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.i.a());
                        }
                        return cVar;
                    } else if (!jVar.f34133c.a(e10)) {
                        String str9 = j.f34130l;
                        MolocoLogger.info$default(molocoLogger2, str9, "Media file needs to be downloaded: " + str, null, false, 12, null);
                        jVar.f34137g.add(str);
                        ConcurrentHashMap concurrentHashMap2 = jVar.f34138h;
                        Object obj3 = concurrentHashMap2.get(str);
                        if (obj3 == null && (putIfAbsent = concurrentHashMap2.putIfAbsent(str, (obj3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b(new h.c(e10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.i.a()))))) != null) {
                            obj3 = putIfAbsent;
                        }
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b bVar2 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b) obj3;
                        gt.g.d(jVar.f34135e, null, null, new a(jVar, str, e10, str2, bVar2, null), 3, null);
                        return bVar2.d();
                    } else {
                        return new h.a(e10);
                    }
                }
                throw new NoWhenBranchMatchedException();
            } finally {
                aVar.unlock(null);
            }
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.MediaCacheRepositoryImpl$streamMediaFileStatus$1", f = "MediaCacheRepository.kt", l = {249}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<kt.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34161h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34162i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ File f34163j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(File file, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f34163j = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            d dVar = new d(this.f34163j, cVar);
            dVar.f34162i = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(kt.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> cVar, rs.c<? super Unit> cVar2) {
            return ((d) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34161h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                h.a aVar = new h.a(this.f34163j);
                this.f34161h = 1;
                if (((kt.c) this.f34162i).emit(aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.MediaCacheRepositoryImpl$streamMediaFileStatus$cacheDir$1", f = "MediaCacheRepository.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class e extends SuspendLambda implements Function2<kt.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34164h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.g0<File, h.b> f34165i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(com.moloco.sdk.internal.g0<File, h.b> g0Var, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f34165i = g0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new e(this.f34165i, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(kt.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> cVar, rs.c<? super Unit> cVar2) {
            return ((e) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34164h == 0) {
                kotlin.f.b(obj);
                ((g0.a) this.f34165i).a();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public j(@NotNull o mediaConfig, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.d legacyMediaDownloader, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.a chunkedMediaDownloader, @NotNull l mediaCacheLocationProvider) {
        Intrinsics.checkNotNullParameter(mediaConfig, "mediaConfig");
        Intrinsics.checkNotNullParameter(legacyMediaDownloader, "legacyMediaDownloader");
        Intrinsics.checkNotNullParameter(chunkedMediaDownloader, "chunkedMediaDownloader");
        Intrinsics.checkNotNullParameter(mediaCacheLocationProvider, "mediaCacheLocationProvider");
        this.f34131a = mediaConfig;
        this.f34132b = legacyMediaDownloader;
        this.f34133c = chunkedMediaDownloader;
        this.f34134d = mediaCacheLocationProvider;
        this.f34135e = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getIo());
        this.f34136f = new ConcurrentHashMap<>();
        this.f34137g = new HashSet<>();
        this.f34138h = new ConcurrentHashMap<>();
        this.f34139i = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getIo());
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n
    @Nullable
    public Object a(@NotNull String str, @NotNull String str2, @NotNull rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new c(str, this, str2, null), cVar);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n
    @NotNull
    public kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> b(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        com.moloco.sdk.internal.g0<File, h.b> h10 = h();
        if (h10 instanceof g0.a) {
            return kotlinx.coroutines.flow.c.F(new e(h10, null));
        }
        if (h10 instanceof g0.b) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str = f34130l;
            MolocoLogger.info$default(molocoLogger, str, "Collecting status for media file: " + url, null, false, 12, null);
            File e10 = e(url, (File) ((g0.b) h10).a());
            if (e10.exists() && this.f34133c.a(e10)) {
                return kotlinx.coroutines.flow.c.F(new d(e10, null));
            }
            MolocoLogger.info$default(molocoLogger, str, "Media file needs to be downloaded: " + url, null, false, 12, null);
            ConcurrentHashMap<String, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b> concurrentHashMap = this.f34138h;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b bVar = concurrentHashMap.get(url);
            if (bVar == null) {
                MolocoLogger.info$default(molocoLogger, str, "Download has not yet started for: " + url, null, false, 12, null);
                bVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b(new h.c(e10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.i.a()));
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b putIfAbsent = concurrentHashMap.putIfAbsent(url, bVar);
                if (putIfAbsent != null) {
                    bVar = putIfAbsent;
                }
            }
            return bVar.g();
        }
        throw new NoWhenBranchMatchedException();
    }

    public final File e(String str, File file) {
        return new File(file, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n.a(str));
    }

    public final com.moloco.sdk.internal.g0<File, h.b> h() {
        com.moloco.sdk.internal.g0<File, com.moloco.sdk.internal.q> j10 = j();
        if (j10 instanceof g0.a) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            String str = f34130l;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to retrieve storageDir with error code: ");
            g0.a aVar = (g0.a) j10;
            sb2.append(((com.moloco.sdk.internal.q) aVar.a()).b());
            MolocoLogger.warn$default(molocoLogger, str, sb2.toString(), null, false, 12, null);
            switch (((com.moloco.sdk.internal.q) aVar.a()).b()) {
                case 100:
                    return new g0.a(new h.b(n.a.AbstractC0509a.c.f34172a));
                case 101:
                    return new g0.a(new h.b(n.a.AbstractC0509a.b.f34171a));
                case 102:
                    return new g0.a(new h.b(n.a.AbstractC0509a.C0510a.f34170a));
                default:
                    return new g0.a(new h.b(n.a.AbstractC0509a.d.f34173a));
            }
        } else if (j10 instanceof g0.b) {
            return new g0.b(((g0.b) j10).a());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @VisibleForTesting
    @NotNull
    public final com.moloco.sdk.internal.g0<File, com.moloco.sdk.internal.q> j() {
        com.moloco.sdk.internal.g0<File, com.moloco.sdk.internal.q> a10 = this.f34134d.a();
        if (a10 instanceof g0.a) {
            return this.f34134d.b();
        }
        if (a10 instanceof g0.b) {
            return a10;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n
    @NotNull
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h a(@NotNull String url) {
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h d10;
        Intrinsics.checkNotNullParameter(url, "url");
        com.moloco.sdk.internal.g0<File, h.b> h10 = h();
        if (h10 instanceof g0.a) {
            return (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h) ((g0.a) h10).a();
        }
        if (h10 instanceof g0.b) {
            File e10 = e(url, (File) ((g0.b) h10).a());
            if (e10.exists() && this.f34133c.a(e10)) {
                return new h.a(e10);
            }
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b bVar = this.f34138h.get(url);
            return (bVar == null || (d10 = bVar.d()) == null) ? new h.c(e10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.i.a()) : d10;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n
    @Nullable
    public Object b(@NotNull String str, @NotNull rs.c<? super n.a> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new b(str, this, null), cVar);
    }
}
