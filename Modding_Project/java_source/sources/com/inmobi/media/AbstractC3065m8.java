package com.inmobi.media;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.m8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3065m8 {
    public static byte a(String referencedCreativeString) {
        int i10;
        boolean z10;
        Intrinsics.checkNotNullParameter(referencedCreativeString, "referencedCreativeString");
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = referencedCreativeString.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        int length = lowerCase.length() - 1;
        int i11 = 0;
        boolean z11 = false;
        while (i11 <= length) {
            if (!z11) {
                i10 = i11;
            } else {
                i10 = length;
            }
            if (Intrinsics.compare((int) lowerCase.charAt(i10), 32) <= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z11) {
                if (!z10) {
                    z11 = true;
                } else {
                    i11++;
                }
            } else if (!z10) {
                break;
            } else {
                length--;
            }
        }
        String a10 = I7.a(length, 1, lowerCase, i11);
        int hashCode = a10.hashCode();
        if (hashCode != -1412832500) {
            if (hashCode != 0) {
                if (hashCode == 112202875 && a10.equals("video")) {
                    return (byte) 1;
                }
            } else if (a10.equals("")) {
                return (byte) 1;
            }
        } else if (a10.equals("companion")) {
            return (byte) 2;
        }
        return (byte) 0;
    }
}
