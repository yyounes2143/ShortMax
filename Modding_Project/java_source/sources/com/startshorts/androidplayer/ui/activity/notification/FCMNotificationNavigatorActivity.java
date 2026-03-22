package com.startshorts.androidplayer.ui.activity.notification;

import af.i;
import android.content.Intent;
import android.os.Bundle;
import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.bean.eventbus.HandleNotificationNavigatorCacheEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.RevealShortsNotification;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rf.c;
/* compiled from: FCMNotificationNavigatorActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FCMNotificationNavigatorActivity extends BaseActivity {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45431m = new a(null);
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private String f45432k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f45433l;

    /* compiled from: FCMNotificationNavigatorActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void B(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.w(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void C(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.s(Constants.PUSH);
        cVar.r(revealShortsNotification.getActUrl());
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("push_id", revealShortsNotification.getPushId());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void D(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.y(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void E(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.x(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void F(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.A(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void G(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.B(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void H(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.C(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void I(RevealShortsNotification revealShortsNotification) {
        int i10;
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("Push");
        if (revealShortsNotification.getDramId() > 0) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        immersionParams.setType(i10);
        if (revealShortsNotification.getDramId() > 0) {
            immersionParams.setEpisodeId(revealShortsNotification.getDramId());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(revealShortsNotification.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(revealShortsNotification.getShortPlayCode());
        immersionShortsInfo.setShortsName(revealShortsNotification.getShortPlayName());
        immersionShortsInfo.setCover(revealShortsNotification.getCoverId());
        immersionShortsInfo.setUpack(revealShortsNotification.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        cVar.u(immersionParams);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("reel_id", revealShortsNotification.getShortPlayCode());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void J(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.E(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void K(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.F(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void L(RevealShortsNotification revealShortsNotification) {
        String summary;
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.G(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", revealShortsNotification.getPushName());
        bundle.putString("title", revealShortsNotification.getTitle());
        String recommendation = revealShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = revealShortsNotification.getRecommendation();
        } else {
            summary = revealShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void M(String str, String str2) {
        RevealShortsNotification revealShortsNotification;
        RevealShortsNotification revealShortsNotification2;
        RevealShortsNotification revealShortsNotification3;
        RevealShortsNotification revealShortsNotification4;
        RevealShortsNotification revealShortsNotification5;
        RevealShortsNotification revealShortsNotification6;
        RevealShortsNotification revealShortsNotification7;
        RevealShortsNotification revealShortsNotification8;
        RevealShortsNotification revealShortsNotification9;
        RevealShortsNotification revealShortsNotification10;
        switch (str.hashCode()) {
            case -1621277337:
                if (str.equals("show_profile_page") && (revealShortsNotification = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    H(revealShortsNotification);
                    return;
                }
                return;
            case -1271556259:
                if (!str.equals("show_reward_page")) {
                    return;
                }
                break;
            case -1251575454:
                if (str.equals("show_my_recent_page") && (revealShortsNotification2 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    G(revealShortsNotification2);
                    return;
                }
                return;
            case -1235159137:
                if (!str.equals("miss_check_in")) {
                    return;
                }
                break;
            case -1104501440:
                if (str.equals("show_topup_page") && (revealShortsNotification3 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    L(revealShortsNotification3);
                    return;
                }
                return;
            case -353121176:
                if (str.equals("show_subsdetail_page") && (revealShortsNotification4 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    K(revealShortsNotification4);
                    return;
                }
                return;
            case -315865067:
                if (str.equals("show_shorts_page") && (revealShortsNotification5 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    J(revealShortsNotification5);
                    return;
                }
                return;
            case -142058653:
                if (str.equals("show_discover_page") && (revealShortsNotification6 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    D(revealShortsNotification6);
                    return;
                }
                return;
            case 488296830:
                if (str.equals("expiring_soon") && (revealShortsNotification7 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    B(revealShortsNotification7);
                    return;
                }
                return;
            case 1534136511:
                if (str.equals("show_my_list_page") && (revealShortsNotification8 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    F(revealShortsNotification8);
                    return;
                }
                return;
            case 1611566147:
                if (str.equals("customize") && (revealShortsNotification9 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    C(revealShortsNotification9);
                    return;
                }
                return;
            case 1787746706:
                if (str.equals("reel_reveal") && (revealShortsNotification10 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class)) != null) {
                    I(revealShortsNotification10);
                    return;
                }
                return;
            default:
                return;
        }
        RevealShortsNotification revealShortsNotification11 = (RevealShortsNotification) l.b(str2, RevealShortsNotification.class);
        if (revealShortsNotification11 != null) {
            E(revealShortsNotification11);
        }
    }

    private final void N() {
        fk.c.c(fk.c.f51707a, false, 1, null);
        i.f639a.g();
        fk.a aVar = fk.a.f51702a;
        if (!aVar.a()) {
            ud.a.f68411a.Z(Constants.PUSH);
        }
        if (aVar.c()) {
            aVar.g(this);
        } else if (AdManager.f41600a.A()) {
            aVar.i(true, true);
        } else if (aVar.a()) {
            au.c.d().l(new HandleNotificationNavigatorCacheEvent());
            aVar.f(this);
        } else {
            startActivity(new Intent(this, RoutingActivity.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String str;
        super.onCreate(bundle);
        ed.a aVar = ed.a.f51339a;
        aVar.b(this, true);
        aVar.a(this);
        this.f45432k = getIntent().getStringExtra("pushType");
        this.f45433l = getIntent().getStringExtra("pushParam");
        s("mPushType(" + this.f45432k + ") mPushParam(" + this.f45433l + ')');
        String str2 = this.f45432k;
        if (str2 != null && str2.length() != 0 && (str = this.f45433l) != null && str.length() != 0) {
            String str3 = this.f45432k;
            Intrinsics.checkNotNull(str3);
            String str4 = this.f45433l;
            Intrinsics.checkNotNull(str4);
            M(str3, str4);
            N();
        }
        if (t()) {
            finish();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "FCMNotificationNavigatorActivity";
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onBackPressed() {
    }
}
