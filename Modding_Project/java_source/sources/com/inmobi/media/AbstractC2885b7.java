package com.inmobi.media;

import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.b7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC2885b7 {
    public static final EnumC2868a7 a(String logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        if (StringsKt.G(logLevel, "DEBUG", true)) {
            return EnumC2868a7.f24481b;
        }
        if (StringsKt.G(logLevel, "ERROR", true)) {
            return EnumC2868a7.f24482c;
        }
        if (StringsKt.G(logLevel, "INFO", true)) {
            return EnumC2868a7.f24480a;
        }
        if (StringsKt.G(logLevel, InMobiNetworkKeys.STATE, true)) {
            return EnumC2868a7.f24483d;
        }
        return EnumC2868a7.f24482c;
    }
}
