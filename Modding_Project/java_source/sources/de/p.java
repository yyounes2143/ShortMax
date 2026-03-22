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
/* compiled from: MaxAdSwitch.kt */
@Metadata
/* loaded from: classes6.dex */
public final class p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p f50365a = new p();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i f50366b = kotlin.c.b(new Function0() { // from class: de.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String b10;
            b10 = p.b();
            return b10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static boolean f50367c;

    private p() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String b() {
        return ud.b.f68412a.a1();
    }

    @Nullable
    public final String c() {
        return (String) f50366b.getValue();
    }

    public final boolean d() {
        Logger logger = Logger.f41511a;
        logger.h("MaxAdSwitch", "isMaxAdSwitchValue:" + c());
        return Intrinsics.areEqual("1", c());
    }

    public final void e(boolean z10) {
        if (z10) {
            f50367c = true;
        }
        if (!RemoteConfigRepo.f43788a.t()) {
            Logger.f41511a.h("MaxAdSwitch", "updateMaxSwitch failed remote map is not attach");
        } else if (!f50367c) {
            Logger.f41511a.h("MaxAdSwitch", "updateMaxSwitch failed main activity is not attach");
        } else {
            ABTestConfig d12 = ABTestFactory.f42224a.d1();
            if (!d12.isActivated()) {
                Logger.f41511a.h("MaxAdSwitch", "updateMaxSwitch failed mMaxPlatform not active");
                return;
            }
            String abTestValue = d12.abTestValue();
            Logger logger = Logger.f41511a;
            logger.h("MaxAdSwitch", "updateMaxSwitch:" + abTestValue);
            ud.b.f68412a.n4(abTestValue);
        }
    }
}
