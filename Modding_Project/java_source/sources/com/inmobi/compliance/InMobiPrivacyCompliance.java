package com.inmobi.compliance;

import com.inmobi.media.F2;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes5.dex */
public final class InMobiPrivacyCompliance {
    @NotNull
    public static final InMobiPrivacyCompliance INSTANCE = new InMobiPrivacyCompliance();

    public static final void setDoNotSell(boolean z10) {
        String str;
        HashMap hashMap = F2.f23629a;
        if (z10) {
            str = "1";
        } else {
            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        hashMap.put("do_not_sell", str);
    }

    public static final void setUSPrivacyString(@NotNull String privacyString) {
        Intrinsics.checkNotNullParameter(privacyString, "privacyString");
        HashMap hashMap = F2.f23629a;
        Intrinsics.checkNotNullParameter(privacyString, "privacyString");
        F2.f23629a.put("us_privacy", privacyString);
    }
}
