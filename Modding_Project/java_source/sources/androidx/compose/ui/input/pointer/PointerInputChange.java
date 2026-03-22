package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.Offset;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PointerEvent.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class PointerInputChange {
    @Nullable
    private List<HistoricalChange> _historical;
    @NotNull
    private ConsumedData consumed;

    /* renamed from: id  reason: collision with root package name */
    private final long f1275id;
    private final long position;
    private final boolean pressed;
    private final long previousPosition;
    private final boolean previousPressed;
    private final long previousUptimeMillis;
    private final long scrollDelta;
    private final int type;
    private final long uptimeMillis;

    @c
    public /* synthetic */ PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, ConsumedData consumedData, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, j13, j14, z11, consumedData, i10);
    }

    /* renamed from: copy-0GkPj7c$default  reason: not valid java name */
    public static /* synthetic */ PointerInputChange m3199copy0GkPj7c$default(PointerInputChange pointerInputChange, long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, ConsumedData consumedData, int i10, long j15, int i11, Object obj) {
        long j16;
        long j17;
        long j18;
        boolean z12;
        long j19;
        long j20;
        boolean z13;
        int i12;
        long j21;
        if ((i11 & 1) != 0) {
            j16 = pointerInputChange.f1275id;
        } else {
            j16 = j10;
        }
        if ((i11 & 2) != 0) {
            j17 = pointerInputChange.uptimeMillis;
        } else {
            j17 = j11;
        }
        if ((i11 & 4) != 0) {
            j18 = pointerInputChange.position;
        } else {
            j18 = j12;
        }
        if ((i11 & 8) != 0) {
            z12 = pointerInputChange.pressed;
        } else {
            z12 = z10;
        }
        if ((i11 & 16) != 0) {
            j19 = pointerInputChange.previousUptimeMillis;
        } else {
            j19 = j13;
        }
        if ((i11 & 32) != 0) {
            j20 = pointerInputChange.previousPosition;
        } else {
            j20 = j14;
        }
        if ((i11 & 64) != 0) {
            z13 = pointerInputChange.previousPressed;
        } else {
            z13 = z11;
        }
        if ((i11 & 256) != 0) {
            i12 = pointerInputChange.type;
        } else {
            i12 = i10;
        }
        int i13 = i12;
        if ((i11 & 512) != 0) {
            j21 = pointerInputChange.scrollDelta;
        } else {
            j21 = j15;
        }
        return pointerInputChange.m3203copy0GkPj7c(j16, j17, j18, z12, j19, j20, z13, consumedData, i13, j21);
    }

    /* renamed from: copy-Ezr-O64$default  reason: not valid java name */
    public static /* synthetic */ PointerInputChange m3200copyEzrO64$default(PointerInputChange pointerInputChange, long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, ConsumedData consumedData, int i10, int i11, Object obj) {
        long j15;
        long j16;
        long j17;
        boolean z12;
        long j18;
        long j19;
        boolean z13;
        ConsumedData consumedData2;
        int i12;
        if ((i11 & 1) != 0) {
            j15 = pointerInputChange.f1275id;
        } else {
            j15 = j10;
        }
        if ((i11 & 2) != 0) {
            j16 = pointerInputChange.uptimeMillis;
        } else {
            j16 = j11;
        }
        if ((i11 & 4) != 0) {
            j17 = pointerInputChange.position;
        } else {
            j17 = j12;
        }
        if ((i11 & 8) != 0) {
            z12 = pointerInputChange.pressed;
        } else {
            z12 = z10;
        }
        if ((i11 & 16) != 0) {
            j18 = pointerInputChange.previousUptimeMillis;
        } else {
            j18 = j13;
        }
        if ((i11 & 32) != 0) {
            j19 = pointerInputChange.previousPosition;
        } else {
            j19 = j14;
        }
        if ((i11 & 64) != 0) {
            z13 = pointerInputChange.previousPressed;
        } else {
            z13 = z11;
        }
        if ((i11 & 128) != 0) {
            consumedData2 = pointerInputChange.consumed;
        } else {
            consumedData2 = consumedData;
        }
        if ((i11 & 256) != 0) {
            i12 = pointerInputChange.type;
        } else {
            i12 = i10;
        }
        return pointerInputChange.m3204copyEzrO64(j15, j16, j17, z12, j18, j19, z13, consumedData2, i12);
    }

    /* renamed from: copy-JKmWfYY$default  reason: not valid java name */
    public static /* synthetic */ PointerInputChange m3201copyJKmWfYY$default(PointerInputChange pointerInputChange, long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, int i10, long j15, int i11, Object obj) {
        long j16;
        long j17;
        long j18;
        boolean z12;
        long j19;
        long j20;
        boolean z13;
        int i12;
        long j21;
        if ((i11 & 1) != 0) {
            j16 = pointerInputChange.f1275id;
        } else {
            j16 = j10;
        }
        if ((i11 & 2) != 0) {
            j17 = pointerInputChange.uptimeMillis;
        } else {
            j17 = j11;
        }
        if ((i11 & 4) != 0) {
            j18 = pointerInputChange.position;
        } else {
            j18 = j12;
        }
        if ((i11 & 8) != 0) {
            z12 = pointerInputChange.pressed;
        } else {
            z12 = z10;
        }
        if ((i11 & 16) != 0) {
            j19 = pointerInputChange.previousUptimeMillis;
        } else {
            j19 = j13;
        }
        if ((i11 & 32) != 0) {
            j20 = pointerInputChange.previousPosition;
        } else {
            j20 = j14;
        }
        if ((i11 & 64) != 0) {
            z13 = pointerInputChange.previousPressed;
        } else {
            z13 = z11;
        }
        if ((i11 & 128) != 0) {
            i12 = pointerInputChange.type;
        } else {
            i12 = i10;
        }
        int i13 = i12;
        if ((i11 & 256) != 0) {
            j21 = pointerInputChange.scrollDelta;
        } else {
            j21 = j15;
        }
        return pointerInputChange.m3205copyJKmWfYY(j16, j17, j18, z12, j19, j20, z13, i13, j21);
    }

    /* renamed from: copy-OHpmEuE$default  reason: not valid java name */
    public static /* synthetic */ PointerInputChange m3202copyOHpmEuE$default(PointerInputChange pointerInputChange, long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, int i10, List list, long j15, int i11, Object obj) {
        long j16;
        long j17;
        long j18;
        boolean z12;
        long j19;
        long j20;
        boolean z13;
        int i12;
        long j21;
        if ((i11 & 1) != 0) {
            j16 = pointerInputChange.f1275id;
        } else {
            j16 = j10;
        }
        if ((i11 & 2) != 0) {
            j17 = pointerInputChange.uptimeMillis;
        } else {
            j17 = j11;
        }
        if ((i11 & 4) != 0) {
            j18 = pointerInputChange.position;
        } else {
            j18 = j12;
        }
        if ((i11 & 8) != 0) {
            z12 = pointerInputChange.pressed;
        } else {
            z12 = z10;
        }
        if ((i11 & 16) != 0) {
            j19 = pointerInputChange.previousUptimeMillis;
        } else {
            j19 = j13;
        }
        if ((i11 & 32) != 0) {
            j20 = pointerInputChange.previousPosition;
        } else {
            j20 = j14;
        }
        if ((i11 & 64) != 0) {
            z13 = pointerInputChange.previousPressed;
        } else {
            z13 = z11;
        }
        if ((i11 & 128) != 0) {
            i12 = pointerInputChange.type;
        } else {
            i12 = i10;
        }
        int i13 = i12;
        if ((i11 & 512) != 0) {
            j21 = pointerInputChange.scrollDelta;
        } else {
            j21 = j15;
        }
        return pointerInputChange.m3206copyOHpmEuE(j16, j17, j18, z12, j19, j20, z13, i13, list, j21);
    }

    public final void consume() {
        this.consumed.setDownChange(true);
        this.consumed.setPositionChange(true);
    }

    @c
    @NotNull
    /* renamed from: copy-0GkPj7c  reason: not valid java name */
    public final PointerInputChange m3203copy0GkPj7c(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, @NotNull ConsumedData consumed, int i10, long j15) {
        boolean z12;
        Intrinsics.checkNotNullParameter(consumed, "consumed");
        if (!consumed.getDownChange() && !consumed.getPositionChange()) {
            z12 = false;
        } else {
            z12 = true;
        }
        PointerInputChange pointerInputChange = new PointerInputChange(j10, j11, j12, z10, j13, j14, z11, z12, i10, getHistorical(), j15, (DefaultConstructorMarker) null);
        this.consumed = consumed;
        return pointerInputChange;
    }

    @c
    /* renamed from: copy-Ezr-O64  reason: not valid java name */
    public final /* synthetic */ PointerInputChange m3204copyEzrO64(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, ConsumedData consumed, int i10) {
        boolean z12;
        Intrinsics.checkNotNullParameter(consumed, "consumed");
        if (!consumed.getDownChange() && !consumed.getPositionChange()) {
            z12 = false;
        } else {
            z12 = true;
        }
        PointerInputChange pointerInputChange = new PointerInputChange(j10, j11, j12, z10, j13, j14, z11, z12, i10, getHistorical(), this.scrollDelta, (DefaultConstructorMarker) null);
        this.consumed = consumed;
        return pointerInputChange;
    }

    @NotNull
    /* renamed from: copy-JKmWfYY  reason: not valid java name */
    public final PointerInputChange m3205copyJKmWfYY(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, int i10, long j15) {
        PointerInputChange pointerInputChange = new PointerInputChange(j10, j11, j12, z10, j13, j14, z11, false, i10, (List) getHistorical(), j15, (DefaultConstructorMarker) null);
        pointerInputChange.consumed = this.consumed;
        return pointerInputChange;
    }

    @ExperimentalComposeUiApi
    @NotNull
    /* renamed from: copy-OHpmEuE  reason: not valid java name */
    public final PointerInputChange m3206copyOHpmEuE(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, int i10, @NotNull List<HistoricalChange> historical, long j15) {
        Intrinsics.checkNotNullParameter(historical, "historical");
        PointerInputChange pointerInputChange = new PointerInputChange(j10, j11, j12, z10, j13, j14, z11, false, i10, (List) historical, j15, (DefaultConstructorMarker) null);
        pointerInputChange.consumed = this.consumed;
        return pointerInputChange;
    }

    @NotNull
    public final ConsumedData getConsumed() {
        return this.consumed;
    }

    @ExperimentalComposeUiApi
    @NotNull
    public final List<HistoricalChange> getHistorical() {
        List<HistoricalChange> list = this._historical;
        if (list == null) {
            return CollectionsKt.n();
        }
        return list;
    }

    /* renamed from: getId-J3iCeTQ  reason: not valid java name */
    public final long m3207getIdJ3iCeTQ() {
        return this.f1275id;
    }

    /* renamed from: getPosition-F1C5BW0  reason: not valid java name */
    public final long m3208getPositionF1C5BW0() {
        return this.position;
    }

    public final boolean getPressed() {
        return this.pressed;
    }

    /* renamed from: getPreviousPosition-F1C5BW0  reason: not valid java name */
    public final long m3209getPreviousPositionF1C5BW0() {
        return this.previousPosition;
    }

    public final boolean getPreviousPressed() {
        return this.previousPressed;
    }

    public final long getPreviousUptimeMillis() {
        return this.previousUptimeMillis;
    }

    /* renamed from: getScrollDelta-F1C5BW0  reason: not valid java name */
    public final long m3210getScrollDeltaF1C5BW0() {
        return this.scrollDelta;
    }

    /* renamed from: getType-T8wyACA  reason: not valid java name */
    public final int m3211getTypeT8wyACA() {
        return this.type;
    }

    public final long getUptimeMillis() {
        return this.uptimeMillis;
    }

    public final boolean isConsumed() {
        if (!this.consumed.getDownChange() && !this.consumed.getPositionChange()) {
            return false;
        }
        return true;
    }

    @NotNull
    public String toString() {
        return "PointerInputChange(id=" + ((Object) PointerId.m3197toStringimpl(this.f1275id)) + ", uptimeMillis=" + this.uptimeMillis + ", position=" + ((Object) Offset.m1614toStringimpl(this.position)) + ", pressed=" + this.pressed + ", previousUptimeMillis=" + this.previousUptimeMillis + ", previousPosition=" + ((Object) Offset.m1614toStringimpl(this.previousPosition)) + ", previousPressed=" + this.previousPressed + ", isConsumed=" + isConsumed() + ", type=" + ((Object) PointerType.m3281toStringimpl(this.type)) + ", historical=" + getHistorical() + ",scrollDelta=" + ((Object) Offset.m1614toStringimpl(this.scrollDelta)) + ')';
    }

    public /* synthetic */ PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, boolean z12, int i10, long j15, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, j13, j14, z11, z12, i10, j15);
    }

    public /* synthetic */ PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, boolean z12, int i10, List list, long j15, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, j13, j14, z11, z12, i10, list, j15);
    }

    private PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, boolean z12, int i10, long j15) {
        this.f1275id = j10;
        this.uptimeMillis = j11;
        this.position = j12;
        this.pressed = z10;
        this.previousUptimeMillis = j13;
        this.previousPosition = j14;
        this.previousPressed = z11;
        this.type = i10;
        this.scrollDelta = j15;
        this.consumed = new ConsumedData(z12, z12);
    }

    public /* synthetic */ PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, boolean z12, int i10, long j15, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, j13, j14, z11, z12, (i11 & 256) != 0 ? PointerType.Companion.m3286getTouchT8wyACA() : i10, (i11 & 512) != 0 ? Offset.Companion.m1622getZeroF1C5BW0() : j15, (DefaultConstructorMarker) null);
    }

    @c
    public static /* synthetic */ void getConsumed$annotations() {
    }

    @ExperimentalComposeUiApi
    public static /* synthetic */ void getHistorical$annotations() {
    }

    public static /* synthetic */ void isConsumed$annotations() {
    }

    public /* synthetic */ PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, ConsumedData consumedData, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, z10, j13, j14, z11, consumedData, (i11 & 256) != 0 ? PointerType.Companion.m3286getTouchT8wyACA() : i10, (DefaultConstructorMarker) null);
    }

    private PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, ConsumedData consumedData, int i10) {
        this(j10, j11, j12, z10, j13, j14, z11, consumedData.getDownChange() || consumedData.getPositionChange(), i10, Offset.Companion.m1622getZeroF1C5BW0(), (DefaultConstructorMarker) null);
    }

    private PointerInputChange(long j10, long j11, long j12, boolean z10, long j13, long j14, boolean z11, boolean z12, int i10, List<HistoricalChange> list, long j15) {
        this(j10, j11, j12, z10, j13, j14, z11, z12, i10, j15, (DefaultConstructorMarker) null);
        this._historical = list;
    }
}
