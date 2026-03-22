package androidx.compose.foundation.lazy;

import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyListItemPlacementAnimator.kt */
@Metadata
/* loaded from: classes.dex */
final class ItemInfo {
    private int index;
    private long notAnimatableDelta = IntOffset.Companion.m4177getZeronOccac();
    @NotNull
    private final List<PlaceableInfo> placeables = new ArrayList();

    public ItemInfo(int i10) {
        this.index = i10;
    }

    public final int getIndex() {
        return this.index;
    }

    /* renamed from: getNotAnimatableDelta-nOcc-ac  reason: not valid java name */
    public final long m548getNotAnimatableDeltanOccac() {
        return this.notAnimatableDelta;
    }

    @NotNull
    public final List<PlaceableInfo> getPlaceables() {
        return this.placeables;
    }

    public final void setIndex(int i10) {
        this.index = i10;
    }

    /* renamed from: setNotAnimatableDelta--gyyYBs  reason: not valid java name */
    public final void m549setNotAnimatableDeltagyyYBs(long j10) {
        this.notAnimatableDelta = j10;
    }
}
