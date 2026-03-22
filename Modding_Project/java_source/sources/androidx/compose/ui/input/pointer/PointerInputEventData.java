package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InternalPointerInput.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInputEventData {
    private final boolean down;
    @NotNull
    private final List<HistoricalChange> historical;

    /* renamed from: id  reason: collision with root package name */
    private final long f1276id;
    private final boolean issuesEnterExit;
    private final long position;
    private final long positionOnScreen;
    private final long scrollDelta;
    private final int type;
    private final long uptime;

    public /* synthetic */ PointerInputEventData(long j10, long j11, long j12, long j13, boolean z10, int i10, boolean z11, List list, long j14, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, z10, i10, z11, list, j14);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: copy-JzxSYW4$default  reason: not valid java name */
    public static /* synthetic */ PointerInputEventData m3214copyJzxSYW4$default(PointerInputEventData pointerInputEventData, long j10, long j11, long j12, long j13, boolean z10, int i10, boolean z11, List list, long j14, int i11, Object obj) {
        long j15;
        long j16;
        long j17;
        long j18;
        boolean z12;
        int i12;
        boolean z13;
        List<HistoricalChange> list2;
        long j19;
        if ((i11 & 1) != 0) {
            j15 = pointerInputEventData.f1276id;
        } else {
            j15 = j10;
        }
        if ((i11 & 2) != 0) {
            j16 = pointerInputEventData.uptime;
        } else {
            j16 = j11;
        }
        if ((i11 & 4) != 0) {
            j17 = pointerInputEventData.positionOnScreen;
        } else {
            j17 = j12;
        }
        if ((i11 & 8) != 0) {
            j18 = pointerInputEventData.position;
        } else {
            j18 = j13;
        }
        if ((i11 & 16) != 0) {
            z12 = pointerInputEventData.down;
        } else {
            z12 = z10;
        }
        if ((i11 & 32) != 0) {
            i12 = pointerInputEventData.type;
        } else {
            i12 = i10;
        }
        if ((i11 & 64) != 0) {
            z13 = pointerInputEventData.issuesEnterExit;
        } else {
            z13 = z11;
        }
        if ((i11 & 128) != 0) {
            list2 = pointerInputEventData.historical;
        } else {
            list2 = list;
        }
        if ((i11 & 256) != 0) {
            j19 = pointerInputEventData.scrollDelta;
        } else {
            j19 = j14;
        }
        return pointerInputEventData.m3220copyJzxSYW4(j15, j16, j17, j18, z12, i12, z13, list2, j19);
    }

    /* renamed from: component1-J3iCeTQ  reason: not valid java name */
    public final long m3215component1J3iCeTQ() {
        return this.f1276id;
    }

    public final long component2() {
        return this.uptime;
    }

    /* renamed from: component3-F1C5BW0  reason: not valid java name */
    public final long m3216component3F1C5BW0() {
        return this.positionOnScreen;
    }

    /* renamed from: component4-F1C5BW0  reason: not valid java name */
    public final long m3217component4F1C5BW0() {
        return this.position;
    }

    public final boolean component5() {
        return this.down;
    }

    /* renamed from: component6-T8wyACA  reason: not valid java name */
    public final int m3218component6T8wyACA() {
        return this.type;
    }

    public final boolean component7() {
        return this.issuesEnterExit;
    }

    @NotNull
    public final List<HistoricalChange> component8() {
        return this.historical;
    }

    /* renamed from: component9-F1C5BW0  reason: not valid java name */
    public final long m3219component9F1C5BW0() {
        return this.scrollDelta;
    }

    @NotNull
    /* renamed from: copy-JzxSYW4  reason: not valid java name */
    public final PointerInputEventData m3220copyJzxSYW4(long j10, long j11, long j12, long j13, boolean z10, int i10, boolean z11, @NotNull List<HistoricalChange> historical, long j14) {
        Intrinsics.checkNotNullParameter(historical, "historical");
        return new PointerInputEventData(j10, j11, j12, j13, z10, i10, z11, historical, j14, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PointerInputEventData)) {
            return false;
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (PointerId.m3195equalsimpl0(this.f1276id, pointerInputEventData.f1276id) && this.uptime == pointerInputEventData.uptime && Offset.m1603equalsimpl0(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.m1603equalsimpl0(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && PointerType.m3279equalsimpl0(this.type, pointerInputEventData.type) && this.issuesEnterExit == pointerInputEventData.issuesEnterExit && Intrinsics.areEqual(this.historical, pointerInputEventData.historical) && Offset.m1603equalsimpl0(this.scrollDelta, pointerInputEventData.scrollDelta)) {
            return true;
        }
        return false;
    }

    public final boolean getDown() {
        return this.down;
    }

    @NotNull
    public final List<HistoricalChange> getHistorical() {
        return this.historical;
    }

    /* renamed from: getId-J3iCeTQ  reason: not valid java name */
    public final long m3221getIdJ3iCeTQ() {
        return this.f1276id;
    }

    public final boolean getIssuesEnterExit() {
        return this.issuesEnterExit;
    }

    /* renamed from: getPosition-F1C5BW0  reason: not valid java name */
    public final long m3222getPositionF1C5BW0() {
        return this.position;
    }

    /* renamed from: getPositionOnScreen-F1C5BW0  reason: not valid java name */
    public final long m3223getPositionOnScreenF1C5BW0() {
        return this.positionOnScreen;
    }

    /* renamed from: getScrollDelta-F1C5BW0  reason: not valid java name */
    public final long m3224getScrollDeltaF1C5BW0() {
        return this.scrollDelta;
    }

    /* renamed from: getType-T8wyACA  reason: not valid java name */
    public final int m3225getTypeT8wyACA() {
        return this.type;
    }

    public final long getUptime() {
        return this.uptime;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m3196hashCodeimpl = ((((((PointerId.m3196hashCodeimpl(this.f1276id) * 31) + Long.hashCode(this.uptime)) * 31) + Offset.m1608hashCodeimpl(this.positionOnScreen)) * 31) + Offset.m1608hashCodeimpl(this.position)) * 31;
        boolean z10 = this.down;
        int i10 = 1;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int m3280hashCodeimpl = (((m3196hashCodeimpl + i11) * 31) + PointerType.m3280hashCodeimpl(this.type)) * 31;
        boolean z11 = this.issuesEnterExit;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        return ((((m3280hashCodeimpl + i10) * 31) + this.historical.hashCode()) * 31) + Offset.m1608hashCodeimpl(this.scrollDelta);
    }

    @NotNull
    public String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.m3197toStringimpl(this.f1276id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.m1614toStringimpl(this.positionOnScreen)) + ", position=" + ((Object) Offset.m1614toStringimpl(this.position)) + ", down=" + this.down + ", type=" + ((Object) PointerType.m3281toStringimpl(this.type)) + ", issuesEnterExit=" + this.issuesEnterExit + ", historical=" + this.historical + ", scrollDelta=" + ((Object) Offset.m1614toStringimpl(this.scrollDelta)) + ')';
    }

    private PointerInputEventData(long j10, long j11, long j12, long j13, boolean z10, int i10, boolean z11, List<HistoricalChange> list, long j14) {
        this.f1276id = j10;
        this.uptime = j11;
        this.positionOnScreen = j12;
        this.position = j13;
        this.down = z10;
        this.type = i10;
        this.issuesEnterExit = z11;
        this.historical = list;
        this.scrollDelta = j14;
    }

    public /* synthetic */ PointerInputEventData(long j10, long j11, long j12, long j13, boolean z10, int i10, boolean z11, List list, long j14, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, z10, i10, (i11 & 64) != 0 ? false : z11, (i11 & 128) != 0 ? new ArrayList() : list, (i11 & 256) != 0 ? Offset.Companion.m1622getZeroF1C5BW0() : j14, null);
    }
}
