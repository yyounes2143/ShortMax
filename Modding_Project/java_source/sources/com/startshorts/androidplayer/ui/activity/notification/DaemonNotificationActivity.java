package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.notification.DaemonNotification;
import com.startshorts.androidplayer.databinding.ActivityDaemonNotificationBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.push.PushManager;
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
/* compiled from: DaemonNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DaemonNotificationActivity extends BaseNotificationActivity<ActivityDaemonNotificationBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45419m = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private DaemonNotification f45420l;

    /* compiled from: DaemonNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DaemonNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DaemonNotificationActivity.this.finish();
        }
    }

    /* compiled from: DaemonNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.d();
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            DaemonNotification daemonNotification = DaemonNotificationActivity.this.f45420l;
            DaemonNotification daemonNotification2 = null;
            if (daemonNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                daemonNotification = null;
            }
            if (daemonNotification.getWakeUp()) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                DaemonNotificationActivity daemonNotificationActivity = DaemonNotificationActivity.this;
                bundle.putString("push_name", "wake_up");
                DaemonNotification daemonNotification3 = daemonNotificationActivity.f45420l;
                if (daemonNotification3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                    daemonNotification3 = null;
                }
                bundle.putString("title", daemonNotification3.getTitle());
                DaemonNotification daemonNotification4 = daemonNotificationActivity.f45420l;
                if (daemonNotification4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                } else {
                    daemonNotification2 = daemonNotification4;
                }
                bundle.putString("content", daemonNotification2.getContent());
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            }
            cVar.y(true);
            DaemonNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityDaemonNotificationBinding) E()).f38172d.setOnClickListener(new b());
    }

    private final void L() {
        BaseTextView baseTextView = ((ActivityDaemonNotificationBinding) E()).f38173e;
        DaemonNotification daemonNotification = this.f45420l;
        if (daemonNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            daemonNotification = null;
        }
        baseTextView.setText(daemonNotification.getContent());
    }

    private final void M() {
        ((ActivityDaemonNotificationBinding) E()).f38175g.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivityDaemonNotificationBinding) E()).f38176h;
        DaemonNotification daemonNotification = this.f45420l;
        if (daemonNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            daemonNotification = null;
        }
        baseTextView.setText(daemonNotification.getTitle());
    }

    private final boolean O() {
        DaemonNotification daemonNotification;
        String stringExtra = getIntent().getStringExtra("daemon_notification");
        if (stringExtra != null) {
            daemonNotification = (DaemonNotification) l.b(stringExtra, DaemonNotification.class);
        } else {
            daemonNotification = null;
        }
        if (daemonNotification == null) {
            finish();
            return false;
        }
        this.f45420l = daemonNotification;
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_daemon_notification;
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
        N();
        L();
        K();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "DaemonNotificationActivity";
    }
}
