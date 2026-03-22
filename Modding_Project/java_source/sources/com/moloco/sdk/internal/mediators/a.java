package com.moloco.sdk.internal.mediators;

import com.google.ads.mediation.moloco.MolocoMediationAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnit;
import kotlin.time.c;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class a {
    public static final long a(@Nullable String str) {
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 76100) {
                if (hashCode != 63085501) {
                    if (hashCode == 347625656 && str.equals("LevelPlay")) {
                        return c.s(8, DurationUnit.SECONDS);
                    }
                } else if (str.equals(MolocoMediationAdapter.MEDIATION_PLATFORM_NAME)) {
                    return c.s(8, DurationUnit.SECONDS);
                }
            } else if (str.equals("MAX")) {
                return c.s(8, DurationUnit.SECONDS);
            }
        }
        return c.s(60, DurationUnit.SECONDS);
    }

    public static final long b(@Nullable String str) {
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 76100) {
                if (hashCode != 63085501) {
                    if (hashCode == 347625656 && str.equals("LevelPlay")) {
                        return c.s(26, DurationUnit.SECONDS);
                    }
                } else if (str.equals(MolocoMediationAdapter.MEDIATION_PLATFORM_NAME)) {
                    return c.s(26, DurationUnit.SECONDS);
                }
            } else if (str.equals("MAX")) {
                return c.s(26, DurationUnit.SECONDS);
            }
        }
        return c.s(60, DurationUnit.SECONDS);
    }

    public static final long c(@Nullable String str) {
        if (Intrinsics.areEqual(str, "MAX")) {
            return c.s(8, DurationUnit.SECONDS);
        }
        if (Intrinsics.areEqual(str, MolocoMediationAdapter.MEDIATION_PLATFORM_NAME)) {
            return c.s(58, DurationUnit.SECONDS);
        }
        return c.s(60, DurationUnit.SECONDS);
    }
}
