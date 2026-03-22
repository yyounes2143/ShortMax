package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.k;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.x;
import com.ss.ttm.player.MediaPlayer;
import io.ktor.client.HttpClient;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nVastAdLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 5 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 6 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 7 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,797:1\n1#2:798\n774#3:799\n865#3,2:800\n1053#3:802\n1557#3:813\n1628#3,3:814\n774#3:817\n865#3,2:818\n1863#3:825\n774#3:826\n865#3,2:827\n1863#3,2:829\n1864#3:831\n774#3:832\n865#3,2:833\n1557#3:835\n1628#3,3:836\n774#3:839\n865#3,2:840\n56#4:803\n59#4:807\n56#4:820\n59#4:824\n46#5:804\n51#5:806\n46#5:821\n51#5:823\n105#6:805\n105#6:822\n332#7:808\n225#7:809\n99#7,2:810\n22#7:812\n*S KotlinDebug\n*F\n+ 1 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n*L\n239#1:799\n239#1:800,2\n240#1:802\n483#1:813\n483#1:814,3\n509#1:817\n509#1:818,2\n618#1:825\n626#1:826\n626#1:827,2\n627#1:829,2\n618#1:831\n681#1:832\n681#1:833,2\n692#1:835\n692#1:836,3\n697#1:839\n697#1:840,2\n243#1:803\n243#1:807\n532#1:820\n532#1:824\n243#1:804\n243#1:806\n532#1:821\n532#1:823\n243#1:805\n532#1:822\n354#1:808\n354#1:809\n354#1:810,2\n354#1:812\n*E\n"})
/* loaded from: classes6.dex */
public final class e implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final c f35060i = new c(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final v f35061a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o f35062b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n f35063c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final x f35064d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final g0 f35065e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final HttpClient f35066f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.y f35067g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final String f35068h;

    /* loaded from: classes6.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.p> f35069a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final List<String> f35070b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final List<List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j>> f35071c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.p> impressions, @NotNull List<String> errorUrls, @NotNull List<? extends List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j>> creativesPerWrapper) {
            Intrinsics.checkNotNullParameter(impressions, "impressions");
            Intrinsics.checkNotNullParameter(errorUrls, "errorUrls");
            Intrinsics.checkNotNullParameter(creativesPerWrapper, "creativesPerWrapper");
            this.f35069a = impressions;
            this.f35070b = errorUrls;
            this.f35071c = creativesPerWrapper;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ a a(a aVar, List list, List list2, List list3, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                list = aVar.f35069a;
            }
            if ((i10 & 2) != 0) {
                list2 = aVar.f35070b;
            }
            if ((i10 & 4) != 0) {
                list3 = aVar.f35071c;
            }
            return aVar.b(list, list2, list3);
        }

        @NotNull
        public final a b(@NotNull List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.p> impressions, @NotNull List<String> errorUrls, @NotNull List<? extends List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j>> creativesPerWrapper) {
            Intrinsics.checkNotNullParameter(impressions, "impressions");
            Intrinsics.checkNotNullParameter(errorUrls, "errorUrls");
            Intrinsics.checkNotNullParameter(creativesPerWrapper, "creativesPerWrapper");
            return new a(impressions, errorUrls, creativesPerWrapper);
        }

        @NotNull
        public final List<List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j>> c() {
            return this.f35071c;
        }

        @NotNull
        public final List<String> d() {
            return this.f35070b;
        }

        @NotNull
        public final List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.p> e() {
            return this.f35069a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f35069a, aVar.f35069a) && Intrinsics.areEqual(this.f35070b, aVar.f35070b) && Intrinsics.areEqual(this.f35071c, aVar.f35071c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f35069a.hashCode() * 31) + this.f35070b.hashCode()) * 31) + this.f35071c.hashCode();
        }

        @NotNull
        public String toString() {
            return "AggregatedWrapperChainAdData(impressions=" + this.f35069a + ", errorUrls=" + this.f35070b + ", creativesPerWrapper=" + this.f35071c + ')';
        }
    }

    /* loaded from: classes6.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public final List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> f35072a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a f35073b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public final List<List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n>> f35074c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final List<List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g>> f35075d;

        /* JADX WARN: Multi-variable type inference failed */
        public b(@NotNull List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> linearTrackingList, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a aVar, @NotNull List<? extends List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n>> iconsPerWrapper, @NotNull List<? extends List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g>> companionsPerWrapper) {
            Intrinsics.checkNotNullParameter(linearTrackingList, "linearTrackingList");
            Intrinsics.checkNotNullParameter(iconsPerWrapper, "iconsPerWrapper");
            Intrinsics.checkNotNullParameter(companionsPerWrapper, "companionsPerWrapper");
            this.f35072a = linearTrackingList;
            this.f35073b = aVar;
            this.f35074c = iconsPerWrapper;
            this.f35075d = companionsPerWrapper;
        }

        @NotNull
        public final List<List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g>> a() {
            return this.f35075d;
        }

        @NotNull
        public final List<List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n>> b() {
            return this.f35074c;
        }

        @NotNull
        public final List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> c() {
            return this.f35072a;
        }

        @Nullable
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a d() {
            return this.f35073b;
        }
    }

    @SourceDebugExtension({"SMAP\nVastAdLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl$VAST\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,797:1\n1485#2:798\n1510#2,3:799\n1513#2,3:809\n1557#2:812\n1628#2,3:813\n1611#2,9:816\n1863#2:825\n1864#2:827\n1620#2:828\n1557#2:829\n1628#2,3:830\n381#3,7:802\n1#4:826\n1#4:833\n*S KotlinDebug\n*F\n+ 1 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl$VAST\n*L\n726#1:798\n726#1:799,3\n726#1:809,3\n749#1:812\n749#1:813,3\n752#1:816,9\n752#1:825\n752#1:827\n752#1:828\n757#1:829\n757#1:830,3\n726#1:802,7\n752#1:826\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.h b(List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> list, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a aVar) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v a10 = ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y) obj).a();
                Object obj2 = linkedHashMap.get(a10);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap.put(a10, obj2);
                }
                ((List) obj2).add(obj);
            }
            return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.h(e(aVar), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35638a), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35639b), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35640c), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35641d), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35642e), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35643f), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35644g), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35645h), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35646i), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35648k), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35647j), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35650m), i(linkedHashMap, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35649l), h(linkedHashMap));
        }

        public final List<String> e(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a aVar) {
            List<b0> b10;
            if (aVar != null && (b10 = aVar.b()) != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt.z(b10, 10));
                for (b0 b0Var : b10) {
                    arrayList.add(b0Var.a());
                }
                return arrayList;
            }
            return CollectionsKt.n();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <T> List<T> f(List<? extends T> list, T t10) {
            List<T> g10;
            if (t10 != null && (g10 = e.f35060i.g(list, CollectionsKt.e(t10))) != null) {
                return g10;
            }
            if (list == 0) {
                return CollectionsKt.n();
            }
            return list;
        }

        public final <T> List<T> g(List<? extends T> list, List<? extends T> list2) {
            ArrayList arrayList = new ArrayList();
            if (list != null) {
                CollectionsKt.E(arrayList, list);
            }
            if (list2 != null) {
                CollectionsKt.E(arrayList, list2);
            }
            return arrayList;
        }

        public final List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.g> h(Map<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v, ? extends List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y>> map) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.g gVar;
            List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> list = map.get(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35651n);
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y yVar : list) {
                    if (yVar.b() == null) {
                        gVar = null;
                    } else {
                        gVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.g(yVar.c(), yVar.b());
                    }
                    if (gVar != null) {
                        arrayList.add(gVar);
                    }
                }
                return arrayList;
            }
            return CollectionsKt.n();
        }

        public final List<String> i(Map<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v, ? extends List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y>> map, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v vVar) {
            List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> list = map.get(vVar);
            if (list != null) {
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                for (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y yVar : list) {
                    arrayList.add(yVar.c());
                }
                return arrayList;
            }
            return CollectionsKt.n();
        }

        public final <T> Set<T> k(Set<? extends T> set, T t10) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (set != null) {
                CollectionsKt.E(linkedHashSet, set);
            }
            if (t10 != null) {
                linkedHashSet.add(t10);
            }
            return linkedHashSet;
        }

        public final boolean q(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar) {
            boolean z10;
            String a10 = gVar.a();
            if (a10 != null && !StringsKt.t0(a10)) {
                z10 = false;
            } else {
                z10 = true;
            }
            return !z10;
        }

        public final boolean r(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j jVar) {
            boolean z10;
            String a10 = jVar.a();
            if (a10 != null && !StringsKt.t0(a10)) {
                z10 = false;
            } else {
                z10 = true;
            }
            return !z10;
        }

        public final boolean s(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n nVar) {
            boolean z10;
            String a10 = nVar.a();
            if (a10 != null && !StringsKt.t0(a10)) {
                z10 = false;
            } else {
                z10 = true;
            }
            return !z10;
        }

        public final boolean t(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s sVar) {
            boolean z10;
            String a10 = sVar.a();
            if (a10 != null && !StringsKt.t0(a10)) {
                z10 = false;
            } else {
                z10 = true;
            }
            return !z10;
        }

        public final boolean u(String str) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (!Intrinsics.areEqual(lowerCase, MimeTypes.VIDEO_MP4) && !Intrinsics.areEqual(lowerCase, MimeTypes.VIDEO_H263) && !Intrinsics.areEqual(lowerCase, "video/webm")) {
                return false;
            }
            return true;
        }

        public c() {
        }
    }

    /* loaded from: classes6.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f35076a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public final Set<String> f35077b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f35078c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public final a f35079d;

        public d(int i10, @NotNull Set<String> usedVastAdTagUrls, boolean z10, @NotNull a aggregatedWrapperChainData) {
            Intrinsics.checkNotNullParameter(usedVastAdTagUrls, "usedVastAdTagUrls");
            Intrinsics.checkNotNullParameter(aggregatedWrapperChainData, "aggregatedWrapperChainData");
            this.f35076a = i10;
            this.f35077b = usedVastAdTagUrls;
            this.f35078c = z10;
            this.f35079d = aggregatedWrapperChainData;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ d b(d dVar, int i10, Set set, boolean z10, a aVar, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i10 = dVar.f35076a;
            }
            if ((i11 & 2) != 0) {
                set = dVar.f35077b;
            }
            if ((i11 & 4) != 0) {
                z10 = dVar.f35078c;
            }
            if ((i11 & 8) != 0) {
                aVar = dVar.f35079d;
            }
            return dVar.a(i10, set, z10, aVar);
        }

        @NotNull
        public final d a(int i10, @NotNull Set<String> usedVastAdTagUrls, boolean z10, @NotNull a aggregatedWrapperChainData) {
            Intrinsics.checkNotNullParameter(usedVastAdTagUrls, "usedVastAdTagUrls");
            Intrinsics.checkNotNullParameter(aggregatedWrapperChainData, "aggregatedWrapperChainData");
            return new d(i10, usedVastAdTagUrls, z10, aggregatedWrapperChainData);
        }

        @NotNull
        public final a c() {
            return this.f35079d;
        }

        public final boolean d() {
            return this.f35078c;
        }

        @NotNull
        public final Set<String> e() {
            return this.f35077b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f35076a == dVar.f35076a && Intrinsics.areEqual(this.f35077b, dVar.f35077b) && this.f35078c == dVar.f35078c && Intrinsics.areEqual(this.f35079d, dVar.f35079d)) {
                return true;
            }
            return false;
        }

        public final int f() {
            return this.f35076a;
        }

        public int hashCode() {
            return (((((Integer.hashCode(this.f35076a) * 31) + this.f35077b.hashCode()) * 31) + Boolean.hashCode(this.f35078c)) * 31) + this.f35079d.hashCode();
        }

        @NotNull
        public String toString() {
            return "WrapperChainParams(wrapperDepth=" + this.f35076a + ", usedVastAdTagUrls=" + this.f35077b + ", followAdditionalWrappers=" + this.f35078c + ", aggregatedWrapperChainData=" + this.f35079d + ')';
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl", f = "VastAdLoader.kt", l = {152, 163}, m = "invoke")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e$e  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0555e extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35080h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35081i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f35082j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f35083k;

        /* renamed from: m  reason: collision with root package name */
        public int f35085m;

        public C0555e(rs.c<? super C0555e> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35083k = obj;
            this.f35085m |= Integer.MIN_VALUE;
            return e.this.b(null, null, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl$invoke$renderAdResult$1", f = "VastAdLoader.kt", l = {164}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class f extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35086h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z f35088j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ boolean f35089k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ String f35090l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z zVar, boolean z10, String str, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f35088j = zVar;
            this.f35089k = z10;
            this.f35090l = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new f(this.f35088j, this.f35089k, this.f35090l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35086h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                e eVar = e.this;
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z zVar = this.f35088j;
                double x10 = eVar.x();
                com.moloco.sdk.common_adapter_internal.b invoke = e.this.f35067g.invoke();
                boolean z10 = this.f35089k;
                String str = this.f35090l;
                this.f35086h = 1;
                obj = eVar.v(zVar, null, x10, invoke, z10, str, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl", f = "VastAdLoader.kt", l = {802, 356, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DECODE_TIME}, m = "loadAndParseWrapperVastDocument")
    /* loaded from: classes6.dex */
    public static final class g extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35091h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35092i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35093j;

        /* renamed from: l  reason: collision with root package name */
        public int f35095l;

        public g(rs.c<? super g> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35093j = obj;
            this.f35095l |= Integer.MIN_VALUE;
            return e.this.s(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl", f = "VastAdLoader.kt", l = {418}, m = "tryLoadInLineRenderAd")
    /* loaded from: classes6.dex */
    public static final class h extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35096h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35097i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35098j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35099k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35100l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35101m;

        /* renamed from: n  reason: collision with root package name */
        public Object f35102n;

        /* renamed from: o  reason: collision with root package name */
        public Object f35103o;

        /* renamed from: p  reason: collision with root package name */
        public Object f35104p;

        /* renamed from: q  reason: collision with root package name */
        public Object f35105q;

        /* renamed from: r  reason: collision with root package name */
        public Object f35106r;

        /* renamed from: s  reason: collision with root package name */
        public Object f35107s;

        /* renamed from: t  reason: collision with root package name */
        public double f35108t;

        /* renamed from: u  reason: collision with root package name */
        public boolean f35109u;

        /* renamed from: v  reason: collision with root package name */
        public /* synthetic */ Object f35110v;

        /* renamed from: x  reason: collision with root package name */
        public int f35112x;

        public h(rs.c<? super h> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35110v = obj;
            this.f35112x |= Integer.MIN_VALUE;
            return e.this.t(null, null, 0.0d, null, false, null, this);
        }
    }

    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class i implements kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ kt.b f35113a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ e f35114b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ d f35115c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ double f35116d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.common_adapter_internal.b f35117e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ boolean f35118f;

        /* renamed from: g  reason: collision with root package name */
        public final /* synthetic */ String f35119g;

        /* renamed from: h  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35120h;

        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n*L\n1#1,49:1\n57#2:50\n58#2:86\n244#3,35:51\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.c f35121a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ e f35122b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ d f35123c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ double f35124d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.common_adapter_internal.b f35125e;

            /* renamed from: f  reason: collision with root package name */
            public final /* synthetic */ boolean f35126f;

            /* renamed from: g  reason: collision with root package name */
            public final /* synthetic */ String f35127g;

            /* renamed from: h  reason: collision with root package name */
            public final /* synthetic */ Ref.ObjectRef f35128h;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl$tryLoadVastRenderAd$$inlined$mapNotNull$1$2", f = "VastAdLoader.kt", l = {54, 65, 86}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e$i$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0556a extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public /* synthetic */ Object f35129h;

                /* renamed from: i  reason: collision with root package name */
                public int f35130i;

                /* renamed from: j  reason: collision with root package name */
                public Object f35131j;

                /* renamed from: l  reason: collision with root package name */
                public Object f35133l;

                public C0556a(rs.c cVar) {
                    super(cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f35129h = obj;
                    this.f35130i |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kt.c cVar, e eVar, d dVar, double d10, com.moloco.sdk.common_adapter_internal.b bVar, boolean z10, String str, Ref.ObjectRef objectRef) {
                this.f35121a = cVar;
                this.f35122b = eVar;
                this.f35123c = dVar;
                this.f35124d = d10;
                this.f35125e = bVar;
                this.f35126f = z10;
                this.f35127g = str;
                this.f35128h = objectRef;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x0101  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x0135  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x0143  */
            @Override // kt.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r24, rs.c r25) {
                /*
                    Method dump skipped, instructions count: 351
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.i.a.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        public i(kt.b bVar, e eVar, d dVar, double d10, com.moloco.sdk.common_adapter_internal.b bVar2, boolean z10, String str, Ref.ObjectRef objectRef) {
            this.f35113a = bVar;
            this.f35114b = eVar;
            this.f35115c = dVar;
            this.f35116d = d10;
            this.f35117e = bVar2;
            this.f35118f = z10;
            this.f35119g = str;
            this.f35120h = objectRef;
        }

        @Override // kt.b
        public Object collect(kt.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a> cVar, rs.c cVar2) {
            Object collect = this.f35113a.collect(new a(cVar, this.f35114b, this.f35115c, this.f35116d, this.f35117e, this.f35118f, this.f35119g, this.f35120h), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n*L\n1#1,102:1\n240#2:103\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class j<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.c) t10).b(), ((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.c) t11).b());
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl", f = "VastAdLoader.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN}, m = "tryLoadVastRenderAd")
    /* loaded from: classes6.dex */
    public static final class k extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35134h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35135i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35136j;

        /* renamed from: l  reason: collision with root package name */
        public int f35138l;

        public k(rs.c<? super k> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35136j = obj;
            this.f35138l |= Integer.MIN_VALUE;
            return e.this.v(null, null, 0.0d, null, false, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl", f = "VastAdLoader.kt", l = {311, 328}, m = "tryLoadWrapperRenderAd")
    /* loaded from: classes6.dex */
    public static final class l extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35139h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35140i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35141j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35142k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35143l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35144m;

        /* renamed from: n  reason: collision with root package name */
        public double f35145n;

        /* renamed from: o  reason: collision with root package name */
        public boolean f35146o;

        /* renamed from: p  reason: collision with root package name */
        public int f35147p;

        /* renamed from: q  reason: collision with root package name */
        public /* synthetic */ Object f35148q;

        /* renamed from: s  reason: collision with root package name */
        public int f35150s;

        public l(rs.c<? super l> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35148q = obj;
            this.f35150s |= Integer.MIN_VALUE;
            return e.this.r(null, null, 0.0d, null, false, null, this);
        }
    }

    @SourceDebugExtension({"SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,108:1\n47#2,5:109\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class m implements kt.b<Pair<? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s, ? extends File>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ kt.b f35151a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ boolean f35152b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ e f35153c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f35154d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35155e;

        @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n*L\n1#1,49:1\n57#2:50\n58#2:82\n533#3,31:51\n*E\n"})
        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ kt.c f35156a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ boolean f35157b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ e f35158c;

            /* renamed from: d  reason: collision with root package name */
            public final /* synthetic */ String f35159d;

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ Ref.ObjectRef f35160e;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl$tryPrepareInLineRenderLinear$$inlined$mapNotNull$1$2", f = "VastAdLoader.kt", l = {53, 71, 82}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e$m$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0557a extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public /* synthetic */ Object f35161h;

                /* renamed from: i  reason: collision with root package name */
                public int f35162i;

                /* renamed from: j  reason: collision with root package name */
                public Object f35163j;

                /* renamed from: l  reason: collision with root package name */
                public Object f35165l;

                /* renamed from: m  reason: collision with root package name */
                public Object f35166m;

                public C0557a(rs.c cVar) {
                    super(cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f35161h = obj;
                    this.f35162i |= Integer.MIN_VALUE;
                    return a.this.emit(null, this);
                }
            }

            public a(kt.c cVar, boolean z10, e eVar, String str, Ref.ObjectRef objectRef) {
                this.f35156a = cVar;
                this.f35157b = z10;
                this.f35158c = eVar;
                this.f35159d = str;
                this.f35160e = objectRef;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x005a  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
            /* JADX WARN: Removed duplicated region for block: B:42:0x00db  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00e6  */
            /* JADX WARN: Removed duplicated region for block: B:47:0x00f7  */
            @Override // kt.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r9, rs.c r10) {
                /*
                    Method dump skipped, instructions count: 271
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.m.a.emit(java.lang.Object, rs.c):java.lang.Object");
            }
        }

        public m(kt.b bVar, boolean z10, e eVar, String str, Ref.ObjectRef objectRef) {
            this.f35151a = bVar;
            this.f35152b = z10;
            this.f35153c = eVar;
            this.f35154d = str;
            this.f35155e = objectRef;
        }

        @Override // kt.b
        public Object collect(kt.c<? super Pair<? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s, ? extends File>> cVar, rs.c cVar2) {
            Object collect = this.f35151a.collect(new a(cVar, this.f35152b, this.f35153c, this.f35154d, this.f35155e), cVar2);
            if (collect == kotlin.coroutines.intrinsics.a.f()) {
                return collect;
            }
            return Unit.f60915a;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl", f = "VastAdLoader.kt", l = {565}, m = "tryPrepareInLineRenderLinear")
    /* loaded from: classes6.dex */
    public static final class n extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35167h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35168i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35169j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35170k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35171l;

        /* renamed from: m  reason: collision with root package name */
        public /* synthetic */ Object f35172m;

        /* renamed from: o  reason: collision with root package name */
        public int f35174o;

        public n(rs.c<? super n> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35172m = obj;
            this.f35174o |= Integer.MIN_VALUE;
            return e.this.u(null, null, null, null, 0.0d, null, null, false, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl", f = "VastAdLoader.kt", l = {95}, m = "waitForAdLoadToStart-8Mi8wO0")
    /* loaded from: classes6.dex */
    public static final class o extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35175h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35176i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35177j;

        /* renamed from: l  reason: collision with root package name */
        public int f35179l;

        public o(rs.c<? super o> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35177j = obj;
            this.f35179l |= Integer.MIN_VALUE;
            return e.this.a(null, 0L, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl$waitForAdLoadToStart$streamStatus$1", f = "VastAdLoader.kt", l = {97}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class p extends SuspendLambda implements Function2<gt.g0, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35180h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a f35182j;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastAdLoaderImpl$waitForAdLoadToStart$streamStatus$1$1", f = "VastAdLoader.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h, rs.c<? super Boolean>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f35183h;

            /* renamed from: i  reason: collision with root package name */
            public /* synthetic */ Object f35184i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ e f35185j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f35185j = eVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                a aVar = new a(this.f35185j, cVar);
                aVar.f35184i = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: i */
            public final Object invoke(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h hVar, rs.c<? super Boolean> cVar) {
                return ((a) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                boolean z10;
                kotlin.coroutines.intrinsics.a.f();
                if (this.f35183h == 0) {
                    kotlin.f.b(obj);
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h hVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h) this.f35184i;
                    if (hVar instanceof h.c) {
                        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                        String str = this.f35185j.f35068h;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Stream status: ");
                        h.c cVar = (h.c) hVar;
                        sb2.append(cVar.b().a());
                        sb2.append('/');
                        sb2.append(cVar.b().b());
                        sb2.append(" bytes downloaded");
                        MolocoLogger.info$default(molocoLogger, str, sb2.toString(), null, false, 12, null);
                    }
                    if (!(hVar instanceof h.a) && !(hVar instanceof h.b)) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    return kotlin.coroutines.jvm.internal.a.a(z10);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar, rs.c<? super p> cVar) {
            super(2, cVar);
            this.f35182j = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> cVar) {
            return ((p) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new p(this.f35182j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35180h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                kt.b<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h> b10 = e.this.f35063c.b(this.f35182j.g().g());
                a aVar = new a(e.this, null);
                this.f35180h = 1;
                obj = kotlinx.coroutines.flow.c.z(b10, aVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    public e(@NotNull v parseVast, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o mediaConfig, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n mediaCacheRepository, @NotNull x vastTracker, @NotNull g0 connectivityService, @NotNull HttpClient httpClient, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.y screenService) {
        Intrinsics.checkNotNullParameter(parseVast, "parseVast");
        Intrinsics.checkNotNullParameter(mediaConfig, "mediaConfig");
        Intrinsics.checkNotNullParameter(mediaCacheRepository, "mediaCacheRepository");
        Intrinsics.checkNotNullParameter(vastTracker, "vastTracker");
        Intrinsics.checkNotNullParameter(connectivityService, "connectivityService");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(screenService, "screenService");
        this.f35061a = parseVast;
        this.f35062b = mediaConfig;
        this.f35063c = mediaCacheRepository;
        this.f35064d = vastTracker;
        this.f35065e = connectivityService;
        this.f35066f = httpClient;
        this.f35067g = screenService;
        this.f35068h = "VastAdLoaderImpl";
    }

    public static final b f(e eVar, a aVar) {
        return eVar.e(aVar);
    }

    public static final b g(ms.i<b> iVar) {
        return iVar.getValue();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.c i(e eVar, com.moloco.sdk.common_adapter_internal.b bVar, List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return eVar.j(it, bVar);
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e k(e eVar, List it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return eVar.l(it);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0192  */
    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a r12, long r13, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r15) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, long, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d6  */
    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull java.lang.String r19, @org.jetbrains.annotations.NotNull java.lang.String r20, boolean r21, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r22) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.b(java.lang.String, java.lang.String, boolean, rs.c):java.lang.Object");
    }

    public final double c(long j10, int i10) {
        return (j10 * 8) / (i10 * 1000);
    }

    public final b e(a aVar) {
        List<List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j>> c10;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        if (aVar != null && (c10 = aVar.c()) != null) {
            Iterator<T> it = c10.iterator();
            while (it.hasNext()) {
                ArrayList arrayList6 = new ArrayList();
                ArrayList arrayList7 = new ArrayList();
                ArrayList<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j> arrayList8 = new ArrayList();
                for (Object obj : (List) it.next()) {
                    if (!f35060i.r((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j) obj)) {
                        arrayList8.add(obj);
                    }
                }
                for (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j jVar : arrayList8) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.k b10 = jVar.b();
                    if (b10 instanceof k.b) {
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.r a10 = ((k.b) jVar.b()).a();
                        CollectionsKt.E(arrayList, a10.e());
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a f10 = a10.f();
                        if (f10 != null) {
                            CollectionsKt.E(arrayList2, f10.b());
                            CollectionsKt.E(arrayList3, f10.c());
                        }
                        CollectionsKt.E(arrayList6, a10.b());
                    } else if (b10 instanceof k.a) {
                        CollectionsKt.E(arrayList7, ((k.a) jVar.b()).a());
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                }
                arrayList4.add(arrayList6);
                arrayList5.add(arrayList7);
            }
        }
        return new b(arrayList, new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a(null, arrayList2, arrayList3), arrayList4, arrayList5);
    }

    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.c j(List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g> list, com.moloco.sdk.common_adapter_internal.b bVar) {
        int i10;
        int i11;
        List<String> n10;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g) obj;
            if (!f35060i.q(gVar) && !gVar.e().isEmpty()) {
                arrayList.add(obj);
            }
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g gVar2 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g) CollectionsKt.firstOrNull(CollectionsKt.U0(arrayList, t.h(Integer.valueOf(bVar.f()), Integer.valueOf(bVar.c()))));
        String str = null;
        if (gVar2 == null) {
            return null;
        }
        a0 a0Var = (a0) CollectionsKt.r0(CollectionsKt.U0(gVar2.e(), t.s()));
        Integer f10 = gVar2.f();
        if (f10 != null) {
            i10 = f10.intValue();
        } else {
            i10 = 0;
        }
        Integer d10 = gVar2.d();
        if (d10 != null) {
            i11 = d10.intValue();
        } else {
            i11 = 0;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.h b10 = gVar2.b();
        if (b10 != null) {
            str = b10.a();
        }
        String str2 = str;
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.h b11 = gVar2.b();
        if (b11 == null || (n10 = b11.b()) == null) {
            n10 = CollectionsKt.n();
        }
        List<String> list2 = n10;
        List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> c10 = gVar2.c();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(c10, 10));
        for (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y yVar : c10) {
            arrayList2.add(yVar.c());
        }
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.c(a0Var, i10, i11, str2, list2, arrayList2);
    }

    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e l(List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n> list) {
        int i10;
        int i11;
        List<String> n10;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!f35060i.s((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n) obj)) {
                arrayList.add(obj);
            }
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n nVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n) CollectionsKt.firstOrNull(CollectionsKt.U0(arrayList, t.f()));
        String str = null;
        if (nVar == null) {
            return null;
        }
        a0 f10 = nVar.f();
        Integer h10 = nVar.h();
        if (h10 != null) {
            i10 = h10.intValue();
        } else {
            i10 = 0;
        }
        Integer d10 = nVar.d();
        if (d10 != null) {
            i11 = d10.intValue();
        } else {
            i11 = 0;
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.o b10 = nVar.b();
        if (b10 != null) {
            str = b10.a();
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.o b11 = nVar.b();
        if (b11 == null || (n10 = b11.b()) == null) {
            n10 = CollectionsKt.n();
        }
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.e(f10, i10, i11, str, n10, nVar.g(), nVar.c(), nVar.e());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b r25, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.d r26, double r27, com.moloco.sdk.common_adapter_internal.b r29, boolean r30, java.lang.String r31, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r32) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.r(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e$d, double, com.moloco.sdk.common_adapter_internal.b, boolean, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0114  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object s(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b r18, java.util.List<java.lang.String> r19, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r20) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.s(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b, java.util.List, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x026c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x018d -> B:39:0x019d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x020d -> B:48:0x0217). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object t(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.q r31, final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.a r32, double r33, com.moloco.sdk.common_adapter_internal.b r35, boolean r36, java.lang.String r37, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r38) {
        /*
            Method dump skipped, instructions count: 851
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.t(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.q, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e$a, double, com.moloco.sdk.common_adapter_internal.b, boolean, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014d  */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object u(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.r r19, java.util.List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> r20, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a r21, java.util.List<java.lang.String> r22, double r23, java.lang.Long r25, com.moloco.sdk.common_adapter_internal.b r26, boolean r27, java.lang.String r28, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r29) {
        /*
            Method dump skipped, instructions count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.u(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.r, java.util.List, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a, java.util.List, double, java.lang.Long, com.moloco.sdk.common_adapter_internal.b, boolean, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0160  */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z r21, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.d r22, double r23, com.moloco.sdk.common_adapter_internal.b r25, boolean r26, java.lang.String r27, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> r28) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e.v(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.e$d, double, com.moloco.sdk.common_adapter_internal.b, boolean, java.lang.String, rs.c):java.lang.Object");
    }

    public final void w(List<String> list, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x xVar) {
        x.a.a(this.f35064d, list, xVar, null, null, 12, null);
    }

    public final double x() {
        if (!this.f35065e.b()) {
            return 10.0d;
        }
        return 2.0d;
    }
}
