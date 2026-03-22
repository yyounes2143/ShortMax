package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.errorprone.annotations.DoNotMock;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
import kotlin.jvm.internal.ByteCompanionObject;
@DoNotMock("Use ImmutableMap.of or another implementation")
@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.mj  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2667mj<K, V> implements Map<K, V>, Serializable {
    public static byte[] A03 = null;
    public static String[] A04 = {"vKCQqMCBbbLRNayk93g", "pkt0IymnSuuTvT2UABZ", "PNc8ARlkPwYFJqJCIOuFP53ZqzL63Ot9", "eX2I8z36J32Go", "gIGV4Wf8BZM4VYT7BzYv5KONe75pspBB", "tYe4jTWn6nAHNSv3aqiqFSpTtkmDAUnf", "8sr0nS9u8yYglBLPy9xKZ", "QmruhXeOtXDmPURP7V7IzoRRfHSq4IXC"};
    public static final Map.Entry<?, ?>[] A05;
    public static final long serialVersionUID = 912559;
    @CheckForNull
    @LazyInit
    public transient AbstractC2658ma<V> A00;
    @CheckForNull
    @LazyInit
    public transient AbstractC1251Al<Map.Entry<K, V>> A01;
    @CheckForNull
    @LazyInit
    public transient AbstractC1251Al<K> A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static <K, V> AbstractC2667mj<K, V> A05(Iterable<? extends Map.Entry<? extends K, ? extends V>> entries) {
        C2665mh c2665mh = new C2665mh(entries instanceof Collection ? ((Collection) entries).size() : 4);
        c2665mh.A04(entries);
        return c2665mh.A07();
    }

    public static String A07(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 10);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A03 = new byte[]{103, -123, 119, 50, 101, 119, -124, 123, 115, 126, 123, -116, 119, 118, 88, -127, -124, ByteCompanionObject.MAX_VALUE};
    }

    public abstract AbstractC2658ma<V> A0A();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 2 out of bounds for length 2
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // java.util.Map
    /* renamed from: A0B */
    public AbstractC1251Al<Map.Entry<K, V>> entrySet() {
        AbstractC1251Al<Map.Entry<K, V>> abstractC1251Al = this.A01;
        if (abstractC1251Al == null) {
            AbstractC1251Al<Map.Entry<K, V>> A0D = A0D();
            this.A01 = A0D;
            return A0D;
        }
        return abstractC1251Al;
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 2 out of bounds for length 2
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // java.util.Map
    /* renamed from: A0C */
    public AbstractC1251Al<K> keySet() {
        AbstractC1251Al<K> abstractC1251Al = this.A02;
        if (abstractC1251Al == null) {
            AbstractC1251Al<K> A0E = A0E();
            this.A02 = A0E;
            return A0E;
        }
        return abstractC1251Al;
    }

    public abstract AbstractC1251Al<Map.Entry<K, V>> A0D();

    public abstract AbstractC1251Al<K> A0E();

    public abstract boolean A0F();

    @Override // java.util.Map
    @CheckForNull
    public abstract V get(@CheckForNull Object key);

    static {
        A08();
        A05 = new Map.Entry[0];
    }

    public static <K, V> C2665mh<K, V> A03() {
        return new C2665mh<>();
    }

    public static <K, V> AbstractC2667mj<K, V> A04() {
        AbstractC2667mj<K, V> abstractC2667mj = (AbstractC2667mj<K, V>) AL.A04;
        if (A04[4].charAt(3) != 'V') {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[0] = "QWSx7KQEMPZzsm7sYqB";
        strArr[1] = "rV1plHJifYQu2yuYFjd";
        return abstractC2667mj;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    public static <K, V> AbstractC2667mj<K, V> A06(Map<? extends K, ? extends V> map) {
        if ((map instanceof AbstractC2667mj) && !(map instanceof SortedMap)) {
            AbstractC2667mj<K, V> abstractC2667mj = (AbstractC2667mj) map;
            if (!abstractC2667mj.A0F()) {
                return abstractC2667mj;
            }
        }
        return A05(map.entrySet());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.ma != com.google.common.collect.ImmutableCollection<V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    /* renamed from: A09 */
    public AbstractC2658ma<V> values() {
        AbstractC2658ma<V> abstractC2658ma = this.A00;
        if (abstractC2658ma == null) {
            abstractC2658ma = A0A();
            if (A04[3].length() == 23) {
                throw new RuntimeException();
            }
            A04[6] = "23ujWmcydF5ICCpn56C";
            this.A00 = abstractC2658ma;
        }
        return abstractC2658ma;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public boolean containsKey(@CheckForNull Object key) {
        return get(key) != null;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public final boolean containsValue(@CheckForNull Object value) {
        return values().contains(value);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public boolean equals(@CheckForNull Object object) {
        return AbstractC2744nz.A0B(this, object);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @CheckForNull
    public final V getOrDefault(@CheckForNull Object key, @CheckForNull V defaultValue) {
        V result = get(key);
        if (result != null) {
            return result;
        }
        return defaultValue;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public int hashCode() {
        return AbstractC2799ou.A00(entrySet());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final V put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    private void readObject(ObjectInputStream stream) throws InvalidObjectException {
        throw new InvalidObjectException(A07(0, 18, 8));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    @Override // java.util.Map
    @CheckForNull
    @Deprecated
    public final V remove(@CheckForNull Object o10) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    public final String toString() {
        return AbstractC2744nz.A08(this);
    }
}
