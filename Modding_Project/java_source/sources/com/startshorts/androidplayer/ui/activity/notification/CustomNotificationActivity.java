package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.CustomNotification;
import com.startshorts.androidplayer.databinding.ActivityCustomNotificationBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import fk.z;
import jk.g;
import jk.l;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: CustomNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CustomNotificationActivity extends BaseNotificationActivity<ActivityCustomNotificationBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45415m = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private CustomNotification f45416l;

    /* compiled from: CustomNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: CustomNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            CustomNotificationActivity.this.finish();
        }
    }

    /* compiled from: CustomNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil pushUtil = PushUtil.f42895a;
            CustomNotification customNotification = CustomNotificationActivity.this.f45416l;
            CustomNotification customNotification2 = null;
            if (customNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                customNotification = null;
            }
            pushUtil.c(customNotification.getNotificationId());
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            CustomNotificationActivity customNotificationActivity = CustomNotificationActivity.this;
            bundle.putString("push_name", "customize");
            CustomNotification customNotification3 = customNotificationActivity.f45416l;
            if (customNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                customNotification3 = null;
            }
            if (customNotification3.getPush().getShortId() > 0) {
                CustomNotification customNotification4 = customNotificationActivity.f45416l;
                if (customNotification4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    customNotification4 = null;
                }
                bundle.putString("reel_id", customNotification4.getPush().getShortPlayCode());
            }
            CustomNotification customNotification5 = customNotificationActivity.f45416l;
            if (customNotification5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                customNotification5 = null;
            }
            bundle.putString("push_id", customNotification5.getPush().getPushId());
            CustomNotification customNotification6 = customNotificationActivity.f45416l;
            if (customNotification6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                customNotification6 = null;
            }
            bundle.putString("title", customNotification6.getPush().getTitle());
            CustomNotification customNotification7 = customNotificationActivity.f45416l;
            if (customNotification7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                customNotification7 = null;
            }
            bundle.putString("content", customNotification7.getPush().getContent());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            CustomNotification customNotification8 = CustomNotificationActivity.this.f45416l;
            if (customNotification8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                customNotification8 = null;
            }
            String pushId = customNotification8.getPush().getPushId();
            if (pushId != null) {
                PushRepo.f44374a.D(1, pushId);
            }
            CustomNotification customNotification9 = CustomNotificationActivity.this.f45416l;
            if (customNotification9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                customNotification9 = null;
            }
            String url = customNotification9.getPush().getUrl();
            if (url != null && url.length() != 0) {
                cVar.s(Constants.PUSH);
                CustomNotification customNotification10 = CustomNotificationActivity.this.f45416l;
                if (customNotification10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                } else {
                    customNotification2 = customNotification10;
                }
                cVar.r(customNotification2.getPush().getUrl());
            } else {
                ImmersionParams immersionParams = new ImmersionParams();
                CustomNotificationActivity customNotificationActivity2 = CustomNotificationActivity.this;
                immersionParams.setFrom("Push");
                immersionParams.setType(3);
                ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
                CustomNotification customNotification11 = customNotificationActivity2.f45416l;
                if (customNotification11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    customNotification11 = null;
                }
                immersionShortsInfo.setShortsId(customNotification11.getPush().getShortId());
                CustomNotification customNotification12 = customNotificationActivity2.f45416l;
                if (customNotification12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    customNotification12 = null;
                }
                immersionShortsInfo.setShortPlayCode(customNotification12.getPush().getShortPlayCode());
                CustomNotification customNotification13 = customNotificationActivity2.f45416l;
                if (customNotification13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    customNotification13 = null;
                }
                immersionShortsInfo.setUpack(customNotification13.getPush().getUpack());
                immersionParams.setShortsInfo(immersionShortsInfo);
                CustomNotification customNotification14 = customNotificationActivity2.f45416l;
                if (customNotification14 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                } else {
                    customNotification2 = customNotification14;
                }
                immersionParams.setPushId(customNotification2.getPush().getPushId());
                cVar.u(immersionParams);
            }
            CustomNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityCustomNotificationBinding) E()).f38160d.setOnClickListener(new b());
    }

    private final void L() {
        BaseTextView baseTextView = ((ActivityCustomNotificationBinding) E()).f38161e;
        CustomNotification customNotification = this.f45416l;
        if (customNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            customNotification = null;
        }
        baseTextView.setText(customNotification.getPush().getContent());
    }

    private final void M() {
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = ((ActivityCustomNotificationBinding) E()).f38162f;
        FrescoConfig frescoConfig = new FrescoConfig();
        CustomNotification customNotification = this.f45416l;
        CustomNotification customNotification2 = null;
        if (customNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            customNotification = null;
        }
        frescoConfig.setUrl(customNotification.getPush().getCoverId());
        frescoConfig.setOssWidth(g.a(56.0f));
        frescoConfig.setOssHeight(g.a(56.0f));
        CustomNotification customNotification3 = this.f45416l;
        if (customNotification3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
        } else {
            customNotification2 = customNotification3;
        }
        if (customNotification2.getPush().getShortId() > 0) {
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(z.f51786a.m());
        }
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    private final void N() {
        ((ActivityCustomNotificationBinding) E()).f38163g.setOnClickListener(new c());
    }

    private final void O() {
        BaseTextView baseTextView = ((ActivityCustomNotificationBinding) E()).f38164h;
        CustomNotification customNotification = this.f45416l;
        if (customNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            customNotification = null;
        }
        baseTextView.setText(customNotification.getPush().getTitle());
    }

    private final void P() {
        BaseTextView baseTextView = ((ActivityCustomNotificationBinding) E()).f38165i;
        CustomNotification customNotification = this.f45416l;
        if (customNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            customNotification = null;
        }
        baseTextView.setText(customNotification.getPush().getIconContent());
    }

    private final boolean Q() {
        CustomNotification customNotification;
        String stringExtra = getIntent().getStringExtra("custom_notification");
        if (stringExtra != null) {
            customNotification = (CustomNotification) l.b(stringExtra, CustomNotification.class);
        } else {
            customNotification = null;
        }
        if (customNotification == null) {
            finish();
            return false;
        }
        this.f45416l = customNotification;
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_custom_notification;
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
        if (!Q()) {
            return;
        }
        ed.a.c(ed.a.f51339a, this, false, 2, null);
        N();
        K();
        M();
        O();
        L();
        P();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "CustomNotificationActivity";
    }
}
