package com.startshorts.androidplayer.repo.discover;

import androidx.fragment.app.Fragment;
import com.facebook.imagepipeline.request.ImageRequest;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverResource;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.DiscoverTabHomeResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.v;
import kk.f;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vg.a;
/* compiled from: DiscoverRepo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRepo.kt\ncom/startshorts/androidplayer/repo/discover/DiscoverRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n1863#2:399\n1863#2,2:400\n1864#2:402\n1863#2:403\n1863#2,2:404\n1864#2:406\n295#2,2:408\n1863#2,2:410\n1863#2,2:412\n1#3:407\n*S KotlinDebug\n*F\n+ 1 DiscoverRepo.kt\ncom/startshorts/androidplayer/repo/discover/DiscoverRepo\n*L\n111#1:399\n114#1:400,2\n111#1:402\n127#1:403\n129#1:404,2\n127#1:406\n291#1:408,2\n335#1:410,2\n378#1:412,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DiscoverRepo f43967a = new DiscoverRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43968b = c.b(new Function0() { // from class: vg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DiscoverRemoteDS F;
            F = DiscoverRepo.F();
            return F;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f43969c = c.b(new Function0() { // from class: vg.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a E;
            E = DiscoverRepo.E();
            return E;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static boolean f43970d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static Function1<? super Result<DiscoverTabHomeResult>, Unit> f43971e;

    private DiscoverRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(Object obj) {
        Function1<? super Result<DiscoverTabHomeResult>, Unit> function1 = f43971e;
        if (function1 != null) {
            function1.invoke(Result.b(obj));
        }
        f43971e = null;
    }

    private final boolean C(DiscoverModule discoverModule) {
        List<DiscoverCategory> categoryVOList;
        List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
        if ((shortPlayResponseList != null && !shortPlayResponseList.isEmpty()) || ((categoryVOList = discoverModule.getCategoryVOList()) != null && !categoryVOList.isEmpty())) {
            return false;
        }
        return true;
    }

    private final boolean D(int i10) {
        if (i10 >= DeviceUtil.f48146a.F() * 0.8d) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a E() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiscoverRemoteDS F() {
        return new DiscoverRemoteDS();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x010d, code lost:
        if (r0 != null) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0066 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(java.util.List<com.startshorts.androidplayer.bean.discover.DiscoverModule> r28) {
        /*
            Method dump skipped, instructions count: 692
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.G(java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(String str) {
        f43970d = false;
        f43967a.A(v.c(str));
        return Unit.f60915a;
    }

    private static final void N(DiscoverModule discoverModule, List<? extends DiscoverShorts> list) {
        if (list != null) {
            for (DiscoverShorts discoverShorts : list) {
                discoverShorts.setModuleId(discoverModule.getBannerId());
                discoverShorts.setModuleName(discoverModule.getTitle());
            }
        }
    }

    private final ImageRequest j(int i10, DiscoverShorts discoverShorts, int i11, int i12) {
        if (discoverShorts == null) {
            return null;
        }
        if (id.a.f53392a.c()) {
            Logger logger = Logger.f41511a;
            logger.h("DiscoverRepo", "preloadCover -> style(" + i10 + ") url(" + discoverShorts.getPicUrl() + ')');
        }
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverShorts.getPicUrl());
        frescoConfig.setOssWidth(i11);
        frescoConfig.setOssHeight(i12);
        return fVar.m(frescoConfig);
    }

    static /* synthetic */ ImageRequest k(DiscoverRepo discoverRepo, int i10, DiscoverShorts discoverShorts, int i11, int i12, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i11 = id.c.f53397a.b();
        }
        if ((i13 & 8) != 0) {
            i12 = id.c.f53397a.a();
        }
        return discoverRepo.j(i10, discoverShorts, i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a w() {
        return (a) f43969c.getValue();
    }

    private final DiscoverRemoteDS x() {
        return (DiscoverRemoteDS) f43968b.getValue();
    }

    private final String y() {
        return w().a();
    }

    private final void z(DiscoverTabPage discoverTabPage) {
        List<DiscoverModule> bannerResponseList;
        List<DiscoverModule> bannerResponseList2;
        List<DiscoverResource> contentResponseList;
        int intValue;
        List<DiscoverModule> bannerResponseList3;
        List<DiscoverResource> contentResponseList2;
        int intValue2;
        String str;
        String str2;
        String str3;
        Object obj = null;
        if (discoverTabPage != null && (bannerResponseList3 = discoverTabPage.getBannerResponseList()) != null) {
            for (DiscoverModule discoverModule : bannerResponseList3) {
                if (discoverModule.getStyle() == 4 && (contentResponseList2 = discoverModule.getContentResponseList()) != null && !contentResponseList2.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (DiscoverResource discoverResource : discoverModule.getContentResponseList()) {
                        if (discoverModule.getRecommendId() == null) {
                            intValue2 = -1;
                        } else {
                            Integer recommendId = discoverModule.getRecommendId();
                            Intrinsics.checkNotNull(recommendId);
                            intValue2 = recommendId.intValue();
                        }
                        discoverResource.setRecommendId(intValue2);
                        discoverResource.setModuleId(discoverModule.getBannerId());
                        DiscoverShorts discoverShorts = new DiscoverShorts();
                        discoverShorts.setBannerContent(discoverResource);
                        BaseShorts shortPlayResponse = discoverResource.getShortPlayResponse();
                        if (shortPlayResponse != null) {
                            str = shortPlayResponse.getShortPlayName();
                        } else {
                            str = null;
                        }
                        discoverShorts.setShortPlayName(str);
                        BaseShorts shortPlayResponse2 = discoverResource.getShortPlayResponse();
                        if (shortPlayResponse2 != null) {
                            str2 = shortPlayResponse2.getShortPlayCode();
                        } else {
                            str2 = null;
                        }
                        discoverShorts.setShortPlayCode(str2);
                        BaseShorts shortPlayResponse3 = discoverResource.getShortPlayResponse();
                        if (shortPlayResponse3 == null || (str3 = shortPlayResponse3.getUpack()) == null) {
                            str3 = "";
                        }
                        discoverShorts.setUpack(str3);
                        arrayList.add(discoverShorts);
                    }
                    discoverModule.setShortPlayResponseList(arrayList);
                }
            }
        }
        if (discoverTabPage != null && (bannerResponseList2 = discoverTabPage.getBannerResponseList()) != null) {
            for (DiscoverModule discoverModule2 : bannerResponseList2) {
                if (discoverModule2.getStyle() == 13 && (contentResponseList = discoverModule2.getContentResponseList()) != null && !contentResponseList.isEmpty()) {
                    for (DiscoverResource discoverResource2 : discoverModule2.getContentResponseList()) {
                        if (discoverModule2.getRecommendId() == null) {
                            intValue = -1;
                        } else {
                            Integer recommendId2 = discoverModule2.getRecommendId();
                            Intrinsics.checkNotNull(recommendId2);
                            intValue = recommendId2.intValue();
                        }
                        discoverResource2.setRecommendId(intValue);
                    }
                }
            }
        }
        if (discoverTabPage != null && (bannerResponseList = discoverTabPage.getBannerResponseList()) != null) {
            Iterator<T> it = bannerResponseList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((DiscoverModule) next).getStyle() == 14) {
                    obj = next;
                    break;
                }
            }
            obj = (DiscoverModule) obj;
        }
        if (obj != null) {
            AdManager.f41600a.a0(AdScene.NATIVE);
        }
    }

    public final boolean B(@NotNull Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        return fragment instanceof DiscoverTabFragment;
    }

    public final void H() {
        if (!AccountRepo.f43052a.w0() || fk.a.f51702a.a() || f43970d) {
            return;
        }
        ud.a.f68411a.n0(true);
        f43970d = true;
        String y10 = y();
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        CoroutineUtil.k(coroutineUtil, null, "preloadModules modulesCacheKey=" + y10, false, new DiscoverRepo$preloadModules$1(y10, null), new Function1() { // from class: vg.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit I;
                I = DiscoverRepo.I((String) obj);
                return I;
            }
        }, 5, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object J(@org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.NotNull java.lang.String r10, int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.discover.DiscoverModule>> r12) {
        /*
            r8 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.repo.discover.DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1
            if (r0 == 0) goto L14
            r0 = r12
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1 r0 = (com.startshorts.androidplayer.repo.discover.DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1) r0
            int r1 = r0.f44001j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44001j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1 r0 = new com.startshorts.androidplayer.repo.discover.DiscoverRepo$queryDiscoverModulesMoreForTimeLimitSale$1
            r0.<init>(r8, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r7.f43999h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f44001j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r9 = r12.n()
            goto L54
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r12)
            com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS r1 = r8.x()
            java.lang.String r5 = r8.r()
            java.lang.String r6 = r8.s()
            r7.f44001j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            java.lang.Object r9 = r1.g(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L54
            return r0
        L54:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.J(java.lang.String, java.lang.String, int, rs.c):java.lang.Object");
    }

    public final void K(@Nullable DiscoverTabPage discoverTabPage) {
        w().b().put(y(), discoverTabPage);
    }

    public final void L(@Nullable Function1<? super Result<DiscoverTabHomeResult>, Unit> function1) {
        f43971e = function1;
    }

    public final void M(@NotNull DiscoverModule discoverModule) {
        Intrinsics.checkNotNullParameter(discoverModule, "discoverModule");
        N(discoverModule, discoverModule.getShortPlayResponseList());
    }

    public final void h() {
        w().b().clear();
    }

    public final void i() {
        w().c().clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(int r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.discover.DiscoverTabPage>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetch$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetch$1 r0 = (com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetch$1) r0
            int r1 = r0.f43975k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43975k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetch$1 r0 = new com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetch$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f43973i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43975k
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r6 = r0.f43972h
            com.startshorts.androidplayer.repo.discover.DiscoverRepo r6 = (com.startshorts.androidplayer.repo.discover.DiscoverRepo) r6
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.n()
            goto L56
        L33:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3b:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS r7 = r5.x()
            java.lang.String r2 = r5.r()
            java.lang.String r4 = r5.s()
            r0.f43972h = r5
            r0.f43975k = r3
            java.lang.Object r7 = r7.e(r6, r2, r4, r0)
            if (r7 != r1) goto L55
            return r1
        L55:
            r6 = r5
        L56:
            boolean r0 = kotlin.Result.j(r7)
            if (r0 == 0) goto L6a
            boolean r0 = kotlin.Result.i(r7)
            if (r0 == 0) goto L64
            r0 = 0
            goto L65
        L64:
            r0 = r7
        L65:
            com.startshorts.androidplayer.bean.discover.DiscoverTabPage r0 = (com.startshorts.androidplayer.bean.discover.DiscoverTabPage) r0
            r6.z(r0)
        L6a:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.l(int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(int r14, int r15, @org.jetbrains.annotations.NotNull java.lang.String r16, @org.jetbrains.annotations.Nullable java.lang.String r17, @org.jetbrains.annotations.NotNull java.lang.String r18, int r19, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.discover.DiscoverCategoryShorts>>> r20) {
        /*
            r13 = this;
            r0 = r20
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverModulesCategoryMore$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverModulesCategoryMore$1 r1 = (com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverModulesCategoryMore$1) r1
            int r2 = r1.f43978j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f43978j = r2
            r2 = r13
        L15:
            r12 = r1
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverModulesCategoryMore$1 r1 = new com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverModulesCategoryMore$1
            r2 = r13
            r1.<init>(r13, r0)
            goto L15
        L1e:
            java.lang.Object r0 = r12.f43976h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r12.f43978j
            r4 = 1
            if (r3 == 0) goto L3d
            if (r3 != r4) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L5f
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS r3 = r13.x()
            java.lang.String r10 = r13.r()
            java.lang.String r11 = r13.s()
            r12.f43978j = r4
            r4 = r14
            r5 = r15
            r6 = r16
            r7 = r17
            r8 = r18
            r9 = r19
            java.lang.Object r0 = r3.a(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            if (r0 != r1) goto L5f
            return r1
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.m(int, int, java.lang.String, java.lang.String, java.lang.String, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object n(@org.jetbrains.annotations.NotNull java.lang.String r10, int r11, int r12, int r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.discover.DiscoverShorts>>> r14) {
        /*
            r9 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverRankingBanner$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverRankingBanner$1 r0 = (com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverRankingBanner$1) r0
            int r1 = r0.f43981j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f43981j = r1
        L12:
            r8 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverRankingBanner$1 r0 = new com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchDiscoverRankingBanner$1
            r0.<init>(r9, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r8.f43979h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r8.f43981j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r10 = r14.n()
            goto L55
        L31:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS r1 = r9.x()
            java.lang.String r6 = r9.r()
            java.lang.String r7 = r9.s()
            r8.f43981j = r2
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            java.lang.Object r10 = r1.b(r2, r3, r4, r5, r6, r7, r8)
            if (r10 != r0) goto L55
            return r0
        L55:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.n(java.lang.String, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object o(@org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.NotNull java.lang.String r10, int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.discover.DiscoverModule>> r12) {
        /*
            r8 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMore$1
            if (r0 == 0) goto L14
            r0 = r12
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMore$1 r0 = (com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMore$1) r0
            int r1 = r0.f43984j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f43984j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMore$1 r0 = new com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMore$1
            r0.<init>(r8, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r7.f43982h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f43984j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r9 = r12.n()
            goto L54
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r12)
            com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS r1 = r8.x()
            java.lang.String r5 = r8.r()
            java.lang.String r6 = r8.s()
            r7.f43984j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            java.lang.Object r9 = r1.c(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L54
            return r0
        L54:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.o(java.lang.String, java.lang.String, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object p(@org.jetbrains.annotations.NotNull java.lang.String r14, @org.jetbrains.annotations.NotNull java.lang.String r15, int r16, int r17, int r18, int r19, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends com.startshorts.androidplayer.bean.discover.DiscoverModule>> r20) {
        /*
            r13 = this;
            r0 = r20
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMorePage$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMorePage$1 r1 = (com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMorePage$1) r1
            int r2 = r1.f43987j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f43987j = r2
            r2 = r13
        L15:
            r12 = r1
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMorePage$1 r1 = new com.startshorts.androidplayer.repo.discover.DiscoverRepo$fetchModuleMorePage$1
            r2 = r13
            r1.<init>(r13, r0)
            goto L15
        L1e:
            java.lang.Object r0 = r12.f43985h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r12.f43987j
            r4 = 1
            if (r3 == 0) goto L3d
            if (r3 != r4) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L5f
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS r3 = r13.x()
            java.lang.String r7 = r13.r()
            java.lang.String r8 = r13.s()
            r12.f43987j = r4
            r4 = r14
            r5 = r15
            r6 = r16
            r9 = r17
            r10 = r18
            r11 = r19
            java.lang.Object r0 = r3.d(r4, r5, r6, r7, r8, r9, r10, r11, r12)
            if (r0 != r1) goto L5f
            return r1
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.p(java.lang.String, java.lang.String, int, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0088  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object q(boolean r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.discover.DiscoverTabHomeResult>> r12) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discover.DiscoverRepo.q(boolean, rs.c):java.lang.Object");
    }

    @NotNull
    public final String r() {
        return ABTestFactory.f42224a.N0().getAbTestKey();
    }

    @Nullable
    public final String s() {
        String abTestValue = ABTestFactory.f42224a.N0().abTestValue();
        if (abTestValue.length() == 0) {
            return null;
        }
        return abTestValue;
    }

    @Nullable
    public final DiscoverTabPage t() {
        return w().b().getOrDefault(y(), null);
    }

    @Nullable
    public final List<DiscoverTab> u() {
        return w().c().getOrDefault(y(), null);
    }

    public final boolean v() {
        return f43970d;
    }
}
