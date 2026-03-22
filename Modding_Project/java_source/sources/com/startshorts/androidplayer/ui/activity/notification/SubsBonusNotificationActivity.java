package com.startshorts.androidplayer.ui.activity.notification;

import android.os.Bundle;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.notification.SubsBonusNotification;
import com.startshorts.androidplayer.databinding.ActivitySubsBonusNotificationBinding;
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
/* compiled from: SubsBonusNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SubsBonusNotificationActivity extends BaseNotificationActivity<ActivitySubsBonusNotificationBinding> {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final a f45450m = new a(null);

    /* renamed from: l  reason: collision with root package name */
    private SubsBonusNotification f45451l;

    /* compiled from: SubsBonusNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SubsBonusNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            SubsBonusNotificationActivity.this.finish();
        }
    }

    /* compiled from: SubsBonusNotificationActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            PushUtil.f42895a.f(PushType.SUBS_BONUS);
            PushManager.f42838a.l();
            rf.c cVar = rf.c.f65843a;
            cVar.a();
            cVar.y(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            SubsBonusNotificationActivity subsBonusNotificationActivity = SubsBonusNotificationActivity.this;
            bundle.putString("push_name", "subscribe");
            SubsBonusNotification subsBonusNotification = subsBonusNotificationActivity.f45451l;
            SubsBonusNotification subsBonusNotification2 = null;
            if (subsBonusNotification == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
                subsBonusNotification = null;
            }
            bundle.putString("title", subsBonusNotification.getTitle());
            SubsBonusNotification subsBonusNotification3 = subsBonusNotificationActivity.f45451l;
            if (subsBonusNotification3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            } else {
                subsBonusNotification2 = subsBonusNotification3;
            }
            bundle.putString("content", subsBonusNotification2.getContent());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "push_open", bundle, 0L, 4, null);
            SubsBonusNotificationActivity.this.H();
        }
    }

    private final void K() {
        ((ActivitySubsBonusNotificationBinding) E()).f38479c.setOnClickListener(new b());
    }

    private final void L() {
        BaseTextView baseTextView = ((ActivitySubsBonusNotificationBinding) E()).f38481e;
        SubsBonusNotification subsBonusNotification = this.f45451l;
        if (subsBonusNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            subsBonusNotification = null;
        }
        baseTextView.setText(subsBonusNotification.getContent());
    }

    private final void M() {
        ((ActivitySubsBonusNotificationBinding) E()).f38482f.setOnClickListener(new c());
    }

    private final void N() {
        BaseTextView baseTextView = ((ActivitySubsBonusNotificationBinding) E()).f38483g;
        SubsBonusNotification subsBonusNotification = this.f45451l;
        if (subsBonusNotification == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mNotification");
            subsBonusNotification = null;
        }
        baseTextView.setText(subsBonusNotification.getTitle());
    }

    private final boolean O() {
        SubsBonusNotification subsBonusNotification;
        String stringExtra = getIntent().getStringExtra("subs_bonus_notification");
        if (stringExtra != null) {
            subsBonusNotification = (SubsBonusNotification) l.b(stringExtra, SubsBonusNotification.class);
        } else {
            subsBonusNotification = null;
        }
        if (subsBonusNotification == null) {
            finish();
            return false;
        }
        this.f45451l = subsBonusNotification;
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_subs_bonus_notification;
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
        return "SubsBonusNotificationActivity";
    }
}
