package com.startshorts.androidplayer.manager.attribution;

import android.content.Context;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignProvider;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.AFConversionDataProvider;
import com.startshorts.androidplayer.manager.attribution.provider.AJConversionDataProvider;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.attribution.provider.ClipboardProvider;
import com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider;
import com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fk.g;
import fk.h;
import fk.u;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignProvider.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCampaignProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignProvider.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n1863#2,2:134\n1#3:136\n*S KotlinDebug\n*F\n+ 1 CampaignProvider.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignProvider\n*L\n52#1:134,2\n*E\n"})
/* loaded from: classes6.dex */
public final class CampaignProvider {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CampaignProvider f41870a = new CampaignProvider();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f41871b = kotlin.c.b(new Function0() { // from class: ge.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List i10;
            i10 = CampaignProvider.i();
            return i10;
        }
    });

    private CampaignProvider() {
    }

    private final String e() {
        return "utm_source=google_play&utm_medium=pre_install";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseCampaignProvider> f() {
        return (List) f41871b.getValue();
    }

    private final void h(BaseCampaignProvider baseCampaignProvider, String str) {
        CampaignType a10 = baseCampaignProvider.a();
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "query(" + a10 + ") failed -> " + str);
        baseCampaignProvider.g(str);
        BaseCampaignProvider.a aVar = BaseCampaignProvider.f42007e;
        aVar.f(a10);
        aVar.e(a10, "");
        if (a10 == CampaignType.META_INSTALL_REFERRER) {
            CoroutineUtil.l(CoroutineUtil.f48072a, "checkAFReplaceableByMetaIR", false, new CampaignProvider$handleQueryFailed$1(null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List i() {
        return CollectionsKt.t(new ClipboardProvider(), new com.startshorts.androidplayer.manager.attribution.provider.d(), new MetaInstallReferrerProvider(), new AFConversionDataProvider(), new AJConversionDataProvider(), new com.startshorts.androidplayer.manager.attribution.provider.c(), new GADeeplinkProvider(), new com.startshorts.androidplayer.manager.attribution.provider.e());
    }

    private final void j() {
        if (ud.b.f68412a.X()) {
            Logger.f41511a.e("CampaignNewTag", "query failed -> campaignInfoParsed is true");
            return;
        }
        Logger.f41511a.e("CampaignNewTag", "query reportLPInfo request");
        CampaignReporter.f41888a.M(e(), false);
    }

    private final void k(CampaignType campaignType) {
        if (Intrinsics.areEqual(campaignType.getValue(), CampaignType.PRE_INSTALL.getValue()) && !ud.b.f68412a.X()) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "query reportLPInfo request campaignType:" + campaignType.getValue());
            CampaignReporter.f41888a.M(e(), false);
            return;
        }
        Logger logger2 = Logger.f41511a;
        logger2.e("CampaignNewTag", "queryAsync failed -> campaignInfoParsed is true campaignType:" + campaignType.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(BaseCampaignProvider baseCampaignProvider, String str) {
        f41870a.h(baseCampaignProvider, str);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(CampaignType campaignType, String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "query(" + campaignType + ") failed -> " + str);
        return Unit.f60915a;
    }

    @Nullable
    public final BaseCampaignProvider g(@NotNull CampaignType campaignType) {
        Intrinsics.checkNotNullParameter(campaignType, "campaignType");
        Object obj = null;
        if (h.f51733a.b()) {
            return null;
        }
        Iterator<T> it = f().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((BaseCampaignProvider) next).a() == campaignType) {
                obj = next;
                break;
            }
        }
        return (BaseCampaignProvider) obj;
    }

    @Nullable
    public final Object l(@NotNull CampaignType campaignType, @NotNull rs.c<? super Unit> cVar) {
        Object obj;
        if (!h.f51733a.b()) {
            Iterator<T> it = f().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((BaseCampaignProvider) obj).a().getValue(), campaignType.getValue())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            BaseCampaignProvider baseCampaignProvider = (BaseCampaignProvider) obj;
            if (baseCampaignProvider != null) {
                Object j10 = baseCampaignProvider.j(u.f51776a.b(), cVar);
                if (j10 == kotlin.coroutines.intrinsics.a.f()) {
                    return j10;
                }
                return Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }

    public final void m() {
        if (h.f51733a.b()) {
            j();
        } else if (ud.b.f68412a.X()) {
            Logger.f41511a.e("CampaignNewTag", "query failed -> campaignInfoParsed is true");
            g.f51731a.d();
            o(CampaignType.AF_CONVERSION_DATA);
        } else {
            Context b10 = u.f51776a.b();
            for (final BaseCampaignProvider baseCampaignProvider : f()) {
                CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
                CoroutineUtil.k(coroutineUtil, null, "CampaignProvider:query(" + baseCampaignProvider.a() + ')', false, new CampaignProvider$query$1$1(baseCampaignProvider, b10, null), new Function1() { // from class: ge.h
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit n10;
                        n10 = CampaignProvider.n(BaseCampaignProvider.this, (String) obj);
                        return n10;
                    }
                }, 5, null);
            }
        }
    }

    public final void o(@NotNull final CampaignType campaignType) {
        Intrinsics.checkNotNullParameter(campaignType, "campaignType");
        if (h.f51733a.b()) {
            k(campaignType);
        } else if (Intrinsics.areEqual(campaignType.getValue(), CampaignType.PRE_INSTALL.getValue())) {
        } else {
            CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
            CoroutineUtil.k(coroutineUtil, null, "CampaignProvider:query(" + campaignType + ')', false, new CampaignProvider$queryAsync$1(campaignType, null), new Function1() { // from class: ge.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit p10;
                    p10 = CampaignProvider.p(CampaignType.this, (String) obj);
                    return p10;
                }
            }, 5, null);
        }
    }
}
