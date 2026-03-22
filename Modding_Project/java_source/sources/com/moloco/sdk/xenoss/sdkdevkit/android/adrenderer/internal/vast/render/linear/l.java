package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.profileinstaller.ProfileVerifier;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.w;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.x;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.z;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nLinearVastTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinearVastTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/LinearVastTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1557#2:214\n1628#2,3:215\n1557#2:219\n1628#2,3:220\n1557#2:223\n1628#2,3:224\n1557#2:227\n1628#2,3:228\n1557#2:231\n1628#2,3:232\n1557#2:235\n1628#2,3:236\n1863#2,2:239\n1010#2,2:241\n1010#2,2:243\n967#2,7:245\n1557#2:252\n1628#2,3:253\n967#2,7:256\n1557#2:263\n1628#2,3:264\n1#3:218\n*S KotlinDebug\n*F\n+ 1 LinearVastTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/LinearVastTracker\n*L\n98#1:214\n98#1:215,3\n102#1:219\n102#1:220,3\n106#1:223\n106#1:224,3\n110#1:227\n110#1:228,3\n114#1:231\n114#1:232,3\n118#1:235\n118#1:236,3\n121#1:239,2\n138#1:241,2\n139#1:243,2\n158#1:245,7\n161#1:252\n161#1:253,3\n172#1:256,7\n175#1:263\n175#1:264,3\n*E\n"})
/* loaded from: classes6.dex */
public final class l {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f36320p = new a(null);

    /* renamed from: q  reason: collision with root package name */
    public static final int f36321q = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a f36322a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public List<String> f36323b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f36324c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final List<String> f36325d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final List<String> f36326e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final List<String> f36327f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f36328g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final List<String> f36329h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public List<String> f36330i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public final r f36331j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public final x f36332k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public final List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a> f36333l;

    /* renamed from: m  reason: collision with root package name */
    public int f36334m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public final List<n> f36335n;

