package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
/* compiled from: LazyGridSpan.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class GridItemSpan {
    private final long packedValue;

    private /* synthetic */ GridItemSpan(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ GridItemSpan m582boximpl(long j10) {
        return new GridItemSpan(j10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m584equalsimpl(long j10, Object obj) {
        if (!(obj instanceof GridItemSpan) || j10 != ((GridItemSpan) obj).m589unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m585equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getCurrentLineSpan-impl  reason: not valid java name */
    public static final int m586getCurrentLineSpanimpl(long j10) {
        return (int) j10;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m587hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m588toStringimpl(long j10) {
        return "GridItemSpan(packedValue=" + j10 + ')';
    }

    public boolean equals(Object obj) {
        return m584equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m587hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m588toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m589unboximpl() {
        return this.packedValue;
    }

    @ExperimentalFoundationApi
    public static /* synthetic */ void getCurrentLineSpan$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m583constructorimpl(long j10) {
        return j10;
    }
}
