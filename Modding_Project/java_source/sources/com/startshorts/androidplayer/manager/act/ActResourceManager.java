package com.startshorts.androidplayer.manager.act;

import com.facebook.imagepipeline.request.ImageRequest;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceExtraInfo;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.manager.act.ActResourceManager;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure;
import com.startshorts.androidplayer.repo.act.ActResourceRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.v;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.a;
import pf.d;
import rs.c;
import ud.b;
/* compiled from: ActResourceManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActResourceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActResourceManager.kt\ncom/startshorts/androidplayer/manager/act/ActResourceManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,199:1\n1863#2,2:200\n774#2:202\n865#2,2:203\n1872#2,3:205\n*S KotlinDebug\n*F\n+ 1 ActResourceManager.kt\ncom/startshorts/androidplayer/manager/act/ActResourceManager\n*L\n115#1:200,2\n159#1:202\n159#1:203,2\n167#1:205,3\n*E\n"})
/* loaded from: classes6.dex */
public final class ActResourceManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ActResourceManager f41582a = new ActResourceManager();

    private ActResourceManager() {
    }

    private final void e(List<ActResource> list) {
        if (!AdSwitchConfigure.f42267a.value().b(AdScene.BANNER)) {
            CollectionsKt.O(list, new Function1() { // from class: ce.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean f10;
                    f10 = ActResourceManager.f((ActResource) obj);
                    return Boolean.valueOf(f10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(ActResource it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.isProgrammaticAd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ActResource> g(List<ActResource> list, Integer num) {
        List n10;
        long K = DeviceUtil.f48146a.K();
        if (list != null) {
            n10 = new ArrayList();
            for (Object obj : list) {
                ActResource actResource = (ActResource) obj;
                if (actResource.isLongTerm() == 1 || (K > actResource.getStartDatetimeLong() && K < actResource.getEndDatetimeLong())) {
                    n10.add(obj);
                }
            }
        } else {
            n10 = CollectionsKt.n();
        }
        if (num != null) {
            n10 = CollectionsKt.V0(n10, num.intValue());
        }
        int i10 = 0;
        for (Object obj2 : n10) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            ((ActResource) obj2).setPosition(i11);
            i10 = i11;
        }
        return n10;
    }

    static /* synthetic */ List h(ActResourceManager actResourceManager, List list, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        return actResourceManager.g(list, num);
    }

    private final Object i(List<ActResource> list, Integer num, c<? super List<ActResource>> cVar) {
        return i.f(new ActResourceManager$getValidResourceListSuspend$2(list, num, null), cVar);
    }

    static /* synthetic */ Object j(ActResourceManager actResourceManager, List list, Integer num, c cVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        return actResourceManager.i(list, num, cVar);
    }

    private final boolean m(ActResource actResource) {
        ImageRequest b10;
        String resourceMap = actResource.getResourceMap();
        if (resourceMap == null || resourceMap.length() == 0 || (b10 = ImageRequest.b(v.l(resourceMap))) == null) {
            return false;
        }
        return f.f60747a.o(b10);
    }

    private final boolean o(ActResource actResource) {
        String str;
        ActResourceExtraInfo extendInfo = actResource.getExtendInfo();
        if (extendInfo != null) {
            str = extendInfo.getFormatAdsVideoUrl();
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            return b.f68412a.c2(a.f64858a.a(str));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s() {
        Object obj;
        Iterator it = CollectionsKt.K0(CollectionsKt.K0(x(), q()), A()).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((ActResource) obj).isProgrammaticAd()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (obj != null) {
            AdManager.f41600a.a0(AdScene.BANNER);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object w(rs.c<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.manager.act.ActResourceManager$preloadVideos$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.manager.act.ActResourceManager$preloadVideos$1 r0 = (com.startshorts.androidplayer.manager.act.ActResourceManager$preloadVideos$1) r0
            int r1 = r0.f41595j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41595j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.act.ActResourceManager$preloadVideos$1 r0 = new com.startshorts.androidplayer.manager.act.ActResourceManager$preloadVideos$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f41593h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41595j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.f.b(r5)
            r0.f41595j = r3
            java.lang.Object r5 = r4.r(r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            java.util.List r5 = (java.util.List) r5
            java.lang.Object r5 = kotlin.collections.CollectionsKt.firstOrNull(r5)
            com.startshorts.androidplayer.bean.act.ActResource r5 = (com.startshorts.androidplayer.bean.act.ActResource) r5
            if (r5 == 0) goto L4c
            com.startshorts.androidplayer.manager.act.ActResourceManager r0 = com.startshorts.androidplayer.manager.act.ActResourceManager.f41582a
            r0.v(r5)
        L4c:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.act.ActResourceManager.w(rs.c):java.lang.Object");
    }

    public static /* synthetic */ r z(ActResourceManager actResourceManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return actResourceManager.y(z10);
    }

    @NotNull
    public final List<ActResource> A() {
        List<ActResource> g12 = CollectionsKt.g1(h(this, ActResourceRepo.f43103a.d(6), null, 2, null));
        e(g12);
        return g12;
    }

    @NotNull
    public final List<ActResource> B() {
        List<ActResource> g12 = CollectionsKt.g1(h(this, ActResourceRepo.f43103a.d(7), null, 2, null));
        e(g12);
        return g12;
    }

    @NotNull
    public final List<ActResource> C() {
        List<ActResource> g12 = CollectionsKt.g1(h(this, ActResourceRepo.f43103a.d(9), null, 2, null));
        e(g12);
        return g12;
    }

    @Nullable
    public final Object D(@NotNull c<? super List<ActResource>> cVar) {
        return j(this, ActResourceRepo.f43103a.d(8), null, cVar, 2, null);
    }

    @Nullable
    public final Object k(@NotNull c<? super List<ActResource>> cVar) {
        return j(this, ActResourceRepo.f43103a.d(2), null, cVar, 2, null);
    }

    @Nullable
    public final Object l(@NotNull c<? super List<ActResource>> cVar) {
        return j(this, ActResourceRepo.f43103a.d(1), null, cVar, 2, null);
    }

    public final boolean n(@NotNull ActResource resource) {
        Intrinsics.checkNotNullParameter(resource, "resource");
        if (resource.isBrandAd()) {
            if (resource.isBrandAdVideo()) {
                return o(resource);
            }
            return m(resource);
        }
        return m(resource);
    }

    @Nullable
    public final ActResource p() {
        return (ActResource) CollectionsKt.firstOrNull(h(this, ActResourceRepo.f43103a.d(3), null, 2, null));
    }

    @NotNull
    public final List<ActResource> q() {
        List<ActResource> g12 = CollectionsKt.g1(h(this, ActResourceRepo.f43103a.d(5), null, 2, null));
        e(g12);
        return g12;
    }

    @Nullable
    public final Object r(@NotNull c<? super List<ActResource>> cVar) {
        return j(this, ActResourceRepo.f43103a.d(0), null, cVar, 2, null);
    }

    @Nullable
    public final Object t(@NotNull ActResource actResource, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new ActResourceManager$preloadCovers$9(actResource, null), cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00f4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0113  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object u(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.act.ActResourceManager.u(rs.c):java.lang.Object");
    }

    public final void v(@NotNull ActResource resource) {
        String formatAdsVideoUrl;
        Intrinsics.checkNotNullParameter(resource, "resource");
        ActResourceExtraInfo extendInfo = resource.getExtendInfo();
        if (extendInfo != null && (formatAdsVideoUrl = extendInfo.getFormatAdsVideoUrl()) != null) {
            d.f64861a.c(formatAdsVideoUrl, ActResourceExtraInfo.PRELOAD_AD_VIDEO_SIZE);
        }
    }

    @NotNull
    public final List<ActResource> x() {
        List<ActResource> g12 = CollectionsKt.g1(h(this, ActResourceRepo.f43103a.d(4), null, 2, null));
        e(g12);
        return g12;
    }

    @NotNull
    public final r y(boolean z10) {
        return ActResourceRepo.f43103a.i(z10, new ActResourceManager$queryActResourceList$1(null));
    }
}
