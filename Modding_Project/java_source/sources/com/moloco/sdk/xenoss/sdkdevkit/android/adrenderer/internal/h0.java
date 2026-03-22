package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class h0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f34064a;

    static {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        f34064a = charArray;
    }

    @NotNull
    public static final String a(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        char[] cArr = new char[bArr.length * 2];
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            byte b10 = bArr[i10];
            int i11 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i12 = i10 * 2;
            char[] cArr2 = f34064a;
            cArr[i12] = cArr2[i11 >>> 4];
            cArr[i12 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }
}
