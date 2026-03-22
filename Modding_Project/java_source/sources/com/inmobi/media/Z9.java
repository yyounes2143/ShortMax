package com.inmobi.media;

import android.content.Context;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import com.inmobi.commons.core.configs.SignalsConfig;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes5.dex */
public final class Z9 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f24449a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f24450b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24451c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f24452d;

    /* renamed from: e  reason: collision with root package name */
    public final SignalsConfig.NovatiqConfig f24453e;

    public Z9(Context context, InterfaceC3269z5 interfaceC3269z5) {
        TelephonyManager telephonyManager;
        Intrinsics.checkNotNullParameter(context, "context");
        this.f24449a = context;
        this.f24450b = interfaceC3269z5;
        this.f24451c = "";
        LinkedHashMap linkedHashMap = O2.f23923a;
        SignalsConfig.NovatiqConfig novatiqConfig = ((SignalsConfig) AbstractC3110p5.a("signals", "null cannot be cast to non-null type com.inmobi.commons.core.configs.SignalsConfig", null)).getNovatiqConfig();
        this.f24453e = novatiqConfig;
        Intrinsics.checkNotNullParameter(context, "context");
        if (novatiqConfig.isNovatiqEnabled()) {
            Object systemService = context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            if (systemService instanceof TelephonyManager) {
                telephonyManager = (TelephonyManager) systemService;
            } else {
                telephonyManager = null;
            }
            String networkOperatorName = telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
            String str = networkOperatorName != null ? networkOperatorName : "";
            List<String> carrierNames = novatiqConfig.getCarrierNames();
            if (!(carrierNames instanceof Collection) || !carrierNames.isEmpty()) {
                for (String str2 : carrierNames) {
                    if (StringsKt.Z(str, str2, true)) {
                        try {
                            Context context2 = this.f24449a;
                            Intrinsics.checkNotNullParameter(context2, "context");
                            String obj = context2.getPackageManager().getApplicationLabel(context2.getApplicationInfo()).toString();
                            String str3 = StringsKt.O(obj, ' ', '_', false, 4, null) + "_app";
                            this.f24452d = true;
                            StringBuilder sb2 = new StringBuilder();
                            Random random = new Random();
                            for (int i10 = 0; i10 < 40; i10++) {
                                char charAt = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxxxxx".charAt(i10);
                                if (charAt == 'x') {
                                    sb2.append(Character.forDigit(random.nextInt(16), 16));
                                } else {
                                    sb2.append(charAt);
                                }
                            }
                            String sb3 = sb2.toString();
                            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
                            this.f24451c = sb3;
                            new C2888ba(new C2871aa(sb3, str3, this.f24453e), this.f24450b).a(new Y9(this));
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    }
                }
            }
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f24450b;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a("NovatiqDataHandler", "Novatiq disabled.. skipping");
        }
    }
}
