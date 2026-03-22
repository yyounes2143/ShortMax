package com.startshorts.androidplayer.manager.attribution;

import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.startshorts.androidplayer.bean.eventbus.CampaignRefreshSuccessEvent;
import com.startshorts.androidplayer.bean.shorts.PopularShorts;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignParser;
import com.startshorts.androidplayer.manager.attribution.parser.BaseCampaignParser;
import com.startshorts.androidplayer.manager.attribution.parser.ClipboardParser;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.g;
import he.h;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: CampaignParser.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCampaignParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,489:1\n1010#2,2:490\n1863#2,2:492\n*S KotlinDebug\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser\n*L\n75#1:490,2\n250#1:492,2\n*E\n"})
/* loaded from: classes6.dex */
public final class CampaignParser {

    /* renamed from: c  reason: collision with root package name */
    private static boolean f41838c;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f41842g;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CampaignParser f41836a = new CampaignParser();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f41837b = kotlin.c.b(new Function0() { // from class: ge.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List w10;
            w10 = CampaignParser.w();
            return w10;
        }
    });
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final qt.a f41839d = qt.d.b(false, 1, null);

    /* renamed from: e  reason: collision with root package name */
    private static long f41840e = -1;

    /* renamed from: f  reason: collision with root package name */
    private static long f41841f = -1;

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser\n*L\n1#1,102:1\n76#2:103\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((BaseCampaignParser) t10).priority().getValue()), Integer.valueOf(((BaseCampaignParser) t11).priority().getValue()));
        }
    }

    private CampaignParser() {
    }

    private final synchronized void A() {
        if (!q()) {
            return;
        }
        f41838c = true;
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        CoroutineUtil.k(coroutineUtil, null, "CampaignParser:parse(" + ud.b.f68412a.W() + ')', false, new CampaignParser$preInstallParse$1(null), new Function1() { // from class: ge.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit B;
                B = CampaignParser.B((String) obj);
                return B;
            }
        }, 5, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(String str) {
        f41838c = false;
        Logger logger = Logger.f41511a;
        logger.e("CampaignParser", "parse exception -> " + str);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("errorMessage", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "campaign_parser_error", bundle, 0L, 4, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C() {
        if (ud.b.f68412a.Z()) {
            g.f51731a.d();
            return;
        }
        Logger.f41511a.e("CampaignParser", "queryCampaignPopularShorts");
        if (!f41842g) {
            f41842g = true;
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("status", MBridgeConstans.ENDCARD_URL_TYPE_PL);
            bundle.putLong("duration", f41836a.t());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "start_to_parse", bundle, 0L, 4, null);
        }
        CampaignRepo campaignRepo = CampaignRepo.f43678a;
        campaignRepo.V();
        campaignRepo.C(new Function1() { // from class: ge.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit D;
                D = CampaignParser.D((Result) obj);
                return D;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(Result result) {
        CampaignParser campaignParser = f41836a;
        Object n10 = result.n();
        if (Result.i(n10)) {
            n10 = null;
        }
        campaignParser.z((PopularShorts) n10);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        List<BaseCampaignParser> s10 = s();
        if (s10.size() > 1) {
            CollectionsKt.D(s10, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        if (ud.b.f68412a.Z()) {
            g.f51731a.d();
            return;
        }
        au.c.d().l(new CampaignRefreshSuccessEvent());
        Logger.f41511a.e("CampaignNewTag", "tryShowPopularShorts CampaignRefreshSuccessEvent");
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        for (BaseCampaignParser baseCampaignParser : s()) {
            boolean f10 = baseCampaignParser.f();
            if (!f10) {
                z10 = false;
            }
            sb2.append(baseCampaignParser.name());
            sb2.append(":");
            sb2.append(f10);
            sb2.append(",");
        }
        p();
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "parser handle result -> " + ((Object) StringsKt.A1(sb2, 1)));
        if (z10) {
            String b02 = ud.b.f68412a.b0();
            if (b02 == null || b02.length() == 0) {
                logger.e("CampaignNewTag", "queryCampaignPopularShorts");
                if (!f41842g) {
                    f41842g = true;
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("status", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    bundle.putLong("duration", f41836a.t());
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "start_to_parse", bundle, 0L, 4, null);
                }
                CampaignRepo campaignRepo = CampaignRepo.f43678a;
                campaignRepo.V();
                campaignRepo.C(new Function1() { // from class: ge.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit G;
                        G = CampaignParser.G((Result) obj);
                        return G;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(Result result) {
        CampaignParser campaignParser = f41836a;
        Object n10 = result.n();
        if (Result.i(n10)) {
            n10 = null;
        }
        campaignParser.v((PopularShorts) n10);
        return Unit.f60915a;
    }

    private final void p() {
        if (!ud.b.f68412a.i2() && DeviceUtil.f48146a.L() - ud.a.f68411a.d() > 20000) {
            BaseCampaignProvider.a aVar = BaseCampaignProvider.f42007e;
            CampaignType campaignType = CampaignType.META_INSTALL_REFERRER;
            boolean c10 = aVar.c(campaignType);
            CampaignType campaignType2 = CampaignType.GA_DEEPLINK;
            boolean c11 = aVar.c(campaignType2);
            if (!c10) {
                Logger logger = Logger.f41511a;
                logger.e("CampaignNewTag", campaignType.getValue() + " not queried");
                aVar.f(campaignType);
                aVar.e(campaignType, "");
                CoroutineUtil.l(CoroutineUtil.f48072a, "checkAFReplaceableByMetaIR", false, new CampaignParser$checkNotQueriedCampaignInfo$1(null), 2, null);
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString(MBInterstitialActivity.INTENT_CAMAPIGN, campaignType.getValue());
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "campaign_info_not_queried", bundle, 0L, 4, null);
            }
            if (!c11) {
                Logger logger2 = Logger.f41511a;
                logger2.e("CampaignNewTag", campaignType2.getValue() + " not queried");
                aVar.f(campaignType2);
                aVar.e(campaignType2, "");
                EventManager eventManager2 = EventManager.f42463a;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBInterstitialActivity.INTENT_CAMAPIGN, campaignType2.getValue());
                Unit unit2 = Unit.f60915a;
                EventManager.s0(eventManager2, "campaign_info_not_queried", bundle2, 0L, 4, null);
            }
        }
    }

    private final boolean q() {
        if (f41838c) {
            Logger.f41511a.e("CampaignNewTag", "parse failed -> mProcessing is true");
            return false;
        }
        ud.b bVar = ud.b.f68412a;
        if (bVar.X()) {
            Logger.f41511a.e("CampaignNewTag", "parse failed -> campaignInfoParsed is true");
            g.f51731a.d();
            return false;
        }
        int W = bVar.W();
        qe.a aVar = qe.a.f65321a;
        if (W >= aVar.value().getMaxCampaignInfoParseCount()) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "parse failed -> campaignInfoParseCount" + bVar.W() + " > " + aVar.value().getMaxCampaignInfoParseCount());
            g.f51731a.d();
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long r() {
        long L = ((DeviceUtil.f48146a.L() - f41841f) - 500) / 1000;
        if (L <= 0) {
            return 1L;
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseCampaignParser> s() {
        return (List) f41837b.getValue();
    }

    private final long t() {
        long L = (DeviceUtil.f48146a.L() - f41840e) / 1000;
        if (L <= 0) {
            return 1L;
        }
        return L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object u(com.startshorts.androidplayer.bean.campaign.CampaignInfo r20, rs.c<? super kotlin.Unit> r21) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.CampaignParser.u(com.startshorts.androidplayer.bean.campaign.CampaignInfo, rs.c):java.lang.Object");
    }

    private final r v(PopularShorts popularShorts) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "handlePopularShorts", false, new CampaignParser$handlePopularShorts$1(popularShorts, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List w() {
        return CollectionsKt.t(new he.i(), new ClipboardParser(), new he.c(), new h(), new he.d(), new he.f(), new he.e(), new he.a(), new he.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y(String str) {
        f41838c = false;
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "parse exception -> " + str);
        return Unit.f60915a;
    }

    private final r z(PopularShorts popularShorts) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "handlePopularShorts", false, new CampaignParser$preInstallHandlePopularShorts$1(popularShorts, null), 2, null);
    }

    public final synchronized void x() {
        try {
            Logger.f41511a.e("CampaignNewTag", "CampaignParser parse() start");
            if (fk.h.f51733a.b()) {
                A();
            } else if (!q()) {
            } else {
                f41838c = true;
                CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
                CoroutineUtil.k(coroutineUtil, null, "CampaignParser:parse(" + ud.b.f68412a.W() + ')', false, new CampaignParser$parse$1(null), new Function1() { // from class: ge.b
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit y10;
                        y10 = CampaignParser.y((String) obj);
                        return y10;
                    }
                }, 5, null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
