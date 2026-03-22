package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification;
import com.startshorts.androidplayer.databinding.ActivityBonusWillExpiredNotificationBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.manager.push.task.PushType;
import com.startshorts.androidplayer.manager.push.util.PushUtil;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: BonusWillExpiredNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BonusWillExpiredNotificationActivity extends BaseNotificationActivity<ActivityBonusWillExpiredNotificationBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45411m = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private BonusWillExpiredNotification f45412l;

    /* compiled from: BonusWillExpiredNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BonusWillExpiredNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            BonusWillExpiredNotificationActivity.this.finish();
        }
    }

    /* compiled from: BonusWillExpiredNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.f(PushType.BONUS_WILL_EXPIRED);
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            cVar.w(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            BonusWillExpiredNotificationActivity bonusWillExpiredNotificationActivity = BonusWillExpiredNotificationActivity.this;
            bundle.putString("push_name", "expiring_soon");
            BonusWillExpiredNotification bonusWillExpiredNotification = bonusWillExpiredNotificationActivity.f45412l;
            BonusWillExpiredNotification bonusWillExpiredNotification2 = null;
            if (bonusWillExpiredNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                bonusWillExpiredNotification = null;
            }
            bundle.putString("title", bonusWillExpiredNotification.getTitle());
            BonusWillExpiredNotification bonusWillExpiredNotification3 = bonusWillExpiredNotificationActivity.f45412l;
            if (bonusWillExpiredNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                bonusWillExpiredNotification2 = bonusWillExpiredNotification3;
            }
            bundle.putString("content", bonusWillExpiredNotification2.getContent());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            BonusWillExpiredNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityBonusWillExpiredNotificationBinding) E()).f38149c.setOnClickListener(new b());
    }

    private final void L() {
        BaseTextView baseTextView = ((ActivityBonusWillExpiredNotificationBinding) E()).f38151e;
        BonusWillExpiredNotification bonusWillExpiredNotification = this.f45412l;
        if (bonusWillExpiredNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            bonusWillExpiredNotification = null;
        }
        baseTextView.setText(bonusWillExpiredNotification.getContent());
    }

    private final void M() {
        ((ActivityBonusWillExpiredNotificationBinding) E()).f38152f.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivityBonusWillExpiredNotificationBinding) E()).f38153g;
        BonusWillExpiredNotification bonusWillExpiredNotification = this.f45412l;
        if (bonusWillExpiredNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            bonusWillExpiredNotification = null;
        }
        baseTextView.setText(bonusWillExpiredNotification.getTitle());
    }

    private final boolean O() {
        BonusWillExpiredNotification bonusWillExpiredNotification;
        String stringExtra = getIntent().getStringExtra("bonus_will_expired_notification");
        if (stringExtra != null) {
            bonusWillExpiredNotification = (BonusWillExpiredNotification) l.b(stringExtra, BonusWillExpiredNotification.class);
        } else {
            bonusWillExpiredNotification = null;
        }
        if (bonusWillExpiredNotification == null) {
            finish();
            return false;
        }
        this.f45412l = bonusWillExpiredNotification;
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_bonus_will_expired_notification;
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
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "BonusWillExpiredNotificationActivity";
    }
}
