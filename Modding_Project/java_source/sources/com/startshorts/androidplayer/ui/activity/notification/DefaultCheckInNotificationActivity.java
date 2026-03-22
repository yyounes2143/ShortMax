package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.notification.CheckInNotification;
import com.startshorts.androidplayer.databinding.ActivityDefaultCheckInNotificationBinding;
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
/* compiled from: DefaultCheckInNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DefaultCheckInNotificationActivity extends BaseNotificationActivity<ActivityDefaultCheckInNotificationBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45423m = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private CheckInNotification f45424l;

    /* compiled from: DefaultCheckInNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DefaultCheckInNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DefaultCheckInNotificationActivity.this.finish();
        }
    }

    /* compiled from: DefaultCheckInNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.f(PushType.CHECK_IN);
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            cVar.x(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            DefaultCheckInNotificationActivity defaultCheckInNotificationActivity = DefaultCheckInNotificationActivity.this;
            bundle.putString("push_name", "check_in_alert");
            CheckInNotification checkInNotification = defaultCheckInNotificationActivity.f45424l;
            CheckInNotification checkInNotification2 = null;
            if (checkInNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                checkInNotification = null;
            }
            bundle.putString("title", checkInNotification.getTitle());
            CheckInNotification checkInNotification3 = defaultCheckInNotificationActivity.f45424l;
            if (checkInNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                checkInNotification2 = checkInNotification3;
            }
            bundle.putString("content", checkInNotification2.getContent());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            DefaultCheckInNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivityDefaultCheckInNotificationBinding) E()).f38183c.setOnClickListener(new b());
    }

    private final void L() {
        BaseTextView baseTextView = ((ActivityDefaultCheckInNotificationBinding) E()).f38185e;
        CheckInNotification checkInNotification = this.f45424l;
        if (checkInNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            checkInNotification = null;
        }
        baseTextView.setText(checkInNotification.getContent());
    }

    private final void M() {
        ((ActivityDefaultCheckInNotificationBinding) E()).f38186f.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivityDefaultCheckInNotificationBinding) E()).f38187g;
        CheckInNotification checkInNotification = this.f45424l;
        if (checkInNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            checkInNotification = null;
        }
        baseTextView.setText(checkInNotification.getTitle());
    }

    private final boolean O() {
        CheckInNotification checkInNotification;
        String stringExtra = getIntent().getStringExtra("check_in_notification");
        if (stringExtra != null) {
            checkInNotification = (CheckInNotification) l.b(stringExtra, CheckInNotification.class);
        } else {
            checkInNotification = null;
        }
        if (checkInNotification == null) {
            finish();
            return false;
        }
        this.f45424l = checkInNotification;
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_default_check_in_notification;
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
        return "DefaultCheckInNotificationActivity";
    }
}
