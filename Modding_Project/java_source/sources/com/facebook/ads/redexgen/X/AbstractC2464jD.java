package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.List;
@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.jD */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2464jD {
    public static byte[] A00;

    static {
        A05();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static <T> InterfaceC2462jB<T> A00(InterfaceC2462jB<? super T> first, InterfaceC2462jB<? super T> second) {
        return new BR(A04((InterfaceC2462jB) AbstractC2461jA.A04(first), (InterfaceC2462jB) AbstractC2461jA.A04(second)));
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 111);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static String A02(String methodName, Iterable<?> components) {
        StringBuilder append = new StringBuilder(A01(0, 11, 124)).append(methodName).append('(');
        boolean z10 = true;
        for (Object obj : components) {
            if (!z10) {
                append.append(',');
            }
            append.append(obj);
            z10 = false;
        }
        return append.append(')').toString();
    }

    public static void A05() {
        A00 = new byte[]{59, 93, 80, 79, 84, 78, 76, 95, 80, 94, 25};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.jB != com.google.common.base.Predicate<? super T> */
    public static <T> List<InterfaceC2462jB<? super T>> A04(InterfaceC2462jB<? super T> first, InterfaceC2462jB<? super T> second) {
        return Arrays.asList(first, second);
    }
}
