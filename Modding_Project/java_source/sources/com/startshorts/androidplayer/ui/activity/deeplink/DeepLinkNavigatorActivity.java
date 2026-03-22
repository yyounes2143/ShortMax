package com.startshorts.androidplayer.ui.activity.deeplink;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustDeeplink;
import com.appsflyer.AppsFlyerProperties;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.campaign.CampaignInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshActEvent;
import com.startshorts.androidplayer.bean.eventbus.TTPResultEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignPullUp;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.ui.activity.act.ActActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.campaign.MatchEventUtil;
import fk.g;
import fk.s;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rf.c;
import ud.b;
/* compiled from: DeepLinkNavigatorActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDeepLinkNavigatorActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeepLinkNavigatorActivity.kt\ncom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity\n+ 2 CharSequence.kt\nandroidx/core/text/CharSequenceKt\n*L\n1#1,359:1\n28#2:360\n*S KotlinDebug\n*F\n+ 1 DeepLinkNavigatorActivity.kt\ncom/startshorts/androidplayer/ui/activity/deeplink/DeepLinkNavigatorActivity\n*L\n225#1:360\n*E\n"})
/* loaded from: classes7.dex */
public final class DeepLinkNavigatorActivity extends BaseActivity {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f45031k = new a(null);

    /* compiled from: DeepLinkNavigatorActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void B(boolean z10) {
        m("callAppToFront");
        fk.a aVar = fk.a.f51702a;
        if (aVar.c()) {
            aVar.g(this);
        } else {
            aVar.i(true, z10);
        }
    }

    static /* synthetic */ void C(DeepLinkNavigatorActivity deepLinkNavigatorActivity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        deepLinkNavigatorActivity.B(z10);
    }

