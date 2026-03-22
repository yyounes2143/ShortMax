package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Immutable;
import com.ss.ttm.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageVector.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class VectorGroup extends VectorNode implements Iterable<VectorNode>, KMappedMarker {
    @NotNull
    private final List<VectorNode> children;
    @NotNull
    private final List<PathNode> clipPathData;
    @NotNull
    private final String name;
    private final float pivotX;
    private final float pivotY;
    private final float rotation;
    private final float scaleX;
    private final float scaleY;
    private final float translationX;
    private final float translationY;

    public VectorGroup() {
        this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof VectorGroup)) {
            VectorGroup vectorGroup = (VectorGroup) obj;
            if (Intrinsics.areEqual(this.name, vectorGroup.name) && this.rotation == vectorGroup.rotation && this.pivotX == vectorGroup.pivotX && this.pivotY == vectorGroup.pivotY && this.scaleX == vectorGroup.scaleX && this.scaleY == vectorGroup.scaleY && this.translationX == vectorGroup.translationX && this.translationY == vectorGroup.translationY && Intrinsics.areEqual(this.clipPathData, vectorGroup.clipPathData) && Intrinsics.areEqual(this.children, vectorGroup.children)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @NotNull
    public final VectorNode get(int i10) {
        return this.children.get(i10);
    }

    @NotNull
    public final List<PathNode> getClipPathData() {
        return this.clipPathData;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final float getPivotX() {
        return this.pivotX;
    }

    public final float getPivotY() {
        return this.pivotY;
    }

    public final float getRotation() {
        return this.rotation;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    public final int getSize() {
        return this.children.size();
    }

    public final float getTranslationX() {
        return this.translationX;
    }

    public final float getTranslationY() {
        return this.translationY;
    }

    public int hashCode() {
        return (((((((((((((((((this.name.hashCode() * 31) + Float.hashCode(this.rotation)) * 31) + Float.hashCode(this.pivotX)) * 31) + Float.hashCode(this.pivotY)) * 31) + Float.hashCode(this.scaleX)) * 31) + Float.hashCode(this.scaleY)) * 31) + Float.hashCode(this.translationX)) * 31) + Float.hashCode(this.translationY)) * 31) + this.clipPathData.hashCode()) * 31) + this.children.hashCode();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<VectorNode> iterator() {
        return new VectorGroup$iterator$1(this);
    }

    public /* synthetic */ VectorGroup(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, List list, List list2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? "" : str, (i10 & 2) != 0 ? 0.0f : f10, (i10 & 4) != 0 ? 0.0f : f11, (i10 & 8) != 0 ? 0.0f : f12, (i10 & 16) != 0 ? 1.0f : f13, (i10 & 32) == 0 ? f14 : 1.0f, (i10 & 64) != 0 ? 0.0f : f15, (i10 & 128) == 0 ? f16 : 0.0f, (i10 & 256) != 0 ? VectorKt.getEmptyPath() : list, (i10 & 512) != 0 ? CollectionsKt.n() : list2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public VectorGroup(@NotNull String name, float f10, float f11, float f12, float f13, float f14, float f15, float f16, @NotNull List<? extends PathNode> clipPathData, @NotNull List<? extends VectorNode> children) {
        super(null);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(clipPathData, "clipPathData");
        Intrinsics.checkNotNullParameter(children, "children");
        this.name = name;
        this.rotation = f10;
        this.pivotX = f11;
        this.pivotY = f12;
        this.scaleX = f13;
        this.scaleY = f14;
        this.translationX = f15;
        this.translationY = f16;
        this.clipPathData = clipPathData;
        this.children = children;
    }
}
