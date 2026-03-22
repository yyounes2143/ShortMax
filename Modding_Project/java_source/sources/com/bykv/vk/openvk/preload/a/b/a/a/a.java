package com.bykv.vk.openvk.preload.a.b.a.a;

import java.util.TimeZone;
/* compiled from: ISO8601Utils.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f11037a = TimeZone.getTimeZone("UTC");

    /* JADX WARN: Removed duplicated region for block: B:85:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date a(java.lang.String r19, java.text.ParsePosition r20) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.b.a.a.a.a(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static boolean a(String str, int i10, char c10) {
        return i10 < str.length() && str.charAt(i10) == c10;
    }

    private static int a(String str, int i10, int i11) throws NumberFormatException {
        int i12;
        int i13;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            i13 = i10 + 1;
            int digit = Character.digit(str.charAt(i10), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = -digit;
        } else {
            i12 = 0;
            i13 = i10;
        }
        while (i13 < i11) {
            int i14 = i13 + 1;
            int digit2 = Character.digit(str.charAt(i13), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i12 = (i12 * 10) - digit2;
            i13 = i14;
        }
        return -i12;
    }

    private static int a(String str, int i10) {
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (charAt < '0' || charAt > '9') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }
}
