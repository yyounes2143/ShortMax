package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.databinding.ActivityRecommendShortsNotificationBinding;
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
/* compiled from: RecommendShortsNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RecommendShortsNotificationActivity extends BaseNotificationActivity<ActivityRecommendShortsNotificationBinding> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f45440n = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private final float f45441l = z.f51786a.m();

    /* renamed from: m  reason: collision with root package name */
    private RecommendShortsNotification f45442m;

    /* compiled from: RecommendShortsNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RecommendShortsNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            RecommendShortsNotificationActivity.this.finish();
        }
    }

    /* compiled from: RecommendShortsNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            String summary;
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.f(PushType.RECOMMEND_SHORTS);
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            EventManager eventManager = EventManager.f42463a;
            RecommendShortsNotification recommendShortsNotification = RecommendShortsNotificationActivity.this.f45442m;
            if (recommendShortsNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                recommendShortsNotification = null;
            }
            Bundle C = eventManager.C(recommendShortsNotification);
            RecommendShortsNotificationActivity recommendShortsNotificationActivity = RecommendShortsNotificationActivity.this;
            C.putString("push_name", "active_push");
            RecommendShortsNotification recommendShortsNotification2 = recommendShortsNotificationActivity.f45442m;
            if (recommendShortsNotification2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                recommendShortsNotification2 = null;
            }
            C.putString("title", recommendShortsNotification2.getTitle());
            RecommendShortsNotification recommendShortsNotification3 = recommendShortsNotificationActivity.f45442m;
            if (recommendShortsNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                recommendShortsNotification3 = null;
            }
            String recommendation = recommendShortsNotification3.getRecommendation();
            if (recommendation == null || recommendation.length() == 0) {
                RecommendShortsNotification recommendShortsNotification4 = recommendShortsNotificationActivity.f45442m;
                if (recommendShortsNotification4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    recommendShortsNotification4 = null;
                }
                summary = recommendShortsNotification4.getSummary();
            } else {
                RecommendShortsNotification recommendShortsNotification5 = recommendShortsNotificationActivity.f45442m;
                if (recommendShortsNotification5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    recommendShortsNotification5 = null;
                }
                summary = recommendShortsNotification5.getRecommendation();
            }
            C.putString("content", summary);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", C, 0L, 4, null);
            RecommendShortsNotification recommendShortsNotification6 = RecommendShortsNotificationActivity.this.f45442m;
            if (recommendShortsNotification6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                recommendShortsNotification6 = null;
            }
            recommendShortsNotification6.setRecommendPool(2);
            recommendShortsNotification6.setCover(null);
            cVar.v(recommendShortsNotification6);
            RecommendShortsNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityRecommendShortsNotificationBinding) E()).f38401d.setOnClickListener(new b());
    }

    private final void L() {
        String summary;
        BaseTextView baseTextView = ((ActivityRecommendShortsNotificationBinding) E()).f38402e;
        RecommendShortsNotification recommendShortsNotification = this.f45442m;
        RecommendShortsNotification recommendShortsNotification2 = null;
        if (recommendShortsNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            recommendShortsNotification = null;
        }
        String recommendation = recommendShortsNotification.getRecommendation();
        if (recommendation != null && recommendation.length() != 0) {
            RecommendShortsNotification recommendShortsNotification3 = this.f45442m;
            if (recommendShortsNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                recommendShortsNotification2 = recommendShortsNotification3;
            }
            summary = recommendShortsNotification2.getRecommendation();
        } else {
            RecommendShortsNotification recommendShortsNotification4 = this.f45442m;
            if (recommendShortsNotification4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                recommendShortsNotification2 = recommendShortsNotification4;
            }
            summary = recommendShortsNotification2.getSummary();
        }
        baseTextView.setText(summary);
    }

    private final void M() {
        ((ActivityRecommendShortsNotificationBinding) E()).f38404g.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivityRecommendShortsNotificationBinding) E()).f38405h;
        RecommendShortsNotification recommendShortsNotification = this.f45442m;
        if (recommendShortsNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            recommendShortsNotification = null;
        }
        baseTextView.setText(recommendShortsNotification.getTitle());
    }

    private final boolean O() {
        RecommendShortsNotification recommendShortsNotification;
        String stringExtra = getIntent().getStringExtra("recommend_shorts_notification");
        if (stringExtra != null) {
            recommendShortsNotification = (RecommendShortsNotification) l.b(stringExtra, RecommendShortsNotification.class);
        } else {
            recommendShortsNotification = null;
        }
        if (recommendShortsNotification == null) {
            finish();
            return false;
        }
        this.f45442m = recommendShortsNotification;
        return true;
    }

    private final void P() {
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = ((ActivityRecommendShortsNotificationBinding) E()).f38403f;
        FrescoConfig frescoConfig = new FrescoConfig();
        RecommendShortsNotification recommendShortsNotification = this.f45442m;
        if (recommendShortsNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            recommendShortsNotification = null;
        }
        frescoConfig.setUrl(recommendShortsNotification.getCoverId());
        z zVar = z.f51786a;
        frescoConfig.setOssWidth(zVar.p());
        frescoConfig.setOssHeight(zVar.p());
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f45441l);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_recommend_shorts_notification;
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
        return "RecommendShortsNotificationActivity";
    }
}
