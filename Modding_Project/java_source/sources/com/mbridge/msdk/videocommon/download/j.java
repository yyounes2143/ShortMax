package com.mbridge.msdk.videocommon.download;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: RewardVideoRefactorManager.java */
/* loaded from: classes6.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private AtomicBoolean f31621a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f31622b;

    /* compiled from: RewardVideoRefactorManager.java */
    /* loaded from: classes6.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final j f31623a = new j();
    }

    public static j a() {
        return b.f31623a;
    }

    public boolean b(int i10) {
        if (MBridgeConstans.DEBUG) {
            p0.c("RewardVideoRefactorManager", "isRewardVideoRefactor adType: " + i10 + ", key: REWARD_VIDEO_REFACTOR_FOR_LOAD");
        }
        if (i10 != 94 && i10 != 287) {
            return false;
        }
        AtomicBoolean atomicBoolean = this.f31621a;
        if (atomicBoolean != null) {
            return atomicBoolean.get();
        }
        try {
            this.f31621a = new AtomicBoolean(r0.a().a("r_v_r_f_l", false));
        } catch (Exception e10) {
            this.f31621a = new AtomicBoolean(false);
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", "isRewardVideoRefactor error: " + e10.getMessage());
            }
        }
        return this.f31621a.get();
    }

    private j() {
    }

    public boolean a(int i10) {
        if (MBridgeConstans.DEBUG) {
            p0.c("RewardVideoRefactorManager", "isRewardVideoRefactor adType: " + i10 + ", key: REWARD_VIDEO_REFACTOR_FOR_CAMPAIGN_REQUEST");
        }
        if (i10 == 94 || i10 == 287) {
            AtomicBoolean atomicBoolean = this.f31622b;
            if (atomicBoolean != null) {
                return atomicBoolean.get();
            }
            try {
                this.f31622b = new AtomicBoolean(r0.a().a("r_v_r_f_c_r", false));
            } catch (Exception e10) {
                this.f31622b = new AtomicBoolean(false);
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoRefactorManager", "isRewardVideoRefactor error: " + e10.getMessage());
                }
            }
            return this.f31622b.get();
        }
        return false;
    }
}
