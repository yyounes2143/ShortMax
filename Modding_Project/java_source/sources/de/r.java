package de;

import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OpenAdSwitch.kt */
@Metadata
/* loaded from: classes6.dex */
public final class r {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final r f50368a = new r();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f50369b = kotlin.c.b(new Function0() { // from class: de.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String b10;
            b10 = r.b();
            return b10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static boolean f50370c;

    private r() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String b() {
        return ud.b.f68412a.h1();
    }

    @Nullable
    public final String c() {
        return (String) f50369b.getValue();
    }

    public final boolean d() {
        Logger logger = Logger.f41511a;
        logger.h("OpenAdSwitch", "isOpenAdSwitchValue:" + c());
        return !Intrinsics.areEqual(c(), MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    public final void e(boolean z10) {
        if (z10) {
            f50370c = true;
        }
        if (!RemoteConfigRepo.f43788a.t()) {
            Logger.f41511a.h("OpenAdSwitch", "updateOpenSwitch failed remote map is not attach");
        } else if (!f50370c) {
            Logger.f41511a.h("OpenAdSwitch", "updateOpenSwitch failed main activity is not attach");
        } else {
            ABTestConfig g12 = ABTestFactory.f42224a.g1();
            if (!g12.isActivated()) {
                Logger.f41511a.h("OpenAdSwitch", "updateOpenSwitch failed mOpenClose not active");
                return;
            }
            String abTestValue = g12.abTestValue();
            Logger logger = Logger.f41511a;
            logger.h("OpenAdSwitch", "updateOpenSwitch:" + abTestValue);
            ud.b.f68412a.v4(abTestValue);
        }
    }
}
