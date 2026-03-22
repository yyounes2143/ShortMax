package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.StartRechargingNotification;
import com.startshorts.androidplayer.databinding.ActivityStartRechargingNotificationBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.z;
import jk.l;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: StartRechargingNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class StartRechargingNotificationActivity extends BaseNotificationActivity<ActivityStartRechargingNotificationBinding> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f45445n = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private final float f45446l = z.f51786a.m();

    /* renamed from: m  reason: collision with root package name */
    private StartRechargingNotification f45447m;

    /* compiled from: StartRechargingNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: StartRechargingNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            StartRechargingNotificationActivity.this.finish();
        }
    }

    /* compiled from: StartRechargingNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            int i10;
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.f(PushType.START_RECHARGING);
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            StartRechargingNotificationActivity startRechargingNotificationActivity = StartRechargingNotificationActivity.this;
            bundle.putString("push_name", "start_charging");
            StartRechargingNotification startRechargingNotification = startRechargingNotificationActivity.f45447m;
            StartRechargingNotification startRechargingNotification2 = null;
            if (startRechargingNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification = null;
            }
            bundle.putString("reel_id", startRechargingNotification.getShortPlayCode());
            StartRechargingNotification startRechargingNotification3 = startRechargingNotificationActivity.f45447m;
            if (startRechargingNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification3 = null;
            }
            bundle.putString("title", startRechargingNotification3.getTitle());
            StartRechargingNotification startRechargingNotification4 = startRechargingNotificationActivity.f45447m;
            if (startRechargingNotification4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification4 = null;
            }
            bundle.putString("content", startRechargingNotification4.getContent());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            ImmersionParams immersionParams = new ImmersionParams();
            StartRechargingNotificationActivity startRechargingNotificationActivity2 = StartRechargingNotificationActivity.this;
            immersionParams.setFrom("Push");
            StartRechargingNotification startRechargingNotification5 = startRechargingNotificationActivity2.f45447m;
            if (startRechargingNotification5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification5 = null;
            }
            if (startRechargingNotification5.getDramId() > 0) {
                i10 = 4;
            } else {
                i10 = 3;
            }
            immersionParams.setType(i10);
            StartRechargingNotification startRechargingNotification6 = startRechargingNotificationActivity2.f45447m;
            if (startRechargingNotification6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification6 = null;
            }
            if (startRechargingNotification6.getDramId() > 0) {
                StartRechargingNotification startRechargingNotification7 = startRechargingNotificationActivity2.f45447m;
                if (startRechargingNotification7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    startRechargingNotification7 = null;
                }
                immersionParams.setEpisodeId(startRechargingNotification7.getDramId());
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            StartRechargingNotification startRechargingNotification8 = startRechargingNotificationActivity2.f45447m;
            if (startRechargingNotification8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification8 = null;
            }
            immersionShortsInfo.setShortsId(startRechargingNotification8.getShortPlayId());
            StartRechargingNotification startRechargingNotification9 = startRechargingNotificationActivity2.f45447m;
            if (startRechargingNotification9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification9 = null;
            }
            immersionShortsInfo.setShortPlayCode(startRechargingNotification9.getShortPlayCode());
            StartRechargingNotification startRechargingNotification10 = startRechargingNotificationActivity2.f45447m;
            if (startRechargingNotification10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification10 = null;
            }
            immersionShortsInfo.setShortsName(startRechargingNotification10.getShortPlayName());
            StartRechargingNotification startRechargingNotification11 = startRechargingNotificationActivity2.f45447m;
            if (startRechargingNotification11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                startRechargingNotification11 = null;
            }
            immersionShortsInfo.setCover(startRechargingNotification11.getCoverId());
            StartRechargingNotification startRechargingNotification12 = startRechargingNotificationActivity2.f45447m;
            if (startRechargingNotification12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                startRechargingNotification2 = startRechargingNotification12;
            }
            immersionShortsInfo.setUpack(startRechargingNotification2.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            cVar.u(immersionParams);
            StartRechargingNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityStartRechargingNotificationBinding) E()).f38468d.setOnClickListener(new b());
    }

    private final void L() {
        BaseTextView baseTextView = ((ActivityStartRechargingNotificationBinding) E()).f38469e;
        StartRechargingNotification startRechargingNotification = this.f45447m;
        if (startRechargingNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            startRechargingNotification = null;
        }
        baseTextView.setText(startRechargingNotification.getContent());
    }

    private final void M() {
        ((ActivityStartRechargingNotificationBinding) E()).f38471g.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivityStartRechargingNotificationBinding) E()).f38472h;
        StartRechargingNotification startRechargingNotification = this.f45447m;
        if (startRechargingNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            startRechargingNotification = null;
        }
        baseTextView.setText(startRechargingNotification.getTitle());
    }

    private final boolean O() {
        StartRechargingNotification startRechargingNotification;
        String stringExtra = getIntent().getStringExtra("start_recharging_notification");
        if (stringExtra != null) {
            startRechargingNotification = (StartRechargingNotification) l.b(stringExtra, StartRechargingNotification.class);
        } else {
            startRechargingNotification = null;
        }
        if (startRechargingNotification == null) {
            finish();
            return false;
        }
        this.f45447m = startRechargingNotification;
        return true;
    }

    private final void P() {
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = ((ActivityStartRechargingNotificationBinding) E()).f38470f;
        FrescoConfig frescoConfig = new FrescoConfig();
        StartRechargingNotification startRechargingNotification = this.f45447m;
        if (startRechargingNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            startRechargingNotification = null;
        }
        frescoConfig.setUrl(startRechargingNotification.getCoverId());
        z zVar = z.f51786a;
        frescoConfig.setOssWidth(zVar.p());
        frescoConfig.setOssHeight(zVar.p());
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f45446l);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_start_recharging_notification;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.notification.BaseNotificationActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String j10;
        boolean b10 = fk.a.f51702a.b();
        super.onCreate(bundle);
        if (b10 && (j10 = j()) != null) {
            au.c.d().l(new DestroyNotificationActivityEvent(j10));
        }
        if (!O()) {
            return;
        }
        ed.a.c(ed.a.f51339a, this, false, 2, null);
        M();
        K();
        N();
        L();
        P();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "StartRechargingNotificationActivity";
    }
}
