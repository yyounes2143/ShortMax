package ng;

import ai.turbolink.sdk.TurboLink;
import ai.turbolink.sdk.campaign.CampaignBuilder;
import ai.turbolink.sdk.campaign.properties.ListenerEventProperties;
import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.request.response.EventResponse;
import ai.turbolink.sdk.utils.TurboLinkLogger;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.bundle.IFragmentBundle;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.eventbus.UpdateMainTabEvent;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo;
import com.startshorts.androidplayer.ui.activity.auth.Login2Activity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.utils.IntentUtil;
import fk.u;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TurboLinkManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTurboLinkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TurboLinkManager.kt\ncom/startshorts/androidplayer/repo/config/appConfig/TurboLinkManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,296:1\n1#2:297\n*E\n"})
/* loaded from: classes7.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f62917a = new g();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static String f62918b;

    /* compiled from: TurboLinkManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a implements TurboLinkEvent.TurboLinkEventCallback {
        a() {
        }

        @Override // ai.turbolink.sdk.events.TurboLinkEvent.TurboLinkEventCallback
        public void onFailure(int i10, String msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
        }

        @Override // ai.turbolink.sdk.events.TurboLinkEvent.TurboLinkEventCallback
        public void onSuccess(EventResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
            TurboLinkLogger.w("withEventCallback_" + response.getCode() + '\n' + response.getMsg() + '\n' + response.getData() + '\n');
        }
    }

    /* compiled from: TurboLinkManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements TurboLinkEvent.TurboLinkEventCallback {
        b() {
        }

        @Override // ai.turbolink.sdk.events.TurboLinkEvent.TurboLinkEventCallback
        public void onFailure(int i10, String msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
        }

        @Override // ai.turbolink.sdk.events.TurboLinkEvent.TurboLinkEventCallback
        public void onSuccess(EventResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
        }
    }

    /* compiled from: TurboLinkManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements TurboLinkEvent.TurboLinkEventCallback {
        c() {
        }

        @Override // ai.turbolink.sdk.events.TurboLinkEvent.TurboLinkEventCallback
        public void onFailure(int i10, String msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
        }

        @Override // ai.turbolink.sdk.events.TurboLinkEvent.TurboLinkEventCallback
        public void onSuccess(EventResponse response) {
            Intrinsics.checkNotNullParameter(response, "response");
        }
    }

    /* compiled from: TurboLinkManager.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements CampaignBuilder.EventListenerCallback {
        d() {
        }

        @Override // ai.turbolink.sdk.campaign.CampaignBuilder.EventListenerCallback
        public void onSuccess(Context campaignActivity, ListenerEventProperties listenerEventProperties) {
            Intrinsics.checkNotNullParameter(campaignActivity, "campaignActivity");
            Intrinsics.checkNotNullParameter(listenerEventProperties, "listenerEventProperties");
            TurboLinkLogger.w("withEventListenerCallback_" + listenerEventProperties.getCampaignId() + '\n' + listenerEventProperties.getCampaignTitle() + '\n' + listenerEventProperties.getCampaignUrl() + '\n' + listenerEventProperties.getArguments() + '\n');
            g.f62917a.g(campaignActivity, listenerEventProperties.getArguments(), listenerEventProperties.getCampaignUrl());
        }
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(Context context, String str, String str2) {
        try {
            String str3 = (String) CollectionsKt.firstOrNull(StringsKt.split$default((CharSequence) StringsKt.split$default(str, new String[]{"//"}, false, 0, 6, null).get(1), new String[]{":"}, false, 0, 6, null));
            if (str3 != null) {
                Activity activity = null;
                switch (str3.hashCode()) {
                    case -1932102384:
                        if (!str3.equals("tbo_subscribe_success")) {
                            break;
                        } else {
                            SubsDetailActivity.a.b(SubsDetailActivity.Q, context, "TurboLink", null, null, false, null, 28, null);
                            return;
                        }
                    case -1774977940:
                        if (!str3.equals("tbo_reel_play_go")) {
                            break;
                        } else {
                            i();
                            au.c.d().l(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, "TurboLink", null, 10, null));
                            if (context instanceof Activity) {
                                activity = (Activity) context;
                            }
                            if (activity != null) {
                                activity.finish();
                                return;
                            }
                            return;
                        }
                    case -1410702246:
                        if (!str3.equals("tbo_favorite")) {
                            break;
                        } else {
                            ud.b.f68412a.h5(true);
                            au.c.d().l(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, "TurboLink", null, 10, null));
                            if (context instanceof Activity) {
                                activity = (Activity) context;
                            }
                            if (activity != null) {
                                activity.finish();
                                return;
                            }
                            return;
                        }
                    case -874373638:
                        if (!str3.equals("tbo_play_time")) {
                            break;
                        } else {
                            i();
                            au.c.d().l(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, "TurboLink", null, 10, null));
                            if (context instanceof Activity) {
                                activity = (Activity) context;
                            }
                            if (activity != null) {
                                activity.finish();
                                return;
                            }
                            return;
                        }
                    case -755329757:
                        if (!str3.equals("tbo_share_task")) {
                            break;
                        } else {
                            IntentUtil.g(IntentUtil.f48164a, context, str2, null, 4, null);
                            TurboLinkRepo turboLinkRepo = TurboLinkRepo.f43851a;
                            HashMap hashMap = new HashMap();
                            hashMap.put("share_result", "1");
                            Unit unit = Unit.f60915a;
                            turboLinkRepo.b(str3, hashMap);
                            return;
                        }
                    case -626333893:
                        if (!str3.equals("tbo_reel_play")) {
                            break;
                        } else {
                            i();
                            au.c.d().l(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, "TurboLink", null, 10, null));
                            if (context instanceof Activity) {
                                activity = (Activity) context;
                            }
                            if (activity != null) {
                                activity.finish();
                                return;
                            }
                            return;
                        }
                    case 1339221525:
                        if (!str3.equals("tbo_watch_ad_success")) {
                            break;
                        } else {
                            if (context instanceof Activity) {
                                activity = (Activity) context;
                            }
                            if (activity != null) {
                                f62917a.m(activity);
                                return;
                            }
                            return;
                        }
                    case 1366710147:
                        if (!str3.equals("tbo_purchase_success")) {
                            break;
                        } else {
                            FragmentContainer.f45006p.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.n(), new StringBundle("from", "TurboLink"));
                            return;
                        }
                    case 1508356708:
                        if (!str3.equals("tbo_play_series")) {
                            break;
                        } else {
                            i();
                            au.c.d().l(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, "TurboLink", null, 10, null));
                            if (context instanceof Activity) {
                                activity = (Activity) context;
                            }
                            if (activity != null) {
                                activity.finish();
                                return;
                            }
                            return;
                        }
                    case 1728142403:
                        if (!str3.equals("tbo_account_login_result")) {
                            break;
                        } else {
                            if (AccountRepo.f43052a.O0()) {
                                Intent intent = new Intent(context, Login2Activity.class);
                                intent.putExtra("from", "TurboLink");
                                intent.putExtra("isFromTurboLink", true);
                                if (!(context instanceof Activity)) {
                                    intent.addFlags(268435456);
                                }
                                context.startActivity(intent);
                            } else {
                                FragmentContainer.f45006p.b(context, com.startshorts.androidplayer.ui.fragment.a.f45609a.b(), new IFragmentBundle[0]);
                            }
                            if (context instanceof Activity) {
                                activity = (Activity) context;
                            }
                            if (activity != null) {
                                activity.finish();
                                return;
                            }
                            return;
                        }
                }
            }
            TurboLinkLogger.w("parseEventProperties_unknown event: " + str3);
        } catch (Exception e10) {
            TurboLinkLogger.e("parseEventProperties error: " + str + " \n_" + e10);
        }
    }

    private final void i() {
        TurboLinkRepo turboLinkRepo = TurboLinkRepo.f43851a;
        HashMap hashMap = new HashMap();
        hashMap.put("go_watch", "1");
        Unit unit = Unit.f60915a;
        turboLinkRepo.b("tbo_reel_play_go", hashMap);
    }

    private final void m(Activity activity) {
        AdManager.q0(AdManager.f41600a, "", activity, "TurboLink", null, new Function1() { // from class: ng.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit n10;
                n10 = g.n(((Boolean) obj).booleanValue());
                return n10;
            }
        }, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(boolean z10) {
        String str;
        TurboLinkRepo turboLinkRepo = TurboLinkRepo.f43851a;
        HashMap hashMap = new HashMap();
        if (z10) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        hashMap.put("ad_watch", str);
        Unit unit = Unit.f60915a;
        turboLinkRepo.b("tbo_watch_ad_success", hashMap);
        TurboLink.Campaign.reLoadUrl(2);
        return Unit.f60915a;
    }

    public final void c(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        f62918b = AccountRepo.f43052a.t0();
        TurboLink.Companion companion = TurboLink.Companion;
        companion.enableLogger();
        companion.withEventCallback(new a());
        u uVar = u.f51776a;
        companion.autoInstance(context, uVar.d(R$string.tblink_project_id), uVar.d(R$string.tblink_app_key), uVar.d(R$string.tblink_app_secret), f62918b, null);
    }

    public final void d(@NotNull Context context, @NotNull String url) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        TurboLink.Campaign.loadUrl(context, url).build();
    }

    public final void e(@NotNull Activity activity, @NotNull String appUserId) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(appUserId, "appUserId");
        if (activity.isFinishing() || activity.isDestroyed() || appUserId.length() == 0) {
            return;
        }
        TurboLink.DefaultEvent.login(activity, appUserId).build(new b());
    }

    public final void f(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (!activity.isFinishing() && !activity.isDestroyed()) {
            TurboLink.DefaultEvent.logout(activity).build();
        }
    }

    public final void h(@NotNull Activity activity, @NotNull String appUserId) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(appUserId, "appUserId");
        if (activity.isFinishing() || activity.isDestroyed() || appUserId.length() == 0) {
            return;
        }
        TurboLink.DefaultEvent.register$default(activity, appUserId, null, null, null, null, 60, null).build(new c());
    }

    public final void j() {
        TurboLink.Companion.withEventListenerCallback(new d());
    }

    public final void k(@NotNull String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        TurboLink.Campaign.setLang(lang);
    }

    public final void l(@NotNull String appUserId) {
        Intrinsics.checkNotNullParameter(appUserId, "appUserId");
        if (appUserId.length() == 0) {
            return;
        }
        f62918b = appUserId;
        TurboLink.Companion.setAppUserInfo(appUserId, "", "", new String[0], "");
    }
}
