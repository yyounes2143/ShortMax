package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Vn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1790Vn implements InterfaceC1745Tt {
    public final List<C1750Ty> A00 = new ArrayList();
    public final boolean A01;
    public final /* synthetic */ C1789Vm A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 4 out of bounds for length 4
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1745Tt
    public final synchronized int A6P() {
        int i10;
        i10 = 0;
        for (C1750Ty c1750Ty : this.A00) {
            i10 += c1750Ty.A01;
        }
        return i10;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    public C1790Vn(C1789Vm c1789Vm, List<C1741Tp> list, boolean z10) throws IOException {
        this.A02 = c1789Vm;
        this.A01 = z10;
        for (C1741Tp fetch : list) {
            C1740To A01 = fetch.A01();
            this.A00.add(new C1750Ty(new C1738Tm(fetch.A00(), A01.A01()), A01.A00() - A01.A01(), A01.A00()));
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    public final C1750Ty A00() {
        return this.A00.get(0);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    public final C1750Ty A01() {
        return this.A00.get(this.A00.size() - 1);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1745Tt
    public final void A5h() throws U3 {
        this.A02.A03(this);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1745Tt
    public final boolean ABp() {
        return this.A01;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Vn != com.facebook.ads.internal.eventstorage.record.RecordFileBasedRecordDatabase<T>$RecordFileBasedFetch */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A02.A06(this);
    }
}
