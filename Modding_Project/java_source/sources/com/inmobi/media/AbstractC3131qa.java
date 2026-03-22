package com.inmobi.media;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.qa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3131qa {
    public static final EnumC3115pa a(byte b10) {
        if (b10 == 1) {
            return EnumC3115pa.f25154a;
        }
        if (b10 == 2) {
            return EnumC3115pa.f25156c;
        }
        if (b10 == 3) {
            return EnumC3115pa.f25155b;
        }
        if (b10 == 4) {
            return EnumC3115pa.f25157d;
        }
        return EnumC3115pa.f25154a;
    }

    public static final boolean b(EnumC3115pa enumC3115pa) {
        Intrinsics.checkNotNullParameter(enumC3115pa, "<this>");
        if (enumC3115pa != EnumC3115pa.f25155b && enumC3115pa != EnumC3115pa.f25157d) {
            return false;
        }
        return true;
    }

    public static final int a(EnumC3115pa enumC3115pa) {
        Intrinsics.checkNotNullParameter(enumC3115pa, "<this>");
        int ordinal = enumC3115pa.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return 270;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return 180;
            }
            return 90;
        }
        return 0;
    }
}
