package com.facebook.ads.redexgen.X;

import java.util.Arrays;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum A05 uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: assets/audience_network.dex */
public final class NC {
    public static byte[] A01;
    public static final /* synthetic */ NC[] A02;
    public static final NC A03;
    public static final NC A04;
    public static final NC A05;
    public final String A00;

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 83);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-91, -88, -85, -92, -66, -81, -79, -92, -94, -96, -94, -89, -92, 5, 7, 4, 13, 14, 20, 5, 7, -6, -8, -10, -8, -3, -6, 15, -3, -6, 14, 1, -3, 15, 23, 8, 10, -3, -5, -7, -5, 0, -3};
    }

    static {
        A02();
        String A012 = A01(27, 16, 101);
        A05 = new NC(A012, 0, A012);
        String A013 = A01(13, 14, 98);
        A04 = new NC(A013, 1, A013);
        String A014 = A01(0, 13, 12);
        A03 = new NC(A014, 2, A014);
        A02 = A03();
    }

    public NC(String str, int i10, String str2) {
        this.A00 = str2;
    }

    public static NC A00(String str) {
        NC[] values;
        for (NC nc2 : values()) {
            if (nc2.A00.equalsIgnoreCase(str)) {
                return nc2;
            }
        }
        return A03;
    }

    public static /* synthetic */ NC[] A03() {
        return new NC[]{A05, A04, A03};
    }

    public static NC valueOf(String str) {
        return (NC) Enum.valueOf(NC.class, str);
    }

    public static NC[] values() {
        return (NC[]) A02.clone();
    }
}
