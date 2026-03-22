package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntIntPair.kt */
@Metadata
@SourceDebugExtension({"SMAP\nIntIntPair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntIntPair.kt\nandroidx/collection/IntIntPair\n+ 2 PackingUtils.kt\nandroidx/collection/PackingUtilsKt\n*L\n1#1,82:1\n29#2:83\n*S KotlinDebug\n*F\n+ 1 IntIntPair.kt\nandroidx/collection/IntIntPair\n*L\n46#1:83\n*E\n"})
/* loaded from: classes.dex */
public final class IntIntPair {
    public final long packedValue;

    private /* synthetic */ IntIntPair(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ IntIntPair m25boximpl(long j10) {
        return new IntIntPair(j10);
    }

    /* renamed from: component1-impl  reason: not valid java name */
    public static final int m26component1impl(long j10) {
        return (int) (j10 >> 32);
    }

    /* renamed from: component2-impl  reason: not valid java name */
    public static final int m27component2impl(long j10) {
        return (int) (j10 & 4294967295L);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m29constructorimpl(long j10) {
        return j10;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m30equalsimpl(long j10, Object obj) {
        if (!(obj instanceof IntIntPair) || j10 != ((IntIntPair) obj).m36unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m31equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getFirst-impl  reason: not valid java name */
    public static final int m32getFirstimpl(long j10) {
        return (int) (j10 >> 32);
    }

    /* renamed from: getSecond-impl  reason: not valid java name */
    public static final int m33getSecondimpl(long j10) {
        return (int) (j10 & 4294967295L);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m34hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m35toStringimpl(long j10) {
        return '(' + m32getFirstimpl(j10) + ", " + m33getSecondimpl(j10) + ')';
    }

    public boolean equals(Object obj) {
        return m30equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m34hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m35toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m36unboximpl() {
        return this.packedValue;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m28constructorimpl(int i10, int i11) {
        return m29constructorimpl((i11 & 4294967295L) | (i10 << 32));
    }
}
