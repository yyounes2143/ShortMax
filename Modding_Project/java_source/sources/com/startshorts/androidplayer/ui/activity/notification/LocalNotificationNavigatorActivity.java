package com.startshorts.androidplayer.ui.activity.notification;

import android.content.Intent;
import android.os.Bundle;
import com.adjust.sdk.Constants;
import com.appsflyer.AdRevenueScheme;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.eventbus.HandleNotificationNavigatorCacheEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification;
import com.startshorts.androidplayer.bean.notification.CheckInNotification;
import com.startshorts.androidplayer.bean.notification.CustomNotification;
import com.startshorts.androidplayer.bean.notification.DaemonNotification;
import com.startshorts.androidplayer.bean.notification.MissCheckInNotification;
import com.startshorts.androidplayer.bean.notification.NewShortsNotification;
import com.startshorts.androidplayer.bean.notification.NotificationData;
import com.startshorts.androidplayer.bean.notification.PermanentShortsNotification;
import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.bean.notification.StartRechargingNotification;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rf.c;
/* compiled from: LocalNotificationNavigatorActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public class LocalNotificationNavigatorActivity extends BaseActivity {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f45434l = new a(null);

    /* renamed from: k  reason: collision with root package name */
    private NotificationData f45435k;

    /* compiled from: LocalNotificationNavigatorActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final void B() {
        String str;
        NotificationData notificationData = this.f45435k;
        NotificationData notificationData2 = null;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        boolean z10 = true;
        switch (notificationData.getTargetUI()) {
            case 1:
                G();
                z10 = false;
                break;
            case 2:
                D();
                z10 = false;
                break;
            case 3:
                I();
                z10 = false;
                break;
            case 4:
                K();
                z10 = false;
                break;
            case 5:
                J();
                z10 = false;
                break;
            case 6:
                F();
                z10 = false;
                break;
            case 7:
                N();
                z10 = false;
                break;
            case 8:
                M();
                z10 = false;
                break;
            case 9:
                H();
                z10 = false;
                break;
            case 10:
                C();
                z10 = false;
                break;
            case 11:
                E();
                break;
            case 12:
                L();
                break;
            default:
                z10 = false;
                break;
        }
        NotificationData notificationData3 = this.f45435k;
        if (notificationData3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
        } else {
            notificationData2 = notificationData3;
        }
        if (notificationData2.getTargetUI() == 5) {
            str = "alert";
        } else {
            str = Constants.PUSH;
        }
        O(str, z10);
        if (t()) {
            finish();
        }
    }

    private final void C() {
        PushUtil.f42895a.f(PushType.BONUS_WILL_EXPIRED);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        BonusWillExpiredNotification bonusWillExpiredNotification = (BonusWillExpiredNotification) l.b(notificationData.getExtras(), BonusWillExpiredNotification.class);
        if (bonusWillExpiredNotification == null) {
            m("executeBonusWillExpiredAction failed -> notification is null");
            return;
        }
        cVar.w(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", "expiring_soon");
        bundle.putString("title", bonusWillExpiredNotification.getTitle());
        bundle.putString("content", bonusWillExpiredNotification.getContent());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void D() {
        PushUtil.f42895a.f(PushType.CHECK_IN);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        CheckInNotification checkInNotification = (CheckInNotification) l.b(notificationData.getExtras(), CheckInNotification.class);
        if (checkInNotification == null) {
            m("executeNewShortsAction failed -> notification is null");
            return;
        }
        cVar.x(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", "check_in_alert");
        bundle.putString("title", checkInNotification.getTitle());
        bundle.putString("content", checkInNotification.getContent());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void E() {
        int i10;
        int i11;
        int i12;
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        ShortPlayNotification shortPlayNotification = (ShortPlayNotification) l.b(notificationData.getExtras(), ShortPlayNotification.class);
        if (shortPlayNotification == null) {
            m("executeCurPlayAction failed -> notification is null");
            return;
        }
        c cVar = c.f65843a;
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("Push");
        Integer videoType = shortPlayNotification.getVideoType();
        if (videoType != null && videoType.intValue() == 4) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        immersionParams.setType(i10);
        Integer videoType2 = shortPlayNotification.getVideoType();
        int i13 = 0;
        if (videoType2 != null && videoType2.intValue() == 4) {
            Integer episodeId = shortPlayNotification.getEpisodeId();
            if (episodeId != null) {
                i12 = episodeId.intValue();
            } else {
                i12 = 0;
            }
            immersionParams.setEpisodeId(i12);
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        Integer shortId = shortPlayNotification.getShortId();
        if (shortId != null) {
            i13 = shortId.intValue();
        }
        immersionShortsInfo.setShortsId(i13);
        immersionShortsInfo.setCover(shortPlayNotification.getCover());
        Integer videoType3 = shortPlayNotification.getVideoType();
        if (videoType3 != null) {
            i11 = videoType3.intValue();
        } else {
            i11 = 1;
        }
        immersionShortsInfo.setVideoType(i11);
        immersionShortsInfo.setShortPlayCode(shortPlayNotification.getShortPlayCode());
        immersionShortsInfo.setUpack(shortPlayNotification.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        cVar.u(immersionParams);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(AdRevenueScheme.COUNTRY, DeviceUtil.f48146a.k());
        bundle.putString(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, "and");
        bundle.putString("type", "Real_time_Watch");
        bundle.putString("reel_id", String.valueOf(shortPlayNotification.getShortPlayCode()));
        bundle.putString("episode", String.valueOf(shortPlayNotification.getDramaNum()));
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "realtimeactivity_click", bundle, 0L, 4, null);
    }

    private final void F() {
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        CustomNotification customNotification = (CustomNotification) l.b(notificationData.getExtras(), CustomNotification.class);
        if (customNotification == null) {
            m("executeCustomAction failed -> notification is null");
            return;
        }
        String url = customNotification.getPush().getUrl();
        if (url != null && url.length() != 0) {
            cVar.s(Constants.PUSH);
            cVar.r(customNotification.getPush().getUrl());
        } else {
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom("Push");
            immersionParams.setType(3);
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(customNotification.getPush().getShortId());
            immersionShortsInfo.setShortPlayCode(customNotification.getPush().getShortPlayCode());
            immersionShortsInfo.setUpack(customNotification.getPush().getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            immersionParams.setPushId(customNotification.getPush().getPushId());
            cVar.u(immersionParams);
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", "customize");
        if (customNotification.getPush().getShortId() > 0) {
            bundle.putString("reel_id", customNotification.getPush().getShortPlayCode());
        }
        bundle.putString("push_id", customNotification.getPush().getPushId());
        bundle.putString("title", customNotification.getPush().getTitle());
        bundle.putString("content", customNotification.getPush().getContent());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
        String pushId = customNotification.getPush().getPushId();
        if (pushId != null) {
            PushRepo.f44374a.D(1, pushId);
        }
    }

    private final void G() {
        PushUtil.f42895a.d();
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        DaemonNotification daemonNotification = (DaemonNotification) l.b(notificationData.getExtras(), DaemonNotification.class);
        if (daemonNotification == null) {
            m("executeDiscoverAction failed -> notification is null");
            return;
        }
        cVar.y(true);
        if (daemonNotification.getWakeUp()) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("push_name", "wake_up");
            bundle.putString("title", daemonNotification.getTitle());
            bundle.putString("content", daemonNotification.getContent());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
        }
    }

    private final void H() {
        PushUtil.f42895a.f(PushType.MISS_CHECK_IN);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        MissCheckInNotification missCheckInNotification = (MissCheckInNotification) l.b(notificationData.getExtras(), MissCheckInNotification.class);
        if (missCheckInNotification == null) {
            m("executeMissCheckInAction failed -> notification is null");
            return;
        }
        cVar.x(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", "miss_check_in");
        bundle.putString("title", missCheckInNotification.getTitle());
        bundle.putString("content", missCheckInNotification.getContent());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void I() {
        int i10;
        String summary;
        PushUtil.f42895a.f(PushType.NEW_SHORTS);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        NewShortsNotification newShortsNotification = (NewShortsNotification) l.b(notificationData.getExtras(), NewShortsNotification.class);
        if (newShortsNotification == null) {
            m("executeNewShortsAction failed -> notification is null");
            return;
        }
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("Push");
        if (newShortsNotification.getDramId() > 0) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        immersionParams.setType(i10);
        if (newShortsNotification.getDramId() > 0) {
            immersionParams.setEpisodeId(newShortsNotification.getDramId());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(newShortsNotification.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(newShortsNotification.getShortPlayCode());
        immersionShortsInfo.setShortsName(newShortsNotification.getShortPlayName());
        immersionShortsInfo.setCover(newShortsNotification.getCoverId());
        immersionShortsInfo.setUpack(newShortsNotification.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        cVar.u(immersionParams);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", "reel_update");
        bundle.putString("reel_id", newShortsNotification.getShortPlayCode());
        bundle.putString("title", newShortsNotification.getTitle());
        String recommendation = newShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = newShortsNotification.getRecommendation();
        } else {
            summary = newShortsNotification.getSummary();
        }
        bundle.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void J() {
        int i10;
        EventManager.s0(EventManager.f42463a, "notificationBar_click", null, 0L, 6, null);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        PermanentShortsNotification permanentShortsNotification = (PermanentShortsNotification) l.b(notificationData.getExtras(), PermanentShortsNotification.class);
        if (permanentShortsNotification == null) {
            m("executePermanentShortsAction failed -> notification is null");
            return;
        }
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("alert");
        if (permanentShortsNotification.getDramId() > 0) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        immersionParams.setType(i10);
        if (permanentShortsNotification.getDramId() > 0) {
            immersionParams.setEpisodeId(permanentShortsNotification.getDramId());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(permanentShortsNotification.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(permanentShortsNotification.getShortPlayCode());
        immersionShortsInfo.setShortsName(permanentShortsNotification.getShortPlayName());
        immersionShortsInfo.setCover(permanentShortsNotification.getCoverId());
        immersionShortsInfo.setUpack(permanentShortsNotification.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        cVar.u(immersionParams);
    }

    private final void K() {
        String summary;
        PushUtil.f42895a.f(PushType.RECOMMEND_SHORTS);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        RecommendShortsNotification recommendShortsNotification = (RecommendShortsNotification) l.b(notificationData.getExtras(), RecommendShortsNotification.class);
        if (recommendShortsNotification == null) {
            m("executeRecommendShortsAction failed -> notification is null");
            return;
        }
        recommendShortsNotification.setRecommendPool(2);
        recommendShortsNotification.setCover(null);
        cVar.v(recommendShortsNotification);
        EventManager eventManager = EventManager.f42463a;
        Bundle C = eventManager.C(recommendShortsNotification);
        C.putString("push_name", "active_push");
        C.putString("title", recommendShortsNotification.getTitle());
        String recommendation = recommendShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            summary = recommendShortsNotification.getRecommendation();
        } else {
            summary = recommendShortsNotification.getSummary();
        }
        C.putString("content", summary);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", C, 0L, 4, null);
    }

    private final void L() {
        PushManager pushManager = PushManager.f42838a;
        pushManager.b();
        pushManager.l();
        c.f65843a.D(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString(AdRevenueScheme.COUNTRY, DeviceUtil.f48146a.k());
        bundle.putString(TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, "and");
        bundle.putString("type", "Real_time_Rewards");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "realtimeactivity_click", bundle, 0L, 4, null);
    }

    private final void M() {
        int i10;
        PushUtil.f42895a.f(PushType.START_RECHARGING);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        StartRechargingNotification startRechargingNotification = (StartRechargingNotification) l.b(notificationData.getExtras(), StartRechargingNotification.class);
        if (startRechargingNotification == null) {
            m("executeStartRechargingAction failed -> notification is null");
            return;
        }
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("Push");
        if (startRechargingNotification.getDramId() > 0) {
            i10 = 4;
        } else {
            i10 = 3;
        }
        immersionParams.setType(i10);
        if (startRechargingNotification.getDramId() > 0) {
            immersionParams.setEpisodeId(startRechargingNotification.getDramId());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(startRechargingNotification.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(startRechargingNotification.getShortPlayCode());
        immersionShortsInfo.setShortsName(startRechargingNotification.getShortPlayName());
        immersionShortsInfo.setCover(startRechargingNotification.getCoverId());
        immersionShortsInfo.setUpack(startRechargingNotification.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        cVar.u(immersionParams);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", "start_charging");
        bundle.putString("reel_id", startRechargingNotification.getShortPlayCode());
        bundle.putString("title", startRechargingNotification.getTitle());
        bundle.putString("content", startRechargingNotification.getContent());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void N() {
        PushUtil.f42895a.f(PushType.SUBS_BONUS);
        PushManager.f42838a.l();
        c cVar = c.f65843a;
        cVar.a();
        cVar.y(true);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("push_name", "subscribe");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
    }

    private final void O(String str, boolean z10) {
        fk.a aVar = fk.a.f51702a;
        if (!aVar.a()) {
            ud.a.f68411a.Z(str);
        }
        if (aVar.c()) {
            aVar.g(this);
        } else if (AdManager.f41600a.A()) {
            aVar.i(true, z10);
        } else if (aVar.a()) {
            au.c.d().l(new HandleNotificationNavigatorCacheEvent());
            aVar.f(this);
        } else {
            Intent intent = new Intent(this, RoutingActivity.class);
            intent.putExtra("quickly_pass", z10);
            startActivity(intent);
        }
    }

    private final boolean P() {
        NotificationData notificationData;
        String stringExtra = getIntent().getStringExtra("data");
        if (stringExtra != null) {
            notificationData = (NotificationData) l.b(stringExtra, NotificationData.class);
        } else {
            notificationData = null;
        }
        if (notificationData == null) {
            m("data is null");
            finish();
            return false;
        }
        this.f45435k = notificationData;
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean n() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (!P()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("data -> ");
        NotificationData notificationData = this.f45435k;
        if (notificationData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mData");
            notificationData = null;
        }
        sb2.append(notificationData);
        s(sb2.toString());
        c.f65843a.a();
        B();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "LocalNotificationNavigatorActivity";
    }
}
