package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.Ad  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1243Ad<K, V> extends AbstractC2795oq<Map.Entry<K, V>> {
    public abstract Map<K, V> A00();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2795oq, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> c10) {
        try {
            return super.removeAll((Collection) AbstractC2461jA.A04(c10));
        } catch (UnsupportedOperationException unused) {
            return AbstractC2799ou.A0B(this, c10.iterator());
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2795oq, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> c10) {
        try {
            return super.retainAll((Collection) AbstractC2461jA.A04(c10));
        } catch (UnsupportedOperationException unused) {
            HashSet A06 = AbstractC2799ou.A06(c10.size());
            for (Object obj : c10) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    A06.add(((Map.Entry) obj).getKey());
                }
            }
            return A00().keySet().retainAll(A06);
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ad != com.google.common.collect.Maps$EntrySet<K, V> */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        A00().clear();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ad != com.google.common.collect.Maps$EntrySet<K, V> */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return A00().isEmpty();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ad != com.google.common.collect.Maps$EntrySet<K, V> */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return A00().size();
    }
}
