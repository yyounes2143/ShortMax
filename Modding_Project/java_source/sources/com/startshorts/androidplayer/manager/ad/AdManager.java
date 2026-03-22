package com.startshorts.androidplayer.manager.ad;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import ca.f;
import com.appsflyer.AppsFlyerProperties;
import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.hades.aar.admanager.core.AdPriority;
import com.hades.aar.admanager.core.AdSize;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.ad.AdConfig;
import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.ad.HotSplash;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.configure.ad.AdShowCountManager;
import com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure;
import com.startshorts.androidplayer.manager.configure.ad.AdUnitIdConfigureChooser;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.ad.AdReportRepo;
import com.startshorts.androidplayer.ui.dialog.loading.InterstitialAdLoadingDialog;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import da.b;
import da.c;
import ga.a;
import java.lang.ref.WeakReference;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1973:1\n1863#2,2:1974\n774#2:1976\n865#2,2:1977\n1663#2,8:1979\n1557#2:1987\n1628#2,3:1988\n1#3:1991\n*S KotlinDebug\n*F\n+ 1 AdManager.kt\ncom/startshorts/androidplayer/manager/ad/AdManager\n*L\n261#1:1974,2\n264#1:1976\n264#1:1977,2\n264#1:1979,8\n1294#1:1987\n1294#1:1988,3\n*E\n"})
/* loaded from: classes6.dex */
public final class AdManager {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static AdAggregatedSdk f41601b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static String f41602c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f41603d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f41604e;

    /* renamed from: g  reason: collision with root package name */
    private static long f41606g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdManager f41600a = new AdManager();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final da.a f41605f = new d();

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private long f41607a;

        /* renamed from: b  reason: collision with root package name */
        private long f41608b;

        @NotNull
        public final String a() {
            return String.valueOf(Math.max(1, (int) ((this.f41608b - this.f41607a) / 1000)));
        }

        public final void b() {
            this.f41608b = DeviceUtil.f48146a.L();
        }

