package com.startshorts.androidplayer.ui.activity.notification;

import af.i;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import androidx.databinding.ViewDataBinding;
import au.l;
import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.eventbus.HandleNotificationNavigatorCacheEvent;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.a;
import fk.c;
import fk.u;
import fk.z;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseNotificationActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public class BaseNotificationActivity<VDB extends ViewDataBinding> extends BaseVDBActivity<VDB> {
    private final void I() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.x = 0;
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        attributes.y = deviceUtil.J() + z.f51786a.d();
        attributes.gravity = 48;
        attributes.width = deviceUtil.G() - (g.a(10.0f) * 2);
        attributes.height = -2;
        window.setAttributes(attributes);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void H() {
        c.c(c.f51707a, false, 1, null);
        i.f639a.g();
        a aVar = a.f51702a;
        if (!aVar.a()) {
            ud.a.f68411a.Z(Constants.PUSH);
        }
        if (aVar.c()) {
            aVar.g(this);
        } else if (AdManager.f41600a.A()) {
            Context b10 = u.f51776a.b();
            Intent intent = new Intent(this, RoutingActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("from_notification", true);
            b10.startActivity(intent);
        } else if (aVar.a()) {
            au.c.d().l(new HandleNotificationNavigatorCacheEvent());
            aVar.f(this);
            if (t()) {
                finish();
            }
        } else {
            Context b11 = u.f51776a.b();
            Intent intent2 = new Intent(this, RoutingActivity.class);
            intent2.setFlags(268435456);
            intent2.putExtra("from_notification", true);
            b11.startActivity(intent2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        I();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        s("onDestroy");
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveDestroyNotificationActivityEvent(@NotNull DestroyNotificationActivityEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive DestroyNotificationActivityEvent -> " + event);
        if (!Intrinsics.areEqual(j(), event.getExceptActivityId()) && !isFinishing()) {
            finish();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onBackPressed() {
    }
}