    private final void D(String str, String str2, String str3, String str4, String str5) {
        if (str == null && str2 == null && str3 == null && str5 == null && str4 == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        if (str != null) {
            bundle.putString("activity_id", str);
        }
        if (str2 != null) {
            bundle.putString("activity_name", str2);
        }
        if (str5 != null) {
            bundle.putString(AppsFlyerProperties.CHANNEL, str5);
        }
        if (str3 != null) {
            bundle.putString("sku_id", str3);
        }
        if (str4 != null) {
            bundle.putString("reel_id", str4);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "activity_enter_app", bundle, 0L, 4, null);
    }

    private final void E(String str) {
        if (BaseCampaignProvider.f42007e.b().compareAndSet(false, true)) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "onlyActiveReport -> data(" + str + ')');
            PushManager.f42838a.l();
            c cVar = c.f65843a;
            cVar.a();
            cVar.t(null);
            ud.a aVar = ud.a.f68411a;
            aVar.d0(true);
            g.f51731a.a(MBridgeConstans.ENDCARD_URL_TYPE_PL);
            logger.e("CampaignNewTag", "CampaignPullUp.allPullUp(" + str + ") -- isInstallFirstOpen" + aVar.P());
            if (!aVar.P()) {
                CampaignPullUp.b(CampaignPullUp.f41878a, str, null, false, false, 14, null);
            }
        }
    }

    private final void F() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int i10;
        String uri;
        String uri2;
        String uri3;
        String uri4;
        Uri data = getIntent().getData();
        Integer num = null;
        if (data != null) {
            str = data.getPath();
        } else {
            str = null;
        }
        boolean areEqual = Intrinsics.areEqual(str, "/web/appFront");
        m("parseParams -> data(" + data + ") appFront(" + areEqual + ')');
        if (areEqual) {
            C(this, false, 1, null);
            return;
        }
        if (data != null) {
            str2 = data.getQueryParameter("shorttv_type");
        } else {
            str2 = null;
        }
        m("parseParams -> shorttvType(" + str2 + ')');
        if (str2 != null && str2.length() != 0) {
            m("parseParams -> shorttvType(" + str2 + ") ==");
            if (str2 != null) {
                switch (str2.hashCode()) {
                    case 49:
                        if (str2.equals("1")) {
                            C(this, false, 1, null);
                            return;
                        }
                        break;
                    case 50:
                        if (str2.equals("2")) {
                            String queryParameter = data.getQueryParameter(GearStrategyConsts.EV_EXTRA_INFO);
                            m("TYPE_ACT -> cookie(" + queryParameter + ')');
                            if (queryParameter != null && queryParameter.length() != 0 && queryParameter.length() <= 100) {
                                b.f68412a.n2(queryParameter);
                            }
                            PushManager.f42838a.l();
                            C(this, false, 1, null);
                            au.c.d().l(new RefreshActEvent());
                            return;
                        }
                        break;
                    case 51:
                        if (str2.equals("3")) {
                            s.f51749a.i(false);
                            ud.a.f68411a.p0(false);
                            String queryParameter2 = data.getQueryParameter("orderNo");
                            String queryParameter3 = data.getQueryParameter("orderType");
                            if (queryParameter3 != null && TextUtils.isDigitsOnly(queryParameter3)) {
                                num = Integer.valueOf(Integer.parseInt(queryParameter3));
                            }
                            B(true);
                            au.c.d().l(new TTPResultEvent(num, queryParameter2));
                            return;
                        }
                        break;
                }
            }
            C(this, false, 1, null);
            return;
        }
        if (data != null) {
            str3 = data.getQueryParameter(CallAppDataKey.KEY_ACTIVITY_TYPE);
        } else {
            str3 = null;
        }
        if (str3 != null && str3.length() != 0) {
            C(this, false, 1, null);
            m("parseParams -> outsideTheApp(H5) open ShortMax App");
            if (Intrinsics.areEqual(str3, "1") && !b.f68412a.z0()) {
                String queryParameter4 = data.getQueryParameter("activityUrl");
                m("parseParams -> startActivity(ActActivity), h5-url(" + queryParameter4 + ')');
                if (queryParameter4 != null && queryParameter4.length() != 0 && v.g(queryParameter4)) {
                    Uri parse = Uri.parse(queryParameter4);
                    D(parse.getQueryParameter("activityId"), parse.getQueryParameter(CallAppDataKey.KEY_ACTIVITY_NAME), parse.getQueryParameter("activitySkuId"), parse.getQueryParameter("shortid"), parse.getQueryParameter(AppsFlyerProperties.CHANNEL));
                    ActActivity.a.c(ActActivity.B, this, "outsideTheApp", queryParameter4, null, 8, null);
                    return;
                }
                return;
            }
            return;
        }
        if (data != null) {
            str4 = data.getQueryParameter("shortid");
        } else {
            str4 = null;
        }
        if (data != null) {
            str5 = data.getQueryParameter("isCpsLaHuo");
        } else {
            str5 = null;
        }
        boolean areEqual2 = Intrinsics.areEqual(str5, "true");
        if (data != null) {
            str6 = data.getQueryParameter("deep_link_value");
        } else {
            str6 = null;
        }
        m("parseParams -> shortsIdStr(" + str4 + "), isPureActive(" + areEqual2 + "), deepLinkStr(" + str6 + ')');
        try {
            CampaignInfo j10 = MatchEventUtil.f48183a.j(str6);
            if (str4 != null) {
                i10 = Integer.parseInt(str4);
            } else {
                i10 = -1;
            }
            String str7 = "";
            if (i10 > 0) {
                String scheme = getIntent().getScheme();
                if (data != null && (uri4 = data.toString()) != null) {
                    str7 = uri4;
                }
                G(str7, scheme, str, i10);
                C(this, false, 1, null);
            } else if (areEqual2) {
                if (data != null && (uri3 = data.toString()) != null) {
                    str7 = uri3;
                }
                E(str7);
                C(this, false, 1, null);
            } else if (j10 != null) {
                if (j10.getShortPlayId() > 0) {
                    String scheme2 = getIntent().getScheme();
                    if (data != null && (uri2 = data.toString()) != null) {
                        str7 = uri2;
                    }
                    G(str7, scheme2, str, j10.getShortPlayId());
                    C(this, false, 1, null);
                    return;
                }
                if (data != null && (uri = data.toString()) != null) {
                    str7 = uri;
                }
                E(str7);
                C(this, false, 1, null);
            } else {
                C(this, false, 1, null);
                m("invalid shortsId(" + i10 + ')');
            }
        } catch (Exception e10) {
            C(this, false, 1, null);
            m("parse shortsIdStr exception -> shortsIdStr(" + str4 + ") errMsg(" + e10.getMessage() + ')');
        }
    }

    private final void G(String str, String str2, String str3, int i10) {
        if (BaseCampaignProvider.f42007e.b().compareAndSet(false, true)) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "showImmersionActivity -> data(" + str + ") scheme(" + str2 + ") path(" + str3 + ") shortsId(" + i10 + ')');
            PushManager.f42838a.l();
            c cVar = c.f65843a;
            cVar.a();
            cVar.t(null);
            ud.a aVar = ud.a.f68411a;
            aVar.d0(true);
            if (str.length() > 0 && str3 != null && !StringsKt.b0(str3, "web", false, 2, null)) {
                g.f51731a.a(String.valueOf(i10));
                aVar.v0(true);
                logger.e("CampaignNewTag", "isJumpImmersionThisActive = true");
                ImmersionParams immersionParams = new ImmersionParams();
                if (str2 != null && StringsKt.b0(str2, "https", false, 2, null)) {
                    immersionParams.setFrom("deeplink3");
                } else {
                    immersionParams.setFrom("deeplink2");
                }
                immersionParams.setType(3);
                ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
                immersionShortsInfo.setShortsId(i10);
                immersionShortsInfo.setShortPlayCode(String.valueOf(i10));
                immersionParams.setShortsInfo(immersionShortsInfo);
                cVar.t(immersionParams);
            } else {
                ImmersionParams immersionParams2 = new ImmersionParams();
                immersionParams2.setFrom("web");
                immersionParams2.setType(3);
                ImmersionShortsInfo immersionShortsInfo2 = new ImmersionShortsInfo();
                immersionShortsInfo2.setShortsId(i10);
                immersionShortsInfo2.setShortPlayCode(String.valueOf(i10));
                immersionParams2.setShortsInfo(immersionShortsInfo2);
                cVar.u(immersionParams2);
            }
            if (str.length() > 0 && str3 != null && !StringsKt.b0(str3, "web", false, 2, null)) {
                logger.e("CampaignNewTag", "CampaignPullUp.allPullUp(" + str + ") -- isInstallFirstOpen" + aVar.P());
                if (!aVar.P()) {
                    CampaignPullUp.b(CampaignPullUp.f41878a, str, null, false, false, 14, null);
                } else {
                    g.f51731a.b(8, String.valueOf(i10));
                }
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean n() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        m("DeepLinkNavigatorActivity onCreate");
        Intent intent = getIntent();
        if (intent != null) {
            Adjust.processDeeplink(new AdjustDeeplink(intent.getData()), getApplicationContext());
        }
        F();
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(@Nullable Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            Adjust.processDeeplink(new AdjustDeeplink(intent.getData()), getApplicationContext());
        }
        m("DeepLinkNavigatorActivity onNewIntent");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m("DeepLinkNavigatorActivity onResume");
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "DeepLinkNavigatorActivity";
    }
}
