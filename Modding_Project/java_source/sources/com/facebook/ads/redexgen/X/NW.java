package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public abstract class NW {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 43);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-121, -122, ByteCompanionObject.MIN_VALUE, -109, 125, -126, -120, 121, 123, -122, 117, -120, 125, -125, -126, -109, 121, -122, -122, -125, -122, -109, -127, -125, 120, 121, -109, ByteCompanionObject.MAX_VALUE, 121, -115};
    }

    public static AdSettings.IntegrationErrorMode A00(C2111dL c2111dL) {
        AdSettings.IntegrationErrorMode integrationErrorMode = (AdSettings.IntegrationErrorMode) AdInternalSettings.sSettingsBundle.getSerializable(A01(0, 30, 9));
        if (integrationErrorMode == null) {
            integrationErrorMode = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
        }
        AdSettings.IntegrationErrorMode integrationErrorMode2 = AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE;
        if (integrationErrorMode == integrationErrorMode2 && !A03(c2111dL)) {
            return AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CALLBACK_MODE;
        }
        return integrationErrorMode;
    }

    public static boolean A03(C2111dL c2111dL) {
        return (c2111dL.getApplicationInfo().flags & 2) != 0;
    }
}
