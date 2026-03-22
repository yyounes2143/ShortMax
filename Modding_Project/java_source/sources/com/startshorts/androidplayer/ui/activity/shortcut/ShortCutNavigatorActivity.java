package com.startshorts.androidplayer.ui.activity.shortcut;

import af.i;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.startshorts.androidplayer.bean.eventbus.HandleNotificationNavigatorCacheEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.PlayContinue;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.RoutingActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import fk.a;
import fk.c;
import fk.c0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
import ud.b;
/* compiled from: ShortCutNavigatorActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ShortCutNavigatorActivity extends BaseActivity {
    private final void B() {
        c.c(c.f51707a, false, 1, null);
        i.f639a.g();
        a aVar = a.f51702a;
        if (!aVar.a()) {
            ud.a.f68411a.Z("uninstall_click");
        }
        if (aVar.c()) {
            aVar.g(this);
        } else if (AdManager.f41600a.A()) {
            aVar.i(true, true);
        } else if (aVar.a()) {
            au.c.d().l(new HandleNotificationNavigatorCacheEvent());
            aVar.f(this);
        } else {
            startActivity(new Intent(this, RoutingActivity.class));
        }
    }

    private final void C() {
        String str;
        Uri data = getIntent().getData();
        String str2 = null;
        if (data != null) {
            str = data.getPath();
        } else {
            str = null;
        }
        if (data != null) {
            str2 = data.getQueryParameter("actType");
        }
        if (Intrinsics.areEqual(str, "/shortcut")) {
            c0 c0Var = c0.f51709a;
            int i10 = 1;
            if (Intrinsics.areEqual(str2, c0Var.b())) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("click_to", "1");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "uninstall_click", bundle, 0L, 4, null);
                PlayContinue r02 = b.f68412a.r0();
                if (r02 == null) {
                    return;
                }
                rf.c cVar = rf.c.f65843a;
                cVar.a();
                ImmersionParams immersionParams = new ImmersionParams();
                immersionParams.setFrom("uninstall_click");
                if (r02.getEpisodeNum() == 0) {
                    i10 = 3;
                }
                immersionParams.setType(i10);
                if (r02.getEpisodeNum() != 0) {
                    immersionParams.setEpisodeNum(r02.getEpisodeNum());
                }
                ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
                immersionShortsInfo.setShortsId(r02.getShortPlayId());
                immersionShortsInfo.setShortPlayCode(r02.getShortPlayCode());
                immersionShortsInfo.setShortsName(r02.getShortPlayName());
                immersionShortsInfo.setCover(r02.getCoverId());
                immersionShortsInfo.setUpack(r02.getUpack());
                immersionParams.setShortsInfo(immersionShortsInfo);
                cVar.u(immersionParams);
            } else if (Intrinsics.areEqual(str2, c0Var.e())) {
                EventManager eventManager2 = EventManager.f42463a;
                Bundle bundle2 = new Bundle();
                bundle2.putString("click_to", "2");
                Unit unit2 = Unit.f60915a;
                EventManager.s0(eventManager2, "uninstall_click", bundle2, 0L, 4, null);
                rf.c cVar2 = rf.c.f65843a;
                cVar2.a();
                cVar2.z(true);
            } else if (Intrinsics.areEqual(str2, c0Var.f())) {
                EventManager eventManager3 = EventManager.f42463a;
                Bundle bundle3 = new Bundle();
                bundle3.putString("click_to", "3");
                Unit unit3 = Unit.f60915a;
                EventManager.s0(eventManager3, "uninstall_click", bundle3, 0L, 4, null);
                rf.c cVar3 = rf.c.f65843a;
                cVar3.a();
                cVar3.B(true);
            } else if (Intrinsics.areEqual(str2, c0Var.c())) {
                EventManager eventManager4 = EventManager.f42463a;
                Bundle bundle4 = new Bundle();
                bundle4.putString("click_to", "4");
                Unit unit4 = Unit.f60915a;
                EventManager.s0(eventManager4, "uninstall_click", bundle4, 0L, 4, null);
                rf.c cVar4 = rf.c.f65843a;
                cVar4.a();
                cVar4.x(true);
            } else if (Intrinsics.areEqual(str2, c0Var.a())) {
                EventManager eventManager5 = EventManager.f42463a;
                Bundle bundle5 = new Bundle();
                bundle5.putString("click_to", "5");
                Unit unit5 = Unit.f60915a;
                EventManager.s0(eventManager5, "uninstall_click", bundle5, 0L, 4, null);
                rf.c cVar5 = rf.c.f65843a;
                cVar5.a();
                cVar5.G(true);
            } else if (Intrinsics.areEqual(str2, c0Var.d())) {
                EventManager eventManager6 = EventManager.f42463a;
                Bundle bundle6 = new Bundle();
                bundle6.putString("click_to", SubsSku.SCENE_AD_2_PAY);
                Unit unit6 = Unit.f60915a;
                EventManager.s0(eventManager6, "uninstall_click", bundle6, 0L, 4, null);
                rf.c cVar6 = rf.c.f65843a;
                cVar6.a();
                cVar6.E(true);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean n() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        s("shortCutNavigatorActivity onCreate");
        C();
        B();
        if (t()) {
            finish();
        }
    }
}