    /* renamed from: o  reason: collision with root package name */
    public int f36336o;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final l a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.h linearTracking, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService) {
            Intrinsics.checkNotNullParameter(linearTracking, "linearTracking");
            Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
            return new l(customUserEventBuilderService, linearTracking.a(), linearTracking.d(), linearTracking.m(), linearTracking.e(), linearTracking.f(), linearTracking.n(), linearTracking.c(), linearTracking.g(), linearTracking.o(), linearTracking.h(), linearTracking.j(), linearTracking.k(), linearTracking.l(), linearTracking.b(), linearTracking.i(), null, null, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, null);
        }

        public a() {
        }
    }

    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 LinearVastTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/LinearVastTracker\n*L\n1#1,102:1\n138#2:103\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Long.valueOf(((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a) t10).a()), Long.valueOf(((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a) t11).a()));
        }
    }

    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 LinearVastTracker.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/LinearVastTracker\n*L\n1#1,102:1\n139#2:103\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((n) t10).a()), Integer.valueOf(((n) t11).a()));
        }
    }

    public l(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a customUserEventBuilderService, @Nullable List<String> list, @Nullable List<String> list2, @Nullable List<String> list3, @Nullable List<String> list4, @Nullable List<String> list5, @Nullable List<String> list6, @Nullable List<String> list7, @Nullable List<String> list8, @Nullable List<String> list9, @Nullable List<String> list10, @Nullable List<String> list11, @Nullable List<String> list12, @Nullable List<String> list13, @Nullable List<String> list14, @Nullable List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.g> list15, @NotNull r buttonTracker, @NotNull x vastTracker) {
        Intrinsics.checkNotNullParameter(customUserEventBuilderService, "customUserEventBuilderService");
        Intrinsics.checkNotNullParameter(buttonTracker, "buttonTracker");
        Intrinsics.checkNotNullParameter(vastTracker, "vastTracker");
        this.f36322a = customUserEventBuilderService;
        this.f36323b = list;
        this.f36324c = list8;
        this.f36325d = list9;
        this.f36326e = list10;
        this.f36327f = list11;
        this.f36328g = list12;
        this.f36329h = list13;
        this.f36330i = list14;
        this.f36331j = buttonTracker;
        this.f36332k = vastTracker;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (list2 != null) {
            ArrayList arrayList3 = new ArrayList(CollectionsKt.z(list2, 10));
            for (String str : list2) {
                arrayList3.add(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a(str, 0L));
            }
            arrayList.addAll(arrayList3);
        }
        if (list3 != null) {
            ArrayList arrayList4 = new ArrayList(CollectionsKt.z(list3, 10));
            for (String str2 : list3) {
                arrayList4.add(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a(str2, 0L));
            }
            arrayList.addAll(arrayList4);
        }
        if (list4 != null) {
            ArrayList arrayList5 = new ArrayList(CollectionsKt.z(list4, 10));
            for (String str3 : list4) {
                arrayList5.add(new n(str3, 25));
            }
            arrayList2.addAll(arrayList5);
        }
        if (list5 != null) {
            ArrayList arrayList6 = new ArrayList(CollectionsKt.z(list5, 10));
            for (String str4 : list5) {
                arrayList6.add(new n(str4, 50));
            }
            arrayList2.addAll(arrayList6);
        }
        if (list6 != null) {
            ArrayList arrayList7 = new ArrayList(CollectionsKt.z(list6, 10));
            for (String str5 : list6) {
                arrayList7.add(new n(str5, 75));
            }
            arrayList2.addAll(arrayList7);
        }
        if (list7 != null) {
            ArrayList arrayList8 = new ArrayList(CollectionsKt.z(list7, 10));
            for (String str6 : list7) {
                arrayList8.add(new n(str6, 100));
            }
            arrayList2.addAll(arrayList8);
        }
        if (list15 != null) {
            for (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.g gVar : list15) {
                t a10 = gVar.a();
                if (a10 instanceof t.b) {
                    arrayList.add(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a(gVar.b(), ((t.b) gVar.a()).a()));
                } else if (a10 instanceof t.a) {
                    arrayList2.add(new n(gVar.b(), ((t.a) gVar.a()).a()));
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            }
        }
        if (arrayList.size() > 1) {
            CollectionsKt.D(arrayList, new b());
        }
        this.f36333l = arrayList;
        if (arrayList2.size() > 1) {
            CollectionsKt.D(arrayList2, new c());
        }
        this.f36335n = arrayList2;
    }

    public final void a(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f36331j.i(buttonType);
    }

    public final void b(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f36331j.h(button);
    }

    public final void c(@NotNull a.AbstractC0597a.f lastClickPosition, @Nullable Integer num, @Nullable String str) {
        Intrinsics.checkNotNullParameter(lastClickPosition, "lastClickPosition");
        List<String> list = this.f36323b;
        if (list != null) {
            this.f36332k.b(list, null, num, str, this.f36331j.x(), this.f36322a, lastClickPosition);
            this.f36323b = null;
        }
    }

    public final void d(@Nullable String str, int i10, int i11) {
        double d10 = (i10 / i11) * 100;
        List<n> list = this.f36335n;
        List<n> subList = list.subList(this.f36336o, list.size());
        ArrayList<n> arrayList = new ArrayList();
        for (Object obj : subList) {
            if (((n) obj).a() > d10) {
                break;
            }
            arrayList.add(obj);
        }
        x xVar = this.f36332k;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
        for (n nVar : arrayList) {
            arrayList2.add(nVar.b());
        }
        xVar.a(arrayList2, null, Integer.valueOf(i10), str);
        this.f36336o += arrayList.size();
        List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a> list2 = this.f36333l;
        List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a> subList2 = list2.subList(this.f36334m, list2.size());
        ArrayList<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a> arrayList3 = new ArrayList();
        for (Object obj2 : subList2) {
            if (((com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a) obj2).a() > i10) {
                break;
            }
            arrayList3.add(obj2);
        }
        x xVar2 = this.f36332k;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.z(arrayList3, 10));
        for (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.linear.a aVar : arrayList3) {
            arrayList4.add(aVar.b());
        }
        xVar2.a(arrayList4, null, Integer.valueOf(i10), str);
        this.f36334m += arrayList3.size();
    }

    public final void e(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36324c;
        if (list != null) {
            this.f36332k.a(list, null, num, str);
        }
    }

    public final void f(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36326e;
        if (list != null) {
            this.f36332k.a(list, null, num, str);
        }
    }

    public final void g(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36327f;
        if (list != null) {
            this.f36332k.a(list, null, num, str);
        }
    }

    public final void h(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36328g;
        if (list != null) {
            this.f36332k.a(list, null, num, str);
        }
    }

    public final void i(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36329h;
        if (list != null) {
            this.f36332k.a(list, null, num, str);
        }
    }

    public final void j(@Nullable Integer num, @Nullable String str) {
        List<String> list = this.f36325d;
        if (list != null) {
            this.f36332k.a(list, null, num, str);
        }
    }

    public /* synthetic */ l(com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, List list, List list2, List list3, List list4, List list5, List list6, List list7, List list8, List list9, List list10, List list11, List list12, List list13, List list14, List list15, r rVar, x xVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, list, list2, list3, list4, list5, list6, list7, list8, list9, list10, list11, list12, list13, list14, list15, (i10 & 65536) != 0 ? w.a() : rVar, (i10 & 131072) != 0 ? z.e() : xVar);
    }
}
