package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.dataflow.qual.Pure;
/* renamed from: com.facebook.ads.redexgen.X.3M  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class C3M {
    public static byte[] A00;

    static {
        A06();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 1 out of bounds for length 1
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T A01(T t10) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 1 out of bounds for length 1
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T A02(T t10) {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 2 out of bounds for length 2
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @EnsuresNonNull({"#1"})
    @Pure
    public static <T> T A03(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    public static String A04(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 10);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{54, 17, 27, 26, 7, 69, 95, 90, 27, 81, 95, 44, 11, 30, 13, 11, 69, 95, 90, 27, 81, 95, 51, 22, 18, 22, 11, 69, 95, 90, 27};
    }

    @Pure
    public static int A00(int i10, int i11, int i12) {
        if (i10 < i11 || i10 >= i12) {
            throw new IndexOutOfBoundsException(String.format(A04(0, 31, 117), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        return i10;
    }

    @EnsuresNonNull({"#1"})
    @Pure
    public static String A05(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    @Pure
    public static void A07(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @Pure
    public static void A08(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalStateException();
    }

    @Pure
    public static void A09(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @Pure
    public static void A0A(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
