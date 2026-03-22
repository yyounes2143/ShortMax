package de;

import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdUnitIdSwitch.kt */
@Metadata
/* loaded from: classes6.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n f50362a = new n();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f50363b = kotlin.c.b(new Function0() { // from class: de.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String c10;
            c10 = n.c();
            return c10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static boolean f50364c;

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String c() {
        return ud.b.f68412a.m();
    }

    @NotNull
    public final String b() {
        Logger logger = Logger.f41511a;
        logger.h("AdUnitIdSwitch", "adUnitIdSwitch:" + d());
        if (Intrinsics.areEqual(d(), "1")) {
            return "adUnitId_android_ABtest";
        }
        return "adUnitId_android_v3";
    }

    @Nullable
    public final String d() {
        return (String) f50363b.getValue();
    }

    public final void e(boolean z10) {
        if (z10) {
            f50364c = true;
        }
        if (!RemoteConfigRepo.f43788a.t()) {
            Logger.f41511a.h("AdUnitIdSwitch", "updateSwitch failed remote map is not attach");
        } else if (!f50364c) {
            Logger.f41511a.h("AdUnitIdSwitch", "updateMaxSwitch failed main activity is not attach");
        } else {
            ABTestConfig F0 = ABTestFactory.f42224a.F0();
            if (!F0.isActivated()) {
                Logger.f41511a.h("AdUnitIdSwitch", "updateMaxSwitch failed mMaxPlatform not active");
                return;
            }
            String abTestValue = F0.abTestValue();
            Logger logger = Logger.f41511a;
            logger.h("AdUnitIdSwitch", "updateMaxSwitch:" + abTestValue);
            ud.b.f68412a.w2(abTestValue);
        }
    }
}
