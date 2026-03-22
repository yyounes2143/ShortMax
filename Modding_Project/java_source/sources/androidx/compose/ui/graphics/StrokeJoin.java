package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: StrokeJoin.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class StrokeJoin {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Miter = m2150constructorimpl(0);
    private static final int Round = m2150constructorimpl(1);
    private static final int Bevel = m2150constructorimpl(2);

    /* compiled from: StrokeJoin.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getBevel-LxFBmk8  reason: not valid java name */
        public final int m2156getBevelLxFBmk8() {
            return StrokeJoin.Bevel;
        }

        /* renamed from: getMiter-LxFBmk8  reason: not valid java name */
        public final int m2157getMiterLxFBmk8() {
            return StrokeJoin.Miter;
        }

        /* renamed from: getRound-LxFBmk8  reason: not valid java name */
        public final int m2158getRoundLxFBmk8() {
            return StrokeJoin.Round;
        }

        private Companion() {
        }
    }

    private /* synthetic */ StrokeJoin(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ StrokeJoin m2149boximpl(int i10) {
        return new StrokeJoin(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2151equalsimpl(int i10, Object obj) {
        if (!(obj instanceof StrokeJoin) || i10 != ((StrokeJoin) obj).m2155unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2152equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2153hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2154toStringimpl(int i10) {
        if (m2152equalsimpl0(i10, Miter)) {
            return "Miter";
        }
        if (m2152equalsimpl0(i10, Round)) {
            return "Round";
        }
        if (m2152equalsimpl0(i10, Bevel)) {
            return "Bevel";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2151equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2153hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2154toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2155unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2150constructorimpl(int i10) {
        return i10;
    }
}
