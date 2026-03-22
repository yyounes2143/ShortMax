package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PathOperation.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class PathOperation {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Difference = m2088constructorimpl(0);
    private static final int Intersect = m2088constructorimpl(1);
    private static final int Union = m2088constructorimpl(2);
    private static final int Xor = m2088constructorimpl(3);
    private static final int ReverseDifference = m2088constructorimpl(4);

    /* compiled from: PathOperation.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDifference-b3I0S0c  reason: not valid java name */
        public final int m2094getDifferenceb3I0S0c() {
            return PathOperation.Difference;
        }

        /* renamed from: getIntersect-b3I0S0c  reason: not valid java name */
        public final int m2095getIntersectb3I0S0c() {
            return PathOperation.Intersect;
        }

        /* renamed from: getReverseDifference-b3I0S0c  reason: not valid java name */
        public final int m2096getReverseDifferenceb3I0S0c() {
            return PathOperation.ReverseDifference;
        }

        /* renamed from: getUnion-b3I0S0c  reason: not valid java name */
        public final int m2097getUnionb3I0S0c() {
            return PathOperation.Union;
        }

        /* renamed from: getXor-b3I0S0c  reason: not valid java name */
        public final int m2098getXorb3I0S0c() {
            return PathOperation.Xor;
        }

        private Companion() {
        }
    }

    private /* synthetic */ PathOperation(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PathOperation m2087boximpl(int i10) {
        return new PathOperation(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2089equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PathOperation) || i10 != ((PathOperation) obj).m2093unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2090equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2091hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2092toStringimpl(int i10) {
        if (m2090equalsimpl0(i10, Difference)) {
            return "Difference";
        }
        if (m2090equalsimpl0(i10, Intersect)) {
            return "Intersect";
        }
        if (m2090equalsimpl0(i10, Union)) {
            return "Union";
        }
        if (m2090equalsimpl0(i10, Xor)) {
            return "Xor";
        }
        if (m2090equalsimpl0(i10, ReverseDifference)) {
            return "ReverseDifference";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2089equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2091hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2092toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2093unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2088constructorimpl(int i10) {
        return i10;
    }
}
