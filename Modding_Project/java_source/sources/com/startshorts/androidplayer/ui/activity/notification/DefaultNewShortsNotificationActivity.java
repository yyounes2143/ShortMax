package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.NewShortsNotification;
import com.startshorts.androidplayer.databinding.ActivityDefaultNewShortsNotificationBinding;
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
/* compiled from: DefaultNewShortsNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DefaultNewShortsNotificationActivity extends BaseNotificationActivity<ActivityDefaultNewShortsNotificationBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45427m = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private NewShortsNotification f45428l;

    /* compiled from: DefaultNewShortsNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DefaultNewShortsNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DefaultNewShortsNotificationActivity.this.finish();
        }
    }

    /* compiled from: DefaultNewShortsNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            String summary;
            int i10;
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.f(PushType.NEW_SHORTS);
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            DefaultNewShortsNotificationActivity defaultNewShortsNotificationActivity = DefaultNewShortsNotificationActivity.this;
            bundle.putString("push_name", "reel_update");
            NewShortsNotification newShortsNotification = defaultNewShortsNotificationActivity.f45428l;
            NewShortsNotification newShortsNotification2 = null;
            if (newShortsNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification = null;
            }
            bundle.putString("reel_id", newShortsNotification.getShortPlayCode());
            NewShortsNotification newShortsNotification3 = defaultNewShortsNotificationActivity.f45428l;
            if (newShortsNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification3 = null;
            }
            bundle.putString("title", newShortsNotification3.getTitle());
            NewShortsNotification newShortsNotification4 = defaultNewShortsNotificationActivity.f45428l;
            if (newShortsNotification4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification4 = null;
            }
            String recommendation = newShortsNotification4.getRecommendation();
            if (recommendation == null || recommendation.length() == 0) {
                NewShortsNotification newShortsNotification5 = defaultNewShortsNotificationActivity.f45428l;
                if (newShortsNotification5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    newShortsNotification5 = null;
                }
                summary = newShortsNotification5.getSummary();
            } else {
                NewShortsNotification newShortsNotification6 = defaultNewShortsNotificationActivity.f45428l;
                if (newShortsNotification6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    newShortsNotification6 = null;
                }
                summary = newShortsNotification6.getRecommendation();
            }
            bundle.putString("content", summary);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            ImmersionParams immersionParams = new ImmersionParams();
            DefaultNewShortsNotificationActivity defaultNewShortsNotificationActivity2 = DefaultNewShortsNotificationActivity.this;
            immersionParams.setFrom("Push");
            NewShortsNotification newShortsNotification7 = defaultNewShortsNotificationActivity2.f45428l;
            if (newShortsNotification7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification7 = null;
            }
            if (newShortsNotification7.getDramId() > 0) {
                i10 = 4;
            } else {
                i10 = 3;
            }
            immersionParams.setType(i10);
            NewShortsNotification newShortsNotification8 = defaultNewShortsNotificationActivity2.f45428l;
            if (newShortsNotification8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification8 = null;
            }
            if (newShortsNotification8.getDramId() > 0) {
                NewShortsNotification newShortsNotification9 = defaultNewShortsNotificationActivity2.f45428l;
                if (newShortsNotification9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    newShortsNotification9 = null;
                }
                immersionParams.setEpisodeId(newShortsNotification9.getDramId());
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            NewShortsNotification newShortsNotification10 = defaultNewShortsNotificationActivity2.f45428l;
            if (newShortsNotification10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification10 = null;
            }
            immersionShortsInfo.setShortsId(newShortsNotification10.getShortPlayId());
            NewShortsNotification newShortsNotification11 = defaultNewShortsNotificationActivity2.f45428l;
            if (newShortsNotification11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification11 = null;
            }
            immersionShortsInfo.setShortPlayCode(newShortsNotification11.getShortPlayCode());
            NewShortsNotification newShortsNotification12 = defaultNewShortsNotificationActivity2.f45428l;
            if (newShortsNotification12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification12 = null;
            }
            immersionShortsInfo.setShortsName(newShortsNotification12.getShortPlayName());
            NewShortsNotification newShortsNotification13 = defaultNewShortsNotificationActivity2.f45428l;
            if (newShortsNotification13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                newShortsNotification13 = null;
            }
            immersionShortsInfo.setCover(newShortsNotification13.getCoverId());
            NewShortsNotification newShortsNotification14 = defaultNewShortsNotificationActivity2.f45428l;
            if (newShortsNotification14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                newShortsNotification2 = newShortsNotification14;
            }
            immersionShortsInfo.setUpack(newShortsNotification2.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            cVar.u(immersionParams);
            DefaultNewShortsNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityDefaultNewShortsNotificationBinding) E()).f38194d.setOnClickListener(new b());
    }

    private final void L() {
        String summary;
        BaseTextView baseTextView = ((ActivityDefaultNewShortsNotificationBinding) E()).f38195e;
        NewShortsNotification newShortsNotification = this.f45428l;
        NewShortsNotification newShortsNotification2 = null;
        if (newShortsNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            newShortsNotification = null;
        }
        String recommendation = newShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            NewShortsNotification newShortsNotification3 = this.f45428l;
            if (newShortsNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                newShortsNotification2 = newShortsNotification3;
            }
            summary = newShortsNotification2.getRecommendation();
        } else {
            NewShortsNotification newShortsNotification4 = this.f45428l;
            if (newShortsNotification4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                newShortsNotification2 = newShortsNotification4;
            }
            summary = newShortsNotification2.getSummary();
        }
        baseTextView.setText(summary);
    }

    private final void M() {
        ((ActivityDefaultNewShortsNotificationBinding) E()).f38197g.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivityDefaultNewShortsNotificationBinding) E()).f38198h;
        NewShortsNotification newShortsNotification = this.f45428l;
        if (newShortsNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            newShortsNotification = null;
        }
        baseTextView.setText(newShortsNotification.getTitle());
    }

    private final boolean O() {
        NewShortsNotification newShortsNotification;
        String stringExtra = getIntent().getStringExtra("new_shorts_notification");
        if (stringExtra != null) {
            newShortsNotification = (NewShortsNotification) l.b(stringExtra, NewShortsNotification.class);
        } else {
            newShortsNotification = null;
        }
        if (newShortsNotification == null) {
            finish();
            return false;
        }
        this.f45428l = newShortsNotification;
        return true;
    }

    private final void P() {
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = ((ActivityDefaultNewShortsNotificationBinding) E()).f38196f;
        FrescoConfig frescoConfig = new FrescoConfig();
        NewShortsNotification newShortsNotification = this.f45428l;
        if (newShortsNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            newShortsNotification = null;
        }
        frescoConfig.setUrl(newShortsNotification.getCoverId());
        z zVar = z.f51786a;
        frescoConfig.setOssWidth(zVar.p());
        frescoConfig.setOssHeight(zVar.p());
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(zVar.m());
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_default_new_shorts_notification;
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
        return "DefaultNewShortsNotificationActivity";
    }
}
