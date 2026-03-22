package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.notification.MissCheckInNotification;
import com.startshorts.androidplayer.databinding.ActivityMissCheckInNotificationBinding;
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
/* compiled from: MissCheckInNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MissCheckInNotificationActivity extends BaseNotificationActivity<ActivityMissCheckInNotificationBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45436m = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private MissCheckInNotification f45437l;

    /* compiled from: MissCheckInNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MissCheckInNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            MissCheckInNotificationActivity.this.finish();
        }
    }

    /* compiled from: MissCheckInNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.f(PushType.MISS_CHECK_IN);
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            cVar.x(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            MissCheckInNotificationActivity missCheckInNotificationActivity = MissCheckInNotificationActivity.this;
            bundle.putString("push_name", "miss_check_in");
            MissCheckInNotification missCheckInNotification = missCheckInNotificationActivity.f45437l;
            MissCheckInNotification missCheckInNotification2 = null;
            if (missCheckInNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                missCheckInNotification = null;
            }
            bundle.putString("title", missCheckInNotification.getTitle());
            MissCheckInNotification missCheckInNotification3 = missCheckInNotificationActivity.f45437l;
            if (missCheckInNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                missCheckInNotification2 = missCheckInNotification3;
            }
            bundle.putString("content", missCheckInNotification2.getContent());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            MissCheckInNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityMissCheckInNotificationBinding) E()).f38375c.setOnClickListener(new b());
    }

    private final void L() {
        BaseTextView baseTextView = ((ActivityMissCheckInNotificationBinding) E()).f38377e;
        MissCheckInNotification missCheckInNotification = this.f45437l;
        if (missCheckInNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            missCheckInNotification = null;
        }
        baseTextView.setText(missCheckInNotification.getContent());
    }

    private final void M() {
        ((ActivityMissCheckInNotificationBinding) E()).f38378f.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivityMissCheckInNotificationBinding) E()).f38379g;
        MissCheckInNotification missCheckInNotification = this.f45437l;
        if (missCheckInNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            missCheckInNotification = null;
        }
        baseTextView.setText(missCheckInNotification.getTitle());
    }

    private final boolean O() {
        MissCheckInNotification missCheckInNotification;
        String stringExtra = getIntent().getStringExtra("check_in_notification");
        if (stringExtra != null) {
            missCheckInNotification = (MissCheckInNotification) l.b(stringExtra, MissCheckInNotification.class);
        } else {
            missCheckInNotification = null;
        }
        if (missCheckInNotification == null) {
            finish();
            return false;
        }
        this.f45437l = missCheckInNotification;
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_miss_check_in_notification;
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
        return "MissCheckInNotificationActivity";
    }
}
