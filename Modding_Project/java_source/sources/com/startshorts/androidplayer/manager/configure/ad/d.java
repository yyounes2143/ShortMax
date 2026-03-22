package com.startshorts.androidplayer.manager.configure.ad;

import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdSceneManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final d f42346a = new d();

    private d() {
    }

    private final boolean c() {
        boolean x02 = AccountRepo.f43052a.x0();
        if (x02 && ud.b.f68412a.l()) {
            b.f42335d.c();
        }
        return x02;
    }

    public final boolean a() {
        if (AccountRepo.f43052a.z0()) {
            Logger.f41511a.e("AdSceneManager", "adEnable=false,hasSubs=true.");
            return false;
        } else if (c()) {
            Logger.f41511a.e("AdSceneManager", "adEnable=false,hasCoins=true.");
            return false;
        } else {
            Logger.f41511a.h("AdSceneManager", "adEnable=true,hasCoins=false.");
            return true;
        }
    }

    public final void b() {
        ud.b bVar = ud.b.f68412a;
        if (bVar.r() && bVar.Z0() && bVar.v()) {
            Boolean q10 = bVar.q();
            Boolean Y0 = bVar.Y0();
            Boolean u10 = bVar.u();
            boolean z10 = false;
            if (q10 != null || Y0 != null || u10 != null) {
                Boolean bool = Boolean.TRUE;
                if (Intrinsics.areEqual(q10, bool) || Intrinsics.areEqual(Y0, bool) || Intrinsics.areEqual(u10, bool)) {
                    z10 = true;
                }
            }
            Logger.f41511a.h("AdSceneManager", "checkCampaignAdConfigure -> afResultAdSwitch(" + q10 + ") ajResultAdSwitch(" + u10 + ") lpResultAdSwitch(" + Y0 + ") adEnable(" + z10 + ')');
            if (z10) {
                bVar.v2(true);
            }
            if ((q10 != null || u10 != null || Y0 != null) && !bVar.g2()) {
                bVar.n3(true);
                AdSwitchConfigure.f42267a.k();
            }
            AdManager.f41600a.a0(AdScene.APP_OPEN);
        }
    }
}