        public final void c() {
            this.f41607a = DeviceUtil.f48146a.L();
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a0 implements f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41609a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41610b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41611c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41612d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ a f41613e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41614f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f41615g;

        /* JADX WARN: Multi-variable type inference failed */
        a0(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, String str, BaseEpisode baseEpisode, a aVar, Ref.ObjectRef<ca.h> objectRef, Function1<? super Boolean, Unit> function1) {
            this.f41609a = booleanRef;
            this.f41610b = booleanRef2;
            this.f41611c = str;
            this.f41612d = baseEpisode;
            this.f41613e = aVar;
            this.f41614f = objectRef;
            this.f41615g = function1;
        }

        @Override // ca.f.c
        public void a(ca.d adInfo, Object obj) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            boolean z10 = true;
            this.f41609a.element = true;
            Ref.BooleanRef booleanRef = this.f41610b;
            if (adInfo.h() == AdFormat.REWARDED_VIDEO) {
                if (obj instanceof Boolean) {
                    bool = (Boolean) obj;
                } else {
                    bool = null;
                }
                z10 = Intrinsics.areEqual(bool, Boolean.TRUE);
            }
            booleanRef.element = z10;
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "showMediaVideoAd -> onDismiss(" + this.f41610b.element + ')');
            AdManager adManager = AdManager.f41600a;
            adManager.S(this.f41611c, this.f41610b.element, adInfo, this.f41612d, this.f41613e);
            ca.h hVar = this.f41614f.element;
            if (hVar != null) {
                String str = this.f41611c;
                Ref.BooleanRef booleanRef2 = this.f41610b;
                AdManager.R(adManager, null, str, hVar, booleanRef2.element, adInfo, this.f41612d, this.f41613e, 1, null);
            }
            if (this.f41614f.element == null) {
                adManager.Y(this.f41611c, adInfo);
            }
            this.f41615g.invoke(Boolean.TRUE);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements a.InterfaceC0751a {
        b() {
        }

        @Override // ga.a.InterfaceC0751a
        public void a(String str, String str2) {
            Logger.f41511a.e(str, str2);
        }

        @Override // ga.a.InterfaceC0751a
        public void b(String str, String str2) {
            Logger.f41511a.h(str, str2);
        }

        @Override // ga.a.InterfaceC0751a
        public void c(String str, String str2) {
            if (id.a.f53392a.c()) {
                Logger.f41511a.h(str, str2);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b0 implements f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f41616a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41617b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41618c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41619d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f41620e;

        /* JADX WARN: Multi-variable type inference failed */
        b0(a aVar, Ref.ObjectRef<ca.d> objectRef, String str, BaseEpisode baseEpisode, Function1<? super Boolean, Unit> function1) {
            this.f41616a = aVar;
            this.f41617b = objectRef;
            this.f41618c = str;
            this.f41619d = baseEpisode;
            this.f41620e = function1;
        }

        @Override // ca.f.e
        public void a(ca.d dVar, String str) {
            String str2;
            String str3;
            String str4;
            String str5;
            ca.c f10;
            AdFormat h10;
            Logger.f41511a.e("AdManager", "showVideoMediaAd failed -> " + str);
            AdUnitIdConfigureChooser.f42279a.i(AdScene.MEDIA_VIDEO);
            this.f41620e.invoke(Boolean.FALSE);
            if (str != null) {
                String str6 = null;
                if (StringsKt.b0(str, "ad_instream_play_timeout", false, 2, null)) {
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    String str7 = this.f41618c;
                    if (dVar != null && (h10 = dVar.h()) != null) {
                        str2 = jk.a.a(h10);
                    } else {
                        str2 = null;
                    }
                    bundle.putString("type", str2);
                    bundle.putString("ad_placement", str7);
                    if (dVar != null) {
                        str3 = dVar.c();
                    } else {
                        str3 = null;
                    }
                    bundle.putString("ad_unit_id", str3);
                    if (dVar != null) {
                        str4 = dVar.j();
                    } else {
                        str4 = null;
                    }
                    bundle.putString("ad_unit_name", str4);
                    if (dVar != null && (f10 = dVar.f()) != null) {
                        str5 = f10.a();
                    } else {
                        str5 = null;
                    }
                    bundle.putString("ad_mediation_name", str5);
                    if (dVar != null) {
                        str6 = jk.a.b(dVar);
                    }
                    bundle.putString("ad_platform", str6);
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "ad_instream_play_timeout", bundle, 0L, 4, null);
                }
            }
        }

        @Override // ca.f.e
        public boolean b(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public void c(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41616a.c();
            this.f41617b.element = adInfo;
            AdManager adManager = AdManager.f41600a;
            adManager.U(this.f41618c, adInfo, this.f41619d);
            AdUnitIdConfigureChooser adUnitIdConfigureChooser = AdUnitIdConfigureChooser.f42279a;
            AdScene adScene = AdScene.MEDIA_VIDEO;
            adUnitIdConfigureChooser.i(adScene);
            AdShowCountManager.f42259a.k(adInfo.c());
            adManager.a0(adScene);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c implements b.a {
        c() {
        }

        @Override // da.b.a
        public void a(ca.e adLoadParam, int i10, String errorMsg, String mediationName) {
            Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
            Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
            Intrinsics.checkNotNullParameter(mediationName, "mediationName");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_unit_id", adLoadParam.e());
            bundle.putString("ad_error_msg", errorMsg);
            bundle.putString("ad_error_code", String.valueOf(i10));
            bundle.putString("ad_platform", jk.a.c(adLoadParam));
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_not_fill", bundle, 0L, 4, null);
        }

        @Override // da.b.a
        public void b(ca.e adLoadParam) {
            Intrinsics.checkNotNullParameter(adLoadParam, "adLoadParam");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("type", jk.a.a(adLoadParam.f()));
            bundle.putString("ad_unit_id", adLoadParam.e());
            bundle.putString("ad_unit_name", adLoadParam.h());
            bundle.putString("ad_platform", jk.a.c(adLoadParam));
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_request", bundle, 0L, 4, null);
        }

        @Override // da.b.a
        public void c(ca.d adInfo, long j10, String mediationName, boolean z10) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Intrinsics.checkNotNullParameter(mediationName, "mediationName");
            if (z10) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                AdManager.z(AdManager.f41600a, adInfo, null, bundle, null, 8, null);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "ad_request", bundle, 0L, 4, null);
                String str = AdManager.f41602c;
                if (str != null && str.length() != 0) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("ad_placement", AdManager.f41602c);
                    bundle2.putString("type", "4");
                    EventManager.s0(eventManager, "ad_placement_show", bundle2, 0L, 4, null);
                }
            }
            EventManager eventManager2 = EventManager.f42463a;
            Bundle bundle3 = new Bundle();
            bundle3.putString(HiAnalyticsConstant.BI_KEY_COST_TIME, String.valueOf(j10));
            AdManager.z(AdManager.f41600a, adInfo, null, bundle3, null, 8, null);
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager2, "ad_fill", bundle3, 0L, 4, null);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c0 implements f.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41621a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41622b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41623c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41624d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41625e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41626f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ a f41627g;

        c0(Ref.ObjectRef<ca.h> objectRef, Ref.ObjectRef<ca.d> objectRef2, Ref.BooleanRef booleanRef, String str, BaseEpisode baseEpisode, Ref.BooleanRef booleanRef2, a aVar) {
            this.f41621a = objectRef;
            this.f41622b = objectRef2;
            this.f41623c = booleanRef;
            this.f41624d = str;
            this.f41625e = baseEpisode;
            this.f41626f = booleanRef2;
            this.f41627g = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.d
        public void a(ca.h ecpmValue) {
            ca.d dVar;
            Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
            this.f41621a.element = ecpmValue;
            ca.d dVar2 = this.f41622b.element;
            if (dVar2 != null) {
                AdManager.X(AdManager.f41600a, null, this.f41624d, ecpmValue, dVar2, this.f41625e, 1, null);
            }
            if (this.f41623c.element && (dVar = this.f41622b.element) != null) {
                String str = this.f41624d;
                Ref.BooleanRef booleanRef = this.f41626f;
                a aVar = this.f41627g;
                AdManager adManager = AdManager.f41600a;
                adManager.Z(str, dVar);
                AdManager.R(adManager, null, str, ecpmValue, booleanRef.element, dVar, null, aVar, 33, null);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d implements da.a {
        d() {
        }

        @Override // da.a
        public void a(String key, String value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            ud.b.f68412a.u2(key, value);
        }

        @Override // da.a
        public String getString(String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return ud.b.f68412a.k(key);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d0 implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41628a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41629b;

        d0(Function0<Unit> function0, String str) {
            this.f41628a = function0;
            this.f41629b = str;
        }

        @Override // ca.f.b
        public void a(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            AdManager adManager = AdManager.f41600a;
            adManager.d0(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            AdManager.z(adManager, adInfo, this.f41629b, bundle, null, 8, null);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_clicks", bundle, 0L, 4, null);
            Function0<Unit> function0 = this.f41628a;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class e implements da.c {
        e() {
        }

        @Override // da.c
        public void a(String preloadId, ca.e eVar, int i10) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            c.a.b(this, preloadId, eVar, i10);
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "preloadAd admob onAdsExhausted -> adParam=" + eVar + "\npreloadId=" + preloadId);
        }

        @Override // da.c
        public void b(String preloadId, String responseId, ca.e adParam, int i10) {
            Intrinsics.checkNotNullParameter(preloadId, "preloadId");
            Intrinsics.checkNotNullParameter(responseId, "responseId");
            Intrinsics.checkNotNullParameter(adParam, "adParam");
            c.a.a(this, preloadId, responseId, adParam, i10);
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "preloadAd admob onAdPreloaded -> adParam=" + adParam + "\npreloadId=" + preloadId + "\nresponseId=" + responseId);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class e0 implements f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41630a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41631b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41632c;

        e0(Function0<Unit> function0, Ref.ObjectRef<ca.d> objectRef, String str) {
            this.f41630a = function0;
            this.f41631b = objectRef;
            this.f41632c = str;
        }

        @Override // ca.f.e
        public void a(ca.d dVar, String str) {
            Logger logger = Logger.f41511a;
            logger.e("AdManager", "showNativeAd failed -> " + str);
            AdUnitIdConfigureChooser.f42279a.i(AdScene.NATIVE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public boolean b(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41631b.element = adInfo;
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public void c(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Function0<Unit> function0 = this.f41630a;
            if (function0 != null) {
                function0.invoke();
            }
            this.f41631b.element = adInfo;
            AdManager adManager = AdManager.f41600a;
            AdManager.V(adManager, this.f41632c, adInfo, null, 4, null);
            AdUnitIdConfigureChooser adUnitIdConfigureChooser = AdUnitIdConfigureChooser.f42279a;
            AdScene adScene = AdScene.NATIVE;
            adUnitIdConfigureChooser.i(adScene);
            AdShowCountManager.f42259a.k(adInfo.c());
            adManager.a0(adScene);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class f implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41633a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41634b;

        f(Function0<Unit> function0, String str) {
            this.f41633a = function0;
            this.f41634b = str;
        }

        @Override // ca.f.b
        public void a(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            AdManager adManager = AdManager.f41600a;
            adManager.d0(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            AdManager.z(adManager, adInfo, this.f41634b, bundle, null, 8, null);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_clicks", bundle, 0L, 4, null);
            Function0<Unit> function0 = this.f41633a;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class f0 implements f.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41635a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41636b;

        f0(Ref.ObjectRef<ca.d> objectRef, String str) {
            this.f41635a = objectRef;
            this.f41636b = str;
        }

        @Override // ca.f.d
        public void a(ca.h ecpmValue) {
            Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
            ca.d dVar = this.f41635a.element;
            if (dVar != null) {
                AdManager.X(AdManager.f41600a, null, this.f41636b, ecpmValue, dVar, null, 17, null);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class g implements f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f41637a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41638b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41639c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41640d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function1<String, Unit> f41641e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Function1<ca.d, Boolean> f41642f;

        /* compiled from: AdManager.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[AdFormat.values().length];
                try {
                    iArr[AdFormat.APP_OPEN.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[AdFormat.INTERSTITIAL.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[AdFormat.NATIVE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        g(a aVar, Function0<Unit> function0, Ref.ObjectRef<ca.d> objectRef, String str, Function1<? super String, Unit> function1, Function1<? super ca.d, Boolean> function12) {
            this.f41637a = aVar;
            this.f41638b = function0;
            this.f41639c = objectRef;
            this.f41640d = str;
            this.f41641e = function1;
            this.f41642f = function12;
        }

        @Override // ca.f.e
        public void a(ca.d dVar, String str) {
            Logger logger = Logger.f41511a;
            logger.e("AdManager", "showAppOpenAd failed -> " + str);
            AdUnitIdConfigureChooser.f42279a.i(AdScene.APP_OPEN);
            this.f41641e.invoke(str);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public boolean b(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41639c.element = adInfo;
            return this.f41642f.invoke(adInfo).booleanValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public void c(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41637a.c();
            this.f41638b.invoke();
            this.f41639c.element = adInfo;
            AdManager adManager = AdManager.f41600a;
            AdManager.V(adManager, this.f41640d, adInfo, null, 4, null);
            AdUnitIdConfigureChooser adUnitIdConfigureChooser = AdUnitIdConfigureChooser.f42279a;
            AdScene adScene = AdScene.APP_OPEN;
            adUnitIdConfigureChooser.i(adScene);
            AdShowCountManager.f42259a.k(adInfo.c());
            adManager.a0(adScene);
            int i10 = a.$EnumSwitchMapping$0[adInfo.h().ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        EventManager.s0(EventManager.f42463a, "ad_splash_native", null, 0L, 6, null);
                        return;
                    }
                    return;
                }
                EventManager.s0(EventManager.f42463a, "ad_splash_interstitial", null, 0L, 6, null);
                return;
            }
            EventManager.s0(EventManager.f42463a, "ad_splash_app_open", null, 0L, 6, null);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class g0 implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41643a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41644b;

        g0(String str, String str2) {
            this.f41643a = str;
            this.f41644b = str2;
        }

        @Override // ca.f.b
        public void a(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            AdManager adManager = AdManager.f41600a;
            adManager.d0(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String str = this.f41643a;
            String str2 = this.f41644b;
            AdManager.z(adManager, adInfo, str, bundle, null, 8, null);
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("from", str2);
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_clicks", bundle, 0L, 4, null);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class h implements f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41645a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41646b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ a f41647c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41648d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41649e;

        h(String str, Ref.BooleanRef booleanRef, a aVar, Ref.ObjectRef<ca.h> objectRef, Function0<Unit> function0) {
            this.f41645a = str;
            this.f41646b = booleanRef;
            this.f41647c = aVar;
            this.f41648d = objectRef;
            this.f41649e = function0;
        }

        @Override // ca.f.c
        public void a(ca.d adInfo, Object obj) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "showAppOpenAd -> onDismiss -> scene(" + this.f41645a + ')');
            this.f41646b.element = true;
            AdManager adManager = AdManager.f41600a;
            AdManager.T(adManager, this.f41645a, true, adInfo, null, this.f41647c, 8, null);
            ca.h hVar = this.f41648d.element;
            if (hVar != null) {
                AdManager.R(adManager, null, this.f41645a, hVar, true, adInfo, null, this.f41647c, 33, null);
            }
            if (this.f41648d.element == null) {
                adManager.Y(this.f41645a, adInfo);
            }
            this.f41649e.invoke();
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class h0 implements f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f41650a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41651b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41652c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41653d;

        h0(a aVar, Ref.ObjectRef<ca.d> objectRef, String str, BaseEpisode baseEpisode) {
            this.f41650a = aVar;
            this.f41651b = objectRef;
            this.f41652c = str;
            this.f41653d = baseEpisode;
        }

        @Override // ca.f.e
        public void a(ca.d dVar, String str) {
            Logger logger = Logger.f41511a;
            logger.e("AdManager", "showRewardVideoAd failed -> " + str);
            AdUnitIdConfigureChooser.f42279a.i(AdScene.REWARD);
            fk.u.j(fk.u.f51776a, R$string.common_retry, 0, 2, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public boolean b(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41651b.element = adInfo;
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public void c(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41650a.c();
            this.f41651b.element = adInfo;
            AdManager adManager = AdManager.f41600a;
            adManager.U(this.f41652c, adInfo, this.f41653d);
            AdUnitIdConfigureChooser adUnitIdConfigureChooser = AdUnitIdConfigureChooser.f42279a;
            AdScene adScene = AdScene.REWARD;
            adUnitIdConfigureChooser.i(adScene);
            AdShowCountManager.f42259a.k(adInfo.c());
            adManager.a0(adScene);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class i implements f.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41654a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41655b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41656c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41657d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ a f41658e;

        i(Ref.ObjectRef<ca.h> objectRef, Ref.ObjectRef<ca.d> objectRef2, Ref.BooleanRef booleanRef, String str, a aVar) {
            this.f41654a = objectRef;
            this.f41655b = objectRef2;
            this.f41656c = booleanRef;
            this.f41657d = str;
            this.f41658e = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.d
        public void a(ca.h ecpmValue) {
            ca.d dVar;
            Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
            this.f41654a.element = ecpmValue;
            ca.d dVar2 = this.f41655b.element;
            if (dVar2 != null) {
                AdManager.X(AdManager.f41600a, null, this.f41657d, ecpmValue, dVar2, null, 17, null);
            }
            if (this.f41656c.element && (dVar = this.f41655b.element) != null) {
                String str = this.f41657d;
                a aVar = this.f41658e;
                AdManager adManager = AdManager.f41600a;
                adManager.Z(str, dVar);
                AdManager.R(adManager, null, str, ecpmValue, true, dVar, null, aVar, 33, null);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class i0 implements f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41659a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41660b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f41661c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41662d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41663e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a f41664f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41665g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ String f41666h;

        /* JADX WARN: Multi-variable type inference failed */
        i0(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, Function1<? super Boolean, Unit> function1, String str, BaseEpisode baseEpisode, a aVar, Ref.ObjectRef<ca.h> objectRef, String str2) {
            this.f41659a = booleanRef;
            this.f41660b = booleanRef2;
            this.f41661c = function1;
            this.f41662d = str;
            this.f41663e = baseEpisode;
            this.f41664f = aVar;
            this.f41665g = objectRef;
            this.f41666h = str2;
        }

        @Override // ca.f.c
        public void a(ca.d adInfo, Object obj) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            boolean z10 = true;
            this.f41659a.element = true;
            Ref.BooleanRef booleanRef = this.f41660b;
            if (adInfo.h() == AdFormat.REWARDED_VIDEO) {
                if (obj instanceof Boolean) {
                    bool = (Boolean) obj;
                } else {
                    bool = null;
                }
                z10 = Intrinsics.areEqual(bool, Boolean.TRUE);
            }
            booleanRef.element = z10;
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "showRewardVideoAd -> onDismiss(" + this.f41660b.element + ')');
            this.f41661c.invoke(Boolean.valueOf(this.f41660b.element));
            AdManager adManager = AdManager.f41600a;
            adManager.S(this.f41662d, this.f41660b.element, adInfo, this.f41663e, this.f41664f);
            ca.h hVar = this.f41665g.element;
            if (hVar != null) {
                String str = this.f41666h;
                String str2 = this.f41662d;
                Ref.BooleanRef booleanRef2 = this.f41660b;
                adManager.Q(str, str2, hVar, booleanRef2.element, adInfo, this.f41663e, this.f41664f);
            }
            if (this.f41665g.element == null) {
                adManager.Y(this.f41662d, adInfo);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class j implements f.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41667a;

        j(Function0<Unit> function0) {
            this.f41667a = function0;
        }

        @Override // ca.f.a
        public void a(List<String> adUnitList) {
            Intrinsics.checkNotNullParameter(adUnitList, "adUnitList");
            this.f41667a.invoke();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_load_failed_in_show_duration", "key:" + adUnitList);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_load_error", bundle, 0L, 4, null);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class j0 implements f.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41668a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41669b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41670c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41671d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f41672e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41673f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41674g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ a f41675h;

        j0(Ref.ObjectRef<ca.h> objectRef, Ref.ObjectRef<ca.d> objectRef2, Ref.BooleanRef booleanRef, String str, String str2, BaseEpisode baseEpisode, Ref.BooleanRef booleanRef2, a aVar) {
            this.f41668a = objectRef;
            this.f41669b = objectRef2;
            this.f41670c = booleanRef;
            this.f41671d = str;
            this.f41672e = str2;
            this.f41673f = baseEpisode;
            this.f41674g = booleanRef2;
            this.f41675h = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.d
        public void a(ca.h ecpmValue) {
            ca.d dVar;
            Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
            this.f41668a.element = ecpmValue;
            ca.d dVar2 = this.f41669b.element;
            if (dVar2 != null) {
                AdManager.f41600a.W(this.f41671d, this.f41672e, ecpmValue, dVar2, this.f41673f);
            }
            if (this.f41670c.element && (dVar = this.f41669b.element) != null) {
                String str = this.f41672e;
                String str2 = this.f41671d;
                Ref.BooleanRef booleanRef = this.f41674g;
                BaseEpisode baseEpisode = this.f41673f;
                a aVar = this.f41675h;
                AdManager adManager = AdManager.f41600a;
                adManager.Z(str, dVar);
                adManager.Q(str2, str, ecpmValue, booleanRef.element, dVar, baseEpisode, aVar);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class k implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41676a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41677b;

        k(Function0<Unit> function0, String str) {
            this.f41676a = function0;
            this.f41677b = str;
        }

        @Override // ca.f.b
        public void a(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            AdManager adManager = AdManager.f41600a;
            adManager.d0(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            AdManager.z(adManager, adInfo, this.f41677b, bundle, null, 8, null);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_clicks", bundle, 0L, 4, null);
            Function0<Unit> function0 = this.f41676a;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class l implements f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41678a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41679b;

        l(Ref.ObjectRef<ca.d> objectRef, String str) {
            this.f41678a = objectRef;
            this.f41679b = str;
        }

        @Override // ca.f.e
        public void a(ca.d dVar, String str) {
            Logger logger = Logger.f41511a;
            logger.e("AdManager", "showBannerAd failed -> " + str);
            AdUnitIdConfigureChooser.f42279a.i(AdScene.BANNER);
        }

        @Override // ca.f.e
        public boolean b(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public void c(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41678a.element = adInfo;
            AdManager.V(AdManager.f41600a, this.f41679b, adInfo, null, 4, null);
            AdUnitIdConfigureChooser.f42279a.i(AdScene.BANNER);
            AdShowCountManager.f42259a.k(adInfo.c());
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class m implements f.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41683a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41684b;

        m(Ref.ObjectRef<ca.d> objectRef, String str) {
            this.f41683a = objectRef;
            this.f41684b = str;
        }

        @Override // ca.f.d
        public void a(ca.h ecpmValue) {
            Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
            ca.d dVar = this.f41683a.element;
            if (dVar != null) {
                AdManager.X(AdManager.f41600a, null, this.f41684b, ecpmValue, dVar, null, 17, null);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class n implements InterstitialAdLoadingDialog.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41685a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41686b;

        n(Function0<Unit> function0, Function0<Unit> function02) {
            this.f41685a = function0;
            this.f41686b = function02;
        }

        @Override // com.startshorts.androidplayer.ui.dialog.loading.InterstitialAdLoadingDialog.b
        public void b() {
            Function0<Unit> function0 = this.f41685a;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // com.startshorts.androidplayer.ui.dialog.loading.InterstitialAdLoadingDialog.b
        public void onDismiss() {
            Function0<Unit> function0 = this.f41686b;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class o implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41687a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41688b;

        o(String str, String str2) {
            this.f41687a = str;
            this.f41688b = str2;
        }

        @Override // ca.f.b
        public void a(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            AdManager adManager = AdManager.f41600a;
            adManager.d0(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String str = this.f41687a;
            String str2 = this.f41688b;
            AdManager.z(adManager, adInfo, str, bundle, null, 8, null);
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("from", str2);
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_clicks", bundle, 0L, 4, null);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class p implements f.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41689a;

        p(String str) {
            this.f41689a = str;
        }

        @Override // ca.f.a
        public void a(List<String> adUnitList) {
            Intrinsics.checkNotNullParameter(adUnitList, "adUnitList");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_load_failed_in_show_duration", "key:" + adUnitList);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_load_error", bundle, 0L, 4, null);
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().c(this.f41689a);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class q implements f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f41692a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41693b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41694c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41695d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f41696e;

        /* JADX WARN: Multi-variable type inference failed */
        q(a aVar, Ref.ObjectRef<ca.d> objectRef, String str, BaseEpisode baseEpisode, Function1<? super Boolean, Unit> function1) {
            this.f41692a = aVar;
            this.f41693b = objectRef;
            this.f41694c = str;
            this.f41695d = baseEpisode;
            this.f41696e = function1;
        }

        @Override // ca.f.e
        public void a(ca.d dVar, String str) {
            Function1<Boolean, Unit> function1 = this.f41696e;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            AdUnitIdConfigureChooser.f42279a.i(AdScene.NATIVE);
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().c(this.f41694c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public boolean b(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41693b.element = adInfo;
            return !AdManager.f41600a.O();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public void c(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41692a.c();
            this.f41693b.element = adInfo;
            AdManager adManager = AdManager.f41600a;
            adManager.U(this.f41694c, adInfo, this.f41695d);
            AdUnitIdConfigureChooser adUnitIdConfigureChooser = AdUnitIdConfigureChooser.f42279a;
            AdScene adScene = AdScene.NATIVE;
            adUnitIdConfigureChooser.i(adScene);
            AdShowCountManager.f42259a.k(adInfo.c());
            adManager.a0(adScene);
            com.startshorts.androidplayer.manager.configure.ad.b e10 = com.startshorts.androidplayer.manager.configure.ad.b.f42335d.e();
            if (e10 != null) {
                e10.l();
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class r implements f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f41697a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41698b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41699c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41700d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41701e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a f41702f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41703g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ String f41704h;

        /* JADX WARN: Multi-variable type inference failed */
        r(Function1<? super Boolean, Unit> function1, Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, String str, BaseEpisode baseEpisode, a aVar, Ref.ObjectRef<ca.h> objectRef, String str2) {
            this.f41697a = function1;
            this.f41698b = booleanRef;
            this.f41699c = booleanRef2;
            this.f41700d = str;
            this.f41701e = baseEpisode;
            this.f41702f = aVar;
            this.f41703g = objectRef;
            this.f41704h = str2;
        }

        @Override // ca.f.c
        public void a(ca.d adInfo, Object obj) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Function1<Boolean, Unit> function1 = this.f41697a;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().e();
            boolean z10 = true;
            this.f41698b.element = true;
            Ref.BooleanRef booleanRef = this.f41699c;
            if (adInfo.h() == AdFormat.REWARDED_VIDEO) {
                if (obj instanceof Boolean) {
                    bool = (Boolean) obj;
                } else {
                    bool = null;
                }
                z10 = Intrinsics.areEqual(bool, Boolean.TRUE);
            }
            booleanRef.element = z10;
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "showFullScreenNativeAdAd -> onDismiss(" + this.f41699c.element + ')');
            AdManager adManager = AdManager.f41600a;
            adManager.S(this.f41700d, this.f41699c.element, adInfo, this.f41701e, this.f41702f);
            ca.h hVar = this.f41703g.element;
            if (hVar != null) {
                String str = this.f41704h;
                String str2 = this.f41700d;
                Ref.BooleanRef booleanRef2 = this.f41699c;
                adManager.Q(str, str2, hVar, booleanRef2.element, adInfo, this.f41701e, this.f41702f);
            }
            if (this.f41703g.element == null) {
                adManager.Y(this.f41700d, adInfo);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class s implements f.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41705a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41706b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41707c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41708d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f41709e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41710f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ a f41711g;

        s(Ref.ObjectRef<ca.h> objectRef, Ref.ObjectRef<ca.d> objectRef2, Ref.BooleanRef booleanRef, String str, String str2, Ref.BooleanRef booleanRef2, a aVar) {
            this.f41705a = objectRef;
            this.f41706b = objectRef2;
            this.f41707c = booleanRef;
            this.f41708d = str;
            this.f41709e = str2;
            this.f41710f = booleanRef2;
            this.f41711g = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.d
        public void a(ca.h ecpmValue) {
            ca.d dVar;
            Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
            this.f41705a.element = ecpmValue;
            ca.d dVar2 = this.f41706b.element;
            if (dVar2 != null) {
                AdManager.X(AdManager.f41600a, this.f41708d, this.f41709e, ecpmValue, dVar2, null, 16, null);
            }
            if (this.f41707c.element && (dVar = this.f41706b.element) != null) {
                String str = this.f41709e;
                String str2 = this.f41708d;
                Ref.BooleanRef booleanRef = this.f41710f;
                a aVar = this.f41711g;
                AdManager adManager = AdManager.f41600a;
                adManager.Z(str, dVar);
                AdManager.R(adManager, str2, str, ecpmValue, booleanRef.element, dVar, null, aVar, 32, null);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class t implements InterstitialAdLoadingDialog.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41712a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f41713b;

        t(Function0<Unit> function0, Function0<Unit> function02) {
            this.f41712a = function0;
            this.f41713b = function02;
        }

        @Override // com.startshorts.androidplayer.ui.dialog.loading.InterstitialAdLoadingDialog.b
        public void b() {
            Function0<Unit> function0 = this.f41712a;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // com.startshorts.androidplayer.ui.dialog.loading.InterstitialAdLoadingDialog.b
        public void onDismiss() {
            Function0<Unit> function0 = this.f41713b;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class u implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41714a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f41715b;

        u(String str, String str2) {
            this.f41714a = str;
            this.f41715b = str2;
        }

        @Override // ca.f.b
        public void a(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            AdManager adManager = AdManager.f41600a;
            adManager.d0(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            String str = this.f41714a;
            String str2 = this.f41715b;
            AdManager.z(adManager, adInfo, str, bundle, null, 8, null);
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("from", str2);
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_clicks", bundle, 0L, 4, null);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class v implements f.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41716a;

        v(String str) {
            this.f41716a = str;
        }

        @Override // ca.f.a
        public void a(List<String> adUnitList) {
            Intrinsics.checkNotNullParameter(adUnitList, "adUnitList");
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_load_failed_in_show_duration", "key:" + adUnitList);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_load_error", bundle, 0L, 4, null);
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().c(this.f41716a);
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class w implements f.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a f41717a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41718b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f41719c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41720d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f41721e;

        /* JADX WARN: Multi-variable type inference failed */
        w(a aVar, Ref.ObjectRef<ca.d> objectRef, String str, BaseEpisode baseEpisode, Function1<? super Boolean, Unit> function1) {
            this.f41717a = aVar;
            this.f41718b = objectRef;
            this.f41719c = str;
            this.f41720d = baseEpisode;
            this.f41721e = function1;
        }

        @Override // ca.f.e
        public void a(ca.d dVar, String str) {
            Function1<Boolean, Unit> function1 = this.f41721e;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            AdUnitIdConfigureChooser.f42279a.i(AdScene.INTERSTITIAL);
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().c(this.f41719c);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public boolean b(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41718b.element = adInfo;
            return !AdManager.f41600a.O();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.e
        public void c(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.f41717a.c();
            this.f41718b.element = adInfo;
            AdManager adManager = AdManager.f41600a;
            adManager.U(this.f41719c, adInfo, this.f41720d);
            AdUnitIdConfigureChooser adUnitIdConfigureChooser = AdUnitIdConfigureChooser.f42279a;
            AdScene adScene = AdScene.INTERSTITIAL;
            adUnitIdConfigureChooser.i(adScene);
            AdShowCountManager.f42259a.k(adInfo.c());
            adManager.a0(adScene);
            com.startshorts.androidplayer.manager.configure.ad.b e10 = com.startshorts.androidplayer.manager.configure.ad.b.f42335d.e();
            if (e10 != null) {
                e10.l();
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class x implements f.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function1<Boolean, Unit> f41734a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41735b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41736c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41737d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ BaseEpisode f41738e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ a f41739f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41740g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ String f41741h;

        /* JADX WARN: Multi-variable type inference failed */
        x(Function1<? super Boolean, Unit> function1, Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, String str, BaseEpisode baseEpisode, a aVar, Ref.ObjectRef<ca.h> objectRef, String str2) {
            this.f41734a = function1;
            this.f41735b = booleanRef;
            this.f41736c = booleanRef2;
            this.f41737d = str;
            this.f41738e = baseEpisode;
            this.f41739f = aVar;
            this.f41740g = objectRef;
            this.f41741h = str2;
        }

        @Override // ca.f.c
        public void a(ca.d adInfo, Object obj) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Function1<Boolean, Unit> function1 = this.f41734a;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().e();
            boolean z10 = true;
            this.f41735b.element = true;
            Ref.BooleanRef booleanRef = this.f41736c;
            if (adInfo.h() == AdFormat.REWARDED_VIDEO) {
                if (obj instanceof Boolean) {
                    bool = (Boolean) obj;
                } else {
                    bool = null;
                }
                z10 = Intrinsics.areEqual(bool, Boolean.TRUE);
            }
            booleanRef.element = z10;
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "showInterstitialAd -> onDismiss(" + this.f41736c.element + ')');
            AdManager adManager = AdManager.f41600a;
            adManager.S(this.f41737d, this.f41736c.element, adInfo, this.f41738e, this.f41739f);
            ca.h hVar = this.f41740g.element;
            if (hVar != null) {
                String str = this.f41741h;
                String str2 = this.f41737d;
                Ref.BooleanRef booleanRef2 = this.f41736c;
                adManager.Q(str, str2, hVar, booleanRef2.element, adInfo, this.f41738e, this.f41739f);
            }
            if (this.f41740g.element == null) {
                adManager.Y(this.f41737d, adInfo);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class y implements f.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.h> f41742a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<ca.d> f41743b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41744c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f41745d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f41746e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f41747f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ a f41748g;

        y(Ref.ObjectRef<ca.h> objectRef, Ref.ObjectRef<ca.d> objectRef2, Ref.BooleanRef booleanRef, String str, String str2, Ref.BooleanRef booleanRef2, a aVar) {
            this.f41742a = objectRef;
            this.f41743b = objectRef2;
            this.f41744c = booleanRef;
            this.f41745d = str;
            this.f41746e = str2;
            this.f41747f = booleanRef2;
            this.f41748g = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // ca.f.d
        public void a(ca.h ecpmValue) {
            ca.d dVar;
            Intrinsics.checkNotNullParameter(ecpmValue, "ecpmValue");
            this.f41742a.element = ecpmValue;
            ca.d dVar2 = this.f41743b.element;
            if (dVar2 != null) {
                AdManager.X(AdManager.f41600a, this.f41745d, this.f41746e, ecpmValue, dVar2, null, 16, null);
            }
            if (this.f41744c.element && (dVar = this.f41743b.element) != null) {
                String str = this.f41746e;
                String str2 = this.f41745d;
                Ref.BooleanRef booleanRef = this.f41747f;
                a aVar = this.f41748g;
                AdManager adManager = AdManager.f41600a;
                adManager.Z(str, dVar);
                AdManager.R(adManager, str2, str, ecpmValue, booleanRef.element, dVar, null, aVar, 32, null);
            }
        }
    }

    /* compiled from: AdManager.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class z implements f.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f41749a;

        z(String str) {
            this.f41749a = str;
        }

        @Override // ca.f.b
        public void a(ca.d adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            AdManager adManager = AdManager.f41600a;
            adManager.d0(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            AdManager.z(adManager, adInfo, this.f41749a, bundle, null, 8, null);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_clicks", bundle, 0L, 4, null);
        }
    }

    private AdManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0() {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(Function0 function0, ms.i iVar) {
        hi.c y02 = y0(iVar);
        if (y02 != null) {
            y02.a();
        }
        ca.i.f3408a.n();
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(Ref.ObjectRef objectRef, String str) {
        w0("waitGDPRConsent task exception -> " + str);
        ca.i.f3408a.n();
        ((Function0) objectRef.element).invoke();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D0(Activity activity) {
        return !ca.i.f3408a.q(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(final ms.i<? extends hi.c> iVar) {
        fk.h0.f51735a.e(new Runnable() { // from class: de.i
            @Override // java.lang.Runnable
            public final void run() {
                AdManager.F0(ms.i.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(ms.i iVar) {
        hi.c y02 = y0(iVar);
        if (y02 != null) {
            y02.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(boolean z10, final Activity activity) {
        if (z10) {
            activity.runOnUiThread(new Runnable() { // from class: de.j
                @Override // java.lang.Runnable
                public final void run() {
                    AdManager.H0(activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(Activity activity) {
        Toast.makeText(activity, activity.getString(R$string.gdpr_refusing_toast), 0).show();
    }

    private final boolean L(List<AdFormat> list) {
        try {
            return ca.k.f3414a.h(list);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("AdManager", "isAdShowing failed -> " + e10.getMessage());
            return false;
        }
    }

    private final boolean N() {
        Integer num;
        AdmobPreloadConfig value = AdmobPreloadConfig.Companion.getValue();
        if (value == null || (num = value.getSwitch()) == null || num.intValue() != 1) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean P() {
        return ae.a.f627a.k();
    }

    public static /* synthetic */ void R(AdManager adManager, String str, String str2, ca.h hVar, boolean z10, ca.d dVar, BaseEpisode baseEpisode, a aVar, int i10, Object obj) {
        String str3;
        BaseEpisode baseEpisode2;
        if ((i10 & 1) != 0) {
            str3 = null;
        } else {
            str3 = str;
        }
        if ((i10 & 32) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        adManager.Q(str3, str2, hVar, z10, dVar, baseEpisode2, aVar);
    }

    public static /* synthetic */ void T(AdManager adManager, String str, boolean z10, ca.d dVar, BaseEpisode baseEpisode, a aVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            baseEpisode = null;
        }
        adManager.S(str, z10, dVar, baseEpisode, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(String str, ca.d dVar, BaseEpisode baseEpisode) {
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        z(f41600a, dVar, str, C, null, 8, null);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_real_impressions", C, 0L, 4, null);
    }

    static /* synthetic */ void V(AdManager adManager, String str, ca.d dVar, BaseEpisode baseEpisode, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            baseEpisode = null;
        }
        adManager.U(str, dVar, baseEpisode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W(String str, String str2, ca.h hVar, ca.d dVar, BaseEpisode baseEpisode) {
        x(str2, hVar, dVar, baseEpisode);
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        f41600a.y(dVar, str2, C, hVar);
        if (!TextUtils.isEmpty(str)) {
            C.putString("from", str);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_revenue", C, 0L, 4, null);
    }

    static /* synthetic */ void X(AdManager adManager, String str, String str2, ca.h hVar, ca.d dVar, BaseEpisode baseEpisode, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "";
        }
        String str3 = str;
        if ((i10 & 16) != 0) {
            baseEpisode = null;
        }
        adManager.W(str3, str2, hVar, dVar, baseEpisode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.coroutines.r Y(String str, ca.d dVar) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "logAdValueNullOnDismiss", false, new AdManager$logAdValueNullOnDismiss$1(dVar, str, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z(String str, ca.d dVar) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        z(f41600a, dVar, str, bundle, null, 8, null);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_value_received_after_dismiss", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0() {
        List<String> list;
        int i10;
        Integer preloadNum;
        AdmobPreloadConfig.Companion companion = AdmobPreloadConfig.Companion;
        AdmobPreloadConfig value = companion.getValue();
        boolean N = N();
        Logger logger = Logger.f41511a;
        logger.e("AdManager", "preloadAd info adPreloadConfig=" + value + "\nmLoaderType=" + f41601b);
        if (f41601b == AdAggregatedSdk.ADMOB && N && !f41603d) {
            logger.h("AdManager", "preloadAd Admob start isPreloadAdAdmob=" + f41603d);
            if (value != null) {
                list = value.getAdType();
            } else {
                list = null;
            }
            List<AdScene> adScene = companion.getAdScene(list);
            ArrayList arrayList = new ArrayList();
            for (AdScene adScene2 : adScene) {
                arrayList.addAll(AdUnitIdConfigureChooser.f42279a.f(adScene2));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((ca.e) obj).j() != AdPriority.PRIORITY_LOW) {
                    arrayList2.add(obj);
                }
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList2) {
                if (hashSet.add(((ca.e) obj2).e())) {
                    arrayList3.add(obj2);
                }
            }
            if (!arrayList3.isEmpty()) {
                f41603d = true;
                Logger logger2 = Logger.f41511a;
                logger2.e("AdManager", "preloadAd Admob isPreloadAdAdmob=" + f41603d + " preAdUnits=" + arrayList3);
                ca.k kVar = ca.k.f3414a;
                if (value != null && (preloadNum = value.getPreloadNum()) != null) {
                    i10 = preloadNum.intValue();
                } else {
                    i10 = 2;
                }
                kVar.r(arrayList3, i10, new e());
            }
        }
    }

    public static /* synthetic */ gt.g0 f0(AdManager adManager, Activity activity, ViewGroup viewGroup, long j10, long j11, String str, Function1 function1, Function0 function0, Function1 function12, Function0 function02, Function0 function03, Function0 function04, int i10, Object obj) {
        Function1 function13;
        Function0 function05;
        Function0 function06;
        if ((i10 & 128) != 0) {
            function13 = new Function1() { // from class: de.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    Unit g02;
                    g02 = AdManager.g0((String) obj2);
                    return g02;
                }
            };
        } else {
            function13 = function12;
        }
        if ((i10 & 512) != 0) {
            function05 = null;
        } else {
            function05 = function03;
        }
        if ((i10 & 1024) != 0) {
            function06 = new Function0() { // from class: de.l
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit h02;
                    h02 = AdManager.h0();
                    return h02;
                }
            };
        } else {
            function06 = function04;
        }
        return adManager.e0(activity, viewGroup, j10, j11, str, function1, function0, function13, function02, function05, function06);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(String str) {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0() {
        return Unit.f60915a;
    }

    public static /* synthetic */ boolean k0(AdManager adManager, String str, Activity activity, String str2, int i10, int i11, BaseEpisode baseEpisode, boolean z10, Function0 function0, Function0 function02, long j10, long j11, Function1 function1, int i12, Object obj) {
        int i13;
        int i14;
        BaseEpisode baseEpisode2;
        boolean z11;
        Function0 function03;
        Function0 function04;
        long j12;
        long j13;
        Function1 function12;
        int i15;
        if ((i12 & 8) != 0) {
            i13 = R$layout.activity_immersion_full_screen_native;
        } else {
            i13 = i10;
        }
        if ((i12 & 16) != 0) {
            if (adManager.M()) {
                i15 = R$layout.view_native_ad_admob_2;
            } else {
                i15 = R$layout.view_native_ad_tp_2;
            }
            i14 = i15;
        } else {
            i14 = i11;
        }
        if ((i12 & 32) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        if ((i12 & 64) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i12 & 128) != 0) {
            function03 = null;
        } else {
            function03 = function0;
        }
        if ((i12 & 256) != 0) {
            function04 = null;
        } else {
            function04 = function02;
        }
        if ((i12 & 512) != 0) {
            j12 = 0;
        } else {
            j12 = j10;
        }
        if ((i12 & 1024) != 0) {
            j13 = 2500;
        } else {
            j13 = j11;
        }
        if ((i12 & 2048) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        return adManager.j0(str, activity, str2, i13, i14, baseEpisode2, z11, function03, function04, j12, j13, function12);
    }

    public static /* synthetic */ void o0(AdManager adManager, WeakReference weakReference, ViewGroup viewGroup, int i10, String str, Function0 function0, Function0 function02, f.InterfaceC0089f interfaceC0089f, int i11, Object obj) {
        Function0 function03;
        Function0 function04;
        f.InterfaceC0089f interfaceC0089f2;
        if ((i11 & 16) != 0) {
            function03 = null;
        } else {
            function03 = function0;
        }
        if ((i11 & 32) != 0) {
            function04 = null;
        } else {
            function04 = function02;
        }
        if ((i11 & 64) != 0) {
            interfaceC0089f2 = null;
        } else {
            interfaceC0089f2 = interfaceC0089f;
        }
        adManager.n0(weakReference, viewGroup, i10, str, function03, function04, interfaceC0089f2);
    }

    public static /* synthetic */ void q0(AdManager adManager, String str, Activity activity, String str2, BaseEpisode baseEpisode, Function1 function1, int i10, Object obj) {
        String str3;
        BaseEpisode baseEpisode2;
        if ((i10 & 1) != 0) {
            str3 = null;
        } else {
            str3 = str;
        }
        if ((i10 & 8) != 0) {
            baseEpisode2 = null;
        } else {
            baseEpisode2 = baseEpisode;
        }
        adManager.p0(str3, activity, str2, baseEpisode2, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(String str, Activity activity, String str2, BaseEpisode baseEpisode, Function1 function1) {
        f41600a.s0(str, activity, str2, baseEpisode, function1);
        return Unit.f60915a;
    }

    private final void s0(String str, Activity activity, String str2, BaseEpisode baseEpisode, Function1<? super Boolean, Unit> function1) {
        int i10;
        Integer intOrNull = StringsKt.toIntOrNull(ABTestFactory.f42224a.E0().abTestValue());
        if (intOrNull != null) {
            i10 = intOrNull.intValue();
        } else {
            i10 = 0;
        }
        long max = Math.max(i10 * 1000, 2000L);
        long L = DeviceUtil.f48146a.L();
        long j10 = L - f41606g;
        if (j10 < 500 + max) {
            Logger logger = Logger.f41511a;
            logger.e("AdManager", "showRewardVideo failed -> show too frequently, gap=" + j10 + ' ');
            return;
        }
        Logger logger2 = Logger.f41511a;
        logger2.h("AdManager", "showRewardVideo start-> gap=" + j10);
        f41606g = L;
        if (activity == null) {
            logger2.e("AdManager", "showRewardVideo failed -> activity is null");
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("ad_placement", str2);
        bundle.putString("type", "1");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        a aVar = new a();
        ca.k kVar = ca.k.f3414a;
        ca.f fVar = new ca.f();
        fVar.C(str2);
        fVar.q(new WeakReference<>(activity));
        fVar.z(max);
        fVar.y(new WeakReference<>(new hi.c(activity)));
        fVar.v(AdUnitIdConfigureChooser.f42279a.f(AdScene.REWARD));
        fVar.w(new g0(str2, str));
        fVar.D(new h0(aVar, objectRef2, str2, baseEpisode));
        fVar.x(new i0(booleanRef, booleanRef2, function1, str2, baseEpisode, aVar, objectRef, str));
        fVar.B(new j0(objectRef, objectRef2, booleanRef, str, str2, baseEpisode, booleanRef2, aVar));
        kVar.u(fVar);
    }

    public static /* synthetic */ void u0(AdManager adManager, Activity activity, String str, long j10, boolean z10, boolean z11, Function0 function0, int i10, Object obj) {
        long j11;
        boolean z12;
        boolean z13;
        if ((i10 & 4) != 0) {
            j11 = 0;
        } else {
            j11 = j10;
        }
        if ((i10 & 8) != 0) {
            z12 = false;
        } else {
            z12 = z10;
        }
        if ((i10 & 16) != 0) {
            z13 = false;
        } else {
            z13 = z11;
        }
        adManager.t0(activity, str, j11, z12, z13, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(String str) {
        Logger logger = Logger.f41511a;
        logger.e("AdManager", "waitGDPRConsent " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(String str) {
        Logger logger = Logger.f41511a;
        logger.h("AdManager", "waitGDPRConsent " + str);
    }

    private final void x(String str, ca.h hVar, ca.d dVar, BaseEpisode baseEpisode) {
        int i10;
        String valueOf;
        String h10 = DeviceUtil.f48146a.h();
        if (h10 != null && h10.length() != 0 && hVar != null) {
            String c10 = dVar.c();
            String str2 = (baseEpisode == null || (r12 = baseEpisode.getShortPlayCode()) == null) ? "" : "";
            int i11 = 0;
            if (baseEpisode != null) {
                i10 = baseEpisode.getId();
            } else {
                i10 = 0;
            }
            if (baseEpisode != null) {
                i11 = baseEpisode.getEpisodeNum();
            }
            int i12 = i11;
            try {
                valueOf = com.google.android.gms.internal.measurement.a.a(new BigDecimal(hVar.c()).divide(new BigDecimal((int) TTVideoEngineInterface.PLAYER_TIME_BASE), 15, RoundingMode.HALF_UP)).toPlainString();
            } catch (Exception unused) {
                valueOf = String.valueOf((((float) hVar.c()) / 1000.0f) / 1000.0f);
            }
            AdReportRepo.f43128a.c(valueOf, c10, str, str2, i10, i12, hVar.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hi.c x0(boolean z10, Activity activity) {
        if (z10) {
            return new hi.c(activity);
        }
        return null;
    }

    private final void y(ca.d dVar, String str, Bundle bundle, ca.h hVar) {
        bundle.putString("ad_mediation_name", dVar.f().a());
        bundle.putString("type", jk.a.a(dVar.h()));
        bundle.putString("ad_platform", jk.a.b(dVar));
        bundle.putString("style_id", ve.h.f68906a.m());
        if (str != null) {
            bundle.putString("ad_placement", str);
        }
        bundle.putString("ad_unit_name", dVar.j());
        bundle.putString("ad_unit_id", dVar.c());
        if (hVar != null) {
            bundle.putString("precisionType", hVar.b().toString());
            bundle.putString(AppsFlyerProperties.CURRENCY_CODE, hVar.a());
            try {
                if (qe.a.f65321a.value().getNewEcpmFormatEnable()) {
                    bundle.putString("ecpm", com.google.android.gms.internal.measurement.a.a(new BigDecimal(hVar.c()).divide(new BigDecimal((int) TTVideoEngineInterface.PLAYER_TIME_BASE), 15, RoundingMode.HALF_UP)).toPlainString());
                } else {
                    bundle.putDouble("ecpm", (((float) hVar.c()) / 1000.0f) / 1000.0f);
                }
            } catch (Exception e10) {
                bundle.putDouble("ecpm", (((float) hVar.c()) / 1000.0f) / 1000.0f);
                ga.a aVar = ga.a.f52235a;
                aVar.c("AdManager", "addAdExtraInfo exception -> " + e10);
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle2 = new Bundle();
                bundle2.putLong("ad_value_micros", hVar.c());
                bundle2.putString("errorMessage", e10.getMessage());
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "ad_value_micros_to_string_error", bundle2, 0L, 4, null);
            }
        }
        if (dVar.f().b()) {
            bundle.putString("admob_pam_group_key", dVar.f().c());
            bundle.putString("admob_pam_group_value", dVar.f().d());
            bundle.putString("admob_pam_mediation_group_name", dVar.f().f());
        }
    }

    private static final hi.c y0(ms.i<? extends hi.c> iVar) {
        return iVar.getValue();
    }

    static /* synthetic */ void z(AdManager adManager, ca.d dVar, String str, Bundle bundle, ca.h hVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            hVar = null;
        }
        adManager.y(dVar, str, bundle, hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [de.g, T] */
    public static final Unit z0(Ref.ObjectRef objectRef, fk.p pVar, final Function0 function0, final ms.i iVar) {
        objectRef.element = new Function0() { // from class: de.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit A0;
                A0 = AdManager.A0();
                return A0;
            }
        };
        w0("runAfterWaitOnUiThread -> cost=" + pVar.b() + "ms");
        fk.h0.f51735a.e(new Runnable() { // from class: de.h
            @Override // java.lang.Runnable
            public final void run() {
                AdManager.B0(Function0.this, iVar);
            }
        });
        return Unit.f60915a;
    }

    public final boolean A() {
        if (AccountRepo.f43052a.F0()) {
            if (ABTestFactory.f42224a.V0().isEnable().invoke().booleanValue() && com.startshorts.androidplayer.manager.configure.ad.d.f42346a.a()) {
                Logger.f41511a.e("AdManager", "appOpenEnable true -> is iaaUser and open AB and_ad_iaauser_splash_switch_test = true, and isNotPayUser");
                return true;
            }
        } else if (de.r.f50368a.d()) {
            Logger.f41511a.e("AdManager", "appOpenEnable false -> open AB and_ad_load_close = true");
            return false;
        }
        if (!com.startshorts.androidplayer.manager.configure.ad.d.f42346a.a()) {
            Logger.f41511a.e("AdManager", "appOpenEnable false -> AdSceneManager.adEnable = false");
            return false;
        } else if (AdSwitchConfigure.f42267a.value().b(AdScene.APP_OPEN)) {
            return true;
        } else {
            Logger.f41511a.e("AdManager", "appOpenEnable false -> AdSwitchConfigure.value().appOpen = false");
            return false;
        }
    }

    @NotNull
    public final String B() {
        return AdHelper.f41598a.k(f41601b);
    }

    public final boolean C(@NotNull AdFormat... formats) {
        Intrinsics.checkNotNullParameter(formats, "formats");
        return !ca.k.f3414a.d((AdFormat[]) Arrays.copyOf(formats, formats.length)).isEmpty();
    }

    public final int D(@NotNull AdFormat... formats) {
        Intrinsics.checkNotNullParameter(formats, "formats");
        return ca.k.f3414a.d((AdFormat[]) Arrays.copyOf(formats, formats.length)).size();
    }

    @NotNull
    public final da.a E() {
        return f41605f;
    }

    public final boolean F() {
        return f41604e;
    }

    @Nullable
    public final Context G(@NotNull Fragment f10) {
        Intrinsics.checkNotNullParameter(f10, "f");
        if (f10.isDetached()) {
            EventManager.s0(EventManager.f42463a, "ad_big_native_callback_too_later", null, 0L, 6, null);
            return null;
        }
        return f10.getContext();
    }

    public final boolean H() {
        AdConfig adConfig;
        HotSplash hotSplash;
        if (AccountRepo.f43052a.F0()) {
            if (ABTestFactory.f42224a.V0().isEnable().invoke().booleanValue() && com.startshorts.androidplayer.manager.configure.ad.d.f42346a.a()) {
                return true;
            }
        } else {
            AdNewConfig a10 = ud.a.f68411a.a();
            if (a10 != null && (adConfig = a10.getAdConfig()) != null && (hotSplash = adConfig.getHotSplash()) != null && !hotSplash.isEnableShow()) {
                return false;
            }
        }
        fk.s sVar = fk.s.f51749a;
        if (sVar.d()) {
            sVar.i(false);
            return false;
        } else if (!com.startshorts.androidplayer.manager.configure.ad.d.f42346a.a()) {
            Logger.f41511a.e("AdManager", "appOpenEnable false -> AdSceneManager.adEnable = false");
            return false;
        } else if (AdSwitchConfigure.f42267a.value().b(AdScene.APP_OPEN)) {
            return true;
        } else {
            Logger.f41511a.e("AdManager", "appOpenEnable false -> AdSwitchConfigure.value().appOpen = false");
            return false;
        }
    }

    public final void I(@NotNull Context context) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        AdHelper adHelper = AdHelper.f41598a;
        AdAggregatedSdk g10 = adHelper.g();
        AdAggregatedSdk adAggregatedSdk = f41601b;
        if (adAggregatedSdk != null) {
            str = adAggregatedSdk.name();
        } else {
            str = null;
        }
        if (Intrinsics.areEqual(str, g10.name())) {
            return;
        }
        f41601b = g10;
        Logger logger = Logger.f41511a;
        logger.e("AdManager", "loaderType -> " + f41601b);
        ca.a d10 = adHelper.d(context, g10);
        d10.g(new c());
        ca.k.f3414a.g(context, g10, d10);
        ga.a.f52235a.a(new b());
    }

    public final void J(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Logger.f41511a.h("AdManager", "initGDPR start");
        ca.i.w(ca.i.f3408a, activity, null, 2, null);
    }

    public final boolean K(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        if (!com.startshorts.androidplayer.manager.configure.ad.d.f42346a.a()) {
            Logger.f41511a.e("AdManager", "AdSceneManager.interstitialSceneEnable() = false.");
            return false;
        }
        com.startshorts.androidplayer.manager.configure.ad.c cVar = com.startshorts.androidplayer.manager.configure.ad.c.f42340a;
        if (cVar.h().b()) {
            Logger.f41511a.e("AdManager", "interstitialEnable=false. interstitial is on waiting currentGap=" + cVar.h().a() + "ms,targetGap=" + cVar.h().d() + "ms.");
            return false;
        } else if (!Intrinsics.areEqual(scene, "home_reward") && com.startshorts.androidplayer.manager.configure.ad.b.f42335d.e() == null) {
            Logger.f41511a.e("AdManager", "interstitialEnable=false. no consumer");
            return false;
        } else if (!AdSwitchConfigure.f42267a.value().b(AdScene.INTERSTITIAL)) {
            Logger.f41511a.e("AdManager", "AdSwitchConfigure.value().interstitial = false");
            return false;
        } else {
            Logger.f41511a.h("AdManager", "interstitialEnable=true. consumer is ready");
            return true;
        }
    }

    public final boolean M() {
        if (f41601b == AdAggregatedSdk.ADMOB) {
            return true;
        }
        return false;
    }

    public final boolean O() {
        return L(CollectionsKt.t(AdFormat.APP_OPEN, AdFormat.INTERSTITIAL, AdFormat.REWARDED_VIDEO, AdFormat.MEDIA_VIDEO));
    }

    public final void Q(@Nullable String str, @NotNull String scene, @NotNull ca.h adValue, boolean z10, @NotNull ca.d adInfo, @Nullable BaseEpisode baseEpisode, @NotNull a calculateDisplayTime) {
        String str2;
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(adValue, "adValue");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(calculateDisplayTime, "calculateDisplayTime");
        float c10 = (((float) adValue.c()) / 1000.0f) / 1000.0f;
        if (c10 < 0.02f) {
            str2 = "ecpm_below_20";
        } else if (0.02f <= c10 && c10 <= 0.04f) {
            str2 = "ecpm_above_20";
        } else if (c10 > 0.04f) {
            str2 = "ecpm_above_40";
        } else {
            str2 = null;
        }
        String str3 = str2;
        if (str3 != null) {
            EventManager.s0(EventManager.f42463a, str3, null, 0L, 6, null);
        }
        Logger logger = Logger.f41511a;
        logger.h("AdManager", "logAdImpression -> scene(" + scene + ") currencyCode(" + adValue.a() + ") precisionType(" + adValue.b() + ") ecpm(" + c10 + ") reward(" + z10 + ')');
        calculateDisplayTime.b();
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("impressions_duration", calculateDisplayTime.a());
        if (!TextUtils.isEmpty(str)) {
            C.putString("from", str);
        }
        f41600a.y(adInfo, scene, C, adValue);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_impressions", C, 0L, 4, null);
    }

    public final void S(@NotNull String scene, boolean z10, @NotNull ca.d adInfo, @Nullable BaseEpisode baseEpisode, @NotNull a calculateDisplayTime) {
        String str;
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(calculateDisplayTime, "calculateDisplayTime");
        Logger logger = Logger.f41511a;
        logger.h("AdManager", "logAdImpressionDuration -> scene(" + scene + ") reward(" + z10 + ')');
        calculateDisplayTime.b();
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(baseEpisode);
        C.putString("impressions_duration", calculateDisplayTime.a());
        if (z10) {
            str = "impressions_success";
        } else {
            str = "impressions_close_midway";
        }
        C.putString(TextureRenderKeys.KEY_IS_ACTION, str);
        z(f41600a, adInfo, scene, C, null, 8, null);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_impressions_duration", C, 0L, 4, null);
    }

    @NotNull
    public final kotlinx.coroutines.r a0(@NotNull AdScene adScene) {
        Intrinsics.checkNotNullParameter(adScene, "adScene");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "preloadAd", false, new AdManager$preloadAd$1(adScene, null), 2, null);
    }

    public final void c0() {
        long K = DeviceUtil.f48146a.K();
        ud.b bVar = ud.b.f68412a;
        long O0 = K - bVar.O0();
        int n10 = com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().n();
        if (O0 > n10) {
            bVar.a4(K);
            a0(AdScene.APP_OPEN);
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "preloadAppOpenInGap -> start,currentGap=" + O0 + ",appOpenGap=" + n10);
            return;
        }
        Logger logger2 = Logger.f41511a;
        logger2.e("AdManager", "preloadAppOpenInGap -> ignore,currentGap=" + O0 + ",appOpenGap=" + n10);
    }

    public final void d0(boolean z10) {
        f41604e = z10;
    }

    @NotNull
    public final gt.g0 e0(@NotNull Activity activity, @NotNull ViewGroup adContainer, long j10, long j11, @NotNull String scene, @NotNull Function1<? super ca.d, Boolean> onPrepareShow, @NotNull Function0<Unit> onShowSuccess, @NotNull Function1<? super String, Unit> onShowFailed, @NotNull Function0<Unit> onDismiss, @Nullable Function0<Unit> function0, @NotNull Function0<Unit> onLoadFailed) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(onPrepareShow, "onPrepareShow");
        Intrinsics.checkNotNullParameter(onShowSuccess, "onShowSuccess");
        Intrinsics.checkNotNullParameter(onShowFailed, "onShowFailed");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Intrinsics.checkNotNullParameter(onLoadFailed, "onLoadFailed");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("ad_placement", scene);
        bundle.putString("type", "2");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        a aVar = new a();
        ca.k kVar = ca.k.f3414a;
        ca.f fVar = new ca.f();
        fVar.C(scene);
        fVar.q(new WeakReference<>(activity));
        fVar.s(new WeakReference<>(adContainer));
        fVar.A(j10);
        fVar.z(j11);
        fVar.v(AdUnitIdConfigureChooser.f42279a.f(AdScene.APP_OPEN));
        fVar.w(new f(function0, scene));
        fVar.D(new g(aVar, onShowSuccess, objectRef2, scene, onShowFailed, onPrepareShow));
        fVar.x(new h(scene, booleanRef, aVar, objectRef, onDismiss));
        fVar.B(new i(objectRef, objectRef2, booleanRef, scene, aVar));
        fVar.t(new j(onLoadFailed));
        return kVar.u(fVar);
    }

    public final void i0(@NotNull WeakReference<Activity> actRef, @NotNull ViewGroup adContainer, long j10, @NotNull String scene, @NotNull AdSize adSize, @Nullable Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        String str = f41602c;
        if (str == null || str.length() == 0) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_placement", scene);
            bundle.putString("type", "4");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
        }
        f41602c = scene;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ca.k kVar = ca.k.f3414a;
        ca.f fVar = new ca.f();
        fVar.C(scene);
        fVar.q(actRef);
        fVar.s(new WeakReference<>(adContainer));
        fVar.z(j10);
        List<ca.e> f10 = AdUnitIdConfigureChooser.f42279a.f(AdScene.BANNER);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(f10, 10));
        for (ca.e eVar : f10) {
            arrayList.add(ca.e.b(eVar, null, null, null, 0, null, adSize, 0, 0, null, false, 991, null));
            fVar = fVar;
            kVar = kVar;
        }
        ca.f fVar2 = fVar;
        fVar2.v(arrayList);
        fVar2.w(new k(function0, scene));
        fVar2.D(new l(objectRef, scene));
        fVar2.B(new m(objectRef, scene));
        kVar.u(fVar2);
    }

    public final boolean j0(@Nullable String str, @Nullable Activity activity, @NotNull String scene, int i10, int i11, @Nullable BaseEpisode baseEpisode, boolean z10, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, long j10, long j11, @Nullable Function1<? super Boolean, Unit> function1) {
        FragmentActivity fragmentActivity;
        Intrinsics.checkNotNullParameter(scene, "scene");
        if (activity == null) {
            Logger.f41511a.e("AdManager", "showFullScreenNativeAd failed -> activity is null");
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            return false;
        } else if (!K(scene)) {
            Logger.f41511a.e("AdManager", "showFullScreenNativeAd failed -> FullScreenNativeAd is disabled");
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            return false;
        } else {
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().e();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_placement", scene);
            bundle.putString("type", "3");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            a aVar = new a();
            ca.k kVar = ca.k.f3414a;
            ca.f fVar = new ca.f();
            fVar.q(new WeakReference<>(activity));
            fVar.r(Integer.valueOf(i10));
            fVar.u(Integer.valueOf(i11));
            if (z10) {
                InterstitialAdLoadingDialog interstitialAdLoadingDialog = new InterstitialAdLoadingDialog();
                FragmentManager fragmentManager = null;
                if (activity instanceof FragmentActivity) {
                    fragmentActivity = (FragmentActivity) activity;
                } else {
                    fragmentActivity = null;
                }
                if (fragmentActivity != null) {
                    fragmentManager = fragmentActivity.getSupportFragmentManager();
                }
                interstitialAdLoadingDialog.F(fragmentManager);
                interstitialAdLoadingDialog.G(new n(function0, function02));
                fVar.y(new WeakReference<>(interstitialAdLoadingDialog));
                fVar.A(j10);
                fVar.z(j11);
            } else {
                fVar.z(-1L);
            }
            fVar.v(AdUnitIdConfigureChooser.f42279a.f(AdScene.NATIVE));
            fVar.w(new o(scene, str));
            fVar.t(new p(scene));
            fVar.D(new q(aVar, objectRef2, scene, baseEpisode, function1));
            fVar.x(new r(function1, booleanRef2, booleanRef, scene, baseEpisode, aVar, objectRef, str));
            fVar.B(new s(objectRef, objectRef2, booleanRef2, str, scene, booleanRef, aVar));
            kVar.u(fVar);
            return true;
        }
    }

    public final boolean l0(@Nullable String str, @Nullable Activity activity, @NotNull String scene, @Nullable BaseEpisode baseEpisode, boolean z10, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, long j10, long j11, boolean z11, @Nullable Function1<? super Boolean, Unit> function1) {
        FragmentActivity fragmentActivity;
        WeakReference<ha.a> weakReference;
        Intrinsics.checkNotNullParameter(scene, "scene");
        if (activity == null) {
            Logger.f41511a.e("AdManager", "showInterstitial failed -> activity is null");
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            return false;
        } else if (!K(scene)) {
            Logger.f41511a.e("AdManager", "showInterstitial failed -> interstitial is disabled");
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            return false;
        } else {
            com.startshorts.androidplayer.manager.configure.ad.c.f42340a.h().e();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("ad_placement", scene);
            bundle.putString("type", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            a aVar = new a();
            ca.k kVar = ca.k.f3414a;
            ca.f fVar = new ca.f();
            fVar.C(scene);
            fVar.q(new WeakReference<>(activity));
            if (z10) {
                if (z11) {
                    weakReference = new WeakReference<>(new hi.c(activity));
                } else {
                    InterstitialAdLoadingDialog interstitialAdLoadingDialog = new InterstitialAdLoadingDialog();
                    FragmentManager fragmentManager = null;
                    if (activity instanceof FragmentActivity) {
                        fragmentActivity = (FragmentActivity) activity;
                    } else {
                        fragmentActivity = null;
                    }
                    if (fragmentActivity != null) {
                        fragmentManager = fragmentActivity.getSupportFragmentManager();
                    }
                    interstitialAdLoadingDialog.F(fragmentManager);
                    interstitialAdLoadingDialog.G(new t(function0, function02));
                    weakReference = new WeakReference<>(interstitialAdLoadingDialog);
                }
                fVar.y(weakReference);
                fVar.A(j10);
                fVar.z(j11);
            } else {
                fVar.z(-1L);
            }
            fVar.v(AdUnitIdConfigureChooser.f42279a.f(AdScene.INTERSTITIAL));
            fVar.w(new u(scene, str));
            fVar.t(new v(scene));
            fVar.D(new w(aVar, objectRef2, scene, baseEpisode, function1));
            fVar.x(new x(function1, booleanRef2, booleanRef, scene, baseEpisode, aVar, objectRef, str));
            fVar.B(new y(objectRef, objectRef2, booleanRef2, str, scene, booleanRef, aVar));
            kVar.u(fVar);
            return true;
        }
    }

    public final void m0(@NotNull WeakReference<Activity> actRef, long j10, @NotNull String scene, @Nullable BaseEpisode baseEpisode, @NotNull Function1<? super Boolean, Unit> onAdEnd) {
        FragmentActivity fragmentActivity;
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(onAdEnd, "onAdEnd");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("ad_placement", scene);
        bundle.putString("type", "5");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "ad_placement_show", bundle, 0L, 4, null);
        a aVar = new a();
        ca.k kVar = ca.k.f3414a;
        ca.f fVar = new ca.f();
        fVar.C(scene);
        fVar.q(actRef);
        InterstitialAdLoadingDialog interstitialAdLoadingDialog = new InterstitialAdLoadingDialog();
        Activity activity = actRef.get();
        FragmentManager fragmentManager = null;
        if (activity instanceof FragmentActivity) {
            fragmentActivity = (FragmentActivity) activity;
        } else {
            fragmentActivity = null;
        }
        if (fragmentActivity != null) {
            fragmentManager = fragmentActivity.getSupportFragmentManager();
        }
        interstitialAdLoadingDialog.F(fragmentManager);
        fVar.y(new WeakReference<>(interstitialAdLoadingDialog));
        fVar.A(0L);
        fVar.z(j10);
        fVar.v(AdUnitIdConfigureChooser.f42279a.f(AdScene.MEDIA_VIDEO));
        fVar.w(new z(scene));
        fVar.x(new a0(booleanRef, booleanRef2, scene, baseEpisode, aVar, objectRef, onAdEnd));
        fVar.D(new b0(aVar, objectRef2, scene, baseEpisode, onAdEnd));
        fVar.B(new c0(objectRef, objectRef2, booleanRef, scene, baseEpisode, booleanRef2, aVar));
        kVar.u(fVar);
    }

    public final void n0(@NotNull WeakReference<Activity> actRef, @NotNull ViewGroup adContainer, int i10, @NotNull String scene, @Nullable Function0<Unit> function0, @Nullable Function0<Unit> function02, @Nullable f.InterfaceC0089f interfaceC0089f) {
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Logger logger = Logger.f41511a;
        logger.h("AdManager", "showNativeAd -> scene(" + scene + ')');
        ca.k kVar = ca.k.f3414a;
        ca.f fVar = new ca.f();
        fVar.C(scene);
        fVar.q(actRef);
        fVar.s(new WeakReference<>(adContainer));
        fVar.v(AdUnitIdConfigureChooser.f42279a.f(AdScene.NATIVE));
        fVar.u(Integer.valueOf(i10));
        fVar.w(new d0(function0, scene));
        fVar.D(new e0(function02, objectRef, scene));
        fVar.B(new f0(objectRef, scene));
        fVar.E(interfaceC0089f);
        kVar.u(fVar);
    }

    public final void p0(@Nullable final String str, @Nullable final Activity activity, @NotNull final String scene, @Nullable final BaseEpisode baseEpisode, @NotNull final Function1<? super Boolean, Unit> onReward) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(onReward, "onReward");
        if (activity == null) {
            Logger.f41511a.e("AdManager", "showRewardVideo failed -> activity is null");
        } else if (P()) {
            Logger logger = Logger.f41511a;
            logger.h("AdManager", "Block Reward Video Ad for " + ae.a.f627a.d() + " Channel");
        } else {
            t0(activity, AdmobPreloadConfig.REWARD, 3000L, true, true, new Function0() { // from class: de.f
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit r02;
                    r02 = AdManager.r0(str, activity, scene, baseEpisode, onReward);
                    return r02;
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, de.d] */
    public final void t0(@NotNull final Activity activity, @NotNull String scene, long j10, final boolean z10, boolean z11, @NotNull final Function0<Unit> afterWait) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(scene, "scene");
        Intrinsics.checkNotNullParameter(afterWait, "afterWait");
        final ms.i b10 = kotlin.c.b(new Function0() { // from class: de.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                hi.c x02;
                x02 = AdManager.x0(z10, activity);
                return x02;
            }
        });
        final fk.p d10 = new fk.p().d();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new Function0() { // from class: de.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit z02;
                z02 = AdManager.z0(Ref.ObjectRef.this, d10, afterWait, b10);
                return z02;
            }
        };
        String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
        if (!D0(activity)) {
            w0("consented -> runAfterWaitOnUiThread");
            ((Function0) objectRef.element).invoke();
            return;
        }
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        CoroutineUtil.k(coroutineUtil, null, "waitGDPRConsent" + j10, false, new AdManager$waitGDPRConsent$2(activity, j10, objectRef, scene, f10, b10, z11, null), new Function1() { // from class: de.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit C0;
                C0 = AdManager.C0(Ref.ObjectRef.this, (String) obj);
                return C0;
            }
        }, 5, null);
    }
}
