package com.startshorts.androidplayer.manager.configure.ad;

import com.applovin.sdk.AppLovinMediationProvider;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.manager.ad.AdHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdUnitIdConfigureChooser.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdUnitIdConfigureChooser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdUnitIdConfigureChooser.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,78:1\n216#2,2:79\n216#2,2:81\n216#2,2:83\n216#2,2:85\n*S KotlinDebug\n*F\n+ 1 AdUnitIdConfigureChooser.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdUnitIdConfigureChooser\n*L\n36#1:79,2\n47#1:81,2\n54#1:83,2\n61#1:85,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AdUnitIdConfigureChooser implements me.b<HashMap<String, List<ca.e>>> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdUnitIdConfigureChooser f42279a = new AdUnitIdConfigureChooser();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, BaseAdUnitIdConfigure> f42280b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f42281c;

    static {
        HashMap<String, BaseAdUnitIdConfigure> hashMap = new HashMap<>();
        hashMap.put(AppLovinMediationProvider.ADMOB, new e());
        BaseAdUnitIdConfigure j10 = AdHelper.f41598a.j();
        if (j10 != null) {
            hashMap.put("hwAd", j10);
        }
        hashMap.put("applovinMax", new f());
        f42280b = hashMap;
    }

    private AdUnitIdConfigureChooser() {
    }

    private final String g() {
        return AdHelper.f41598a.i();
    }

    @Override // me.b
    @Nullable
    public Object a(@NotNull String str, @NotNull rs.c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    @Override // me.b
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByRemoteConfigure$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByRemoteConfigure$1 r0 = (com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByRemoteConfigure$1) r0
            int r1 = r0.f42290k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42290k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByRemoteConfigure$1 r0 = new com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByRemoteConfigure$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f42288i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42290k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r2 = r0.f42287h
            java.util.Iterator r2 = (java.util.Iterator) r2
            kotlin.f.b(r5)
            goto L43
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.f.b(r5)
            java.util.HashMap<java.lang.String, com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure> r5 = com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.f42280b
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
            r2 = r5
        L43:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L60
            java.lang.Object r5 = r2.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r5 = r5.getValue()
            com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure r5 = (com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure) r5
            r0.f42287h = r2
            r0.f42290k = r3
            java.lang.Object r5 = r5.b(r0)
            if (r5 != r1) goto L43
            return r1
        L60:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.b(rs.c):java.lang.Object");
    }

    @Override // me.b
    public void c(boolean z10) {
        f42281c = z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    @Override // me.b
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object d(@org.jetbrains.annotations.NotNull android.content.Context r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByLocalConfigure$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByLocalConfigure$1 r0 = (com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByLocalConfigure$1) r0
            int r1 = r0.f42286l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42286l = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByLocalConfigure$1 r0 = new com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$initByLocalConfigure$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f42284j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42286l
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r6 = r0.f42283i
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r2 = r0.f42282h
            android.content.Context r2 = (android.content.Context) r2
            kotlin.f.b(r7)
            r7 = r2
            goto L4a
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            java.util.HashMap<java.lang.String, com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure> r7 = com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.f42280b
            java.util.Set r7 = r7.entrySet()
            java.util.Iterator r7 = r7.iterator()
            r4 = r7
            r7 = r6
            r6 = r4
        L4a:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L69
            java.lang.Object r2 = r6.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r2 = r2.getValue()
            com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure r2 = (com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure) r2
            r0.f42282h = r7
            r0.f42283i = r6
            r0.f42286l = r3
            java.lang.Object r2 = r2.d(r7, r0)
            if (r2 != r1) goto L4a
            return r1
        L69:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.d(android.content.Context, rs.c):java.lang.Object");
    }

    @Override // me.b
    public boolean e() {
        return f42281c;
    }

    @NotNull
    public final List<ca.e> f(@NotNull AdScene scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        BaseAdUnitIdConfigure baseAdUnitIdConfigure = f42280b.get(g());
        if (baseAdUnitIdConfigure == null) {
            return new ArrayList();
        }
        return baseAdUnitIdConfigure.h(scene);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object h(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$reParse$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$reParse$1 r0 = (com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$reParse$1) r0
            int r1 = r0.f42294k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42294k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$reParse$1 r0 = new com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser$reParse$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f42292i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42294k
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r2 = r0.f42291h
            java.util.Iterator r2 = (java.util.Iterator) r2
            kotlin.f.b(r5)
            goto L43
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.f.b(r5)
            java.util.HashMap<java.lang.String, com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure> r5 = com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.f42280b
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
            r2 = r5
        L43:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L60
            java.lang.Object r5 = r2.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r5 = r5.getValue()
            com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure r5 = (com.startshorts.androidplayer.manager.configure.ad.BaseAdUnitIdConfigure) r5
            r0.f42291h = r2
            r0.f42294k = r3
            java.lang.Object r5 = r5.m(r0)
            if (r5 != r1) goto L43
            return r1
        L60:
            kotlin.Unit r5 = kotlin.Unit.f60915a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser.h(rs.c):java.lang.Object");
    }

    public void i(@NotNull AdScene adScene) {
        Intrinsics.checkNotNullParameter(adScene, "adScene");
        for (Map.Entry<String, BaseAdUnitIdConfigure> entry : f42280b.entrySet()) {
            entry.getValue().s(adScene);
        }
    }

    @Override // me.b
    @NotNull
    /* renamed from: j */
    public HashMap<String, List<ca.e>> value() {
        HashMap<String, List<ca.e>> value;
        BaseAdUnitIdConfigure baseAdUnitIdConfigure = f42280b.get(g());
        if (baseAdUnitIdConfigure == null || (value = baseAdUnitIdConfigure.value()) == null) {
            return new HashMap<>();
        }
        return value;
    }
}
