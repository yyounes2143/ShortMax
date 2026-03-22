package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.AlignmentLineProvider;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RowColumnImpl.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class SiblingsAlignedModifier extends InspectorValueInfo implements ParentDataModifier {

    /* compiled from: RowColumnImpl.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class WithAlignmentLine extends SiblingsAlignedModifier {
        @NotNull
        private final AlignmentLine alignmentLine;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WithAlignmentLine(@NotNull AlignmentLine alignmentLine, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
            super(inspectorInfo, null);
            Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
            Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
            this.alignmentLine = alignmentLine;
        }

        public boolean equals(@Nullable Object obj) {
            WithAlignmentLine withAlignmentLine;
            if (this == obj) {
                return true;
            }
            if (obj instanceof WithAlignmentLine) {
                withAlignmentLine = (WithAlignmentLine) obj;
            } else {
                withAlignmentLine = null;
            }
            if (withAlignmentLine == null) {
                return false;
            }
            return Intrinsics.areEqual(this.alignmentLine, withAlignmentLine.alignmentLine);
        }

        @NotNull
        public final AlignmentLine getAlignmentLine() {
            return this.alignmentLine;
        }

        public int hashCode() {
            return this.alignmentLine.hashCode();
        }

        @Override // androidx.compose.foundation.layout.SiblingsAlignedModifier, androidx.compose.ui.layout.ParentDataModifier
        @NotNull
        public Object modifyParentData(@NotNull Density density, @Nullable Object obj) {
            RowColumnParentData rowColumnParentData;
            Intrinsics.checkNotNullParameter(density, "<this>");
            if (obj instanceof RowColumnParentData) {
                rowColumnParentData = (RowColumnParentData) obj;
            } else {
                rowColumnParentData = null;
            }
            if (rowColumnParentData == null) {
                rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
            }
            rowColumnParentData.setCrossAxisAlignment(CrossAxisAlignment.Companion.Relative$foundation_layout_release(new AlignmentLineProvider.Value(this.alignmentLine)));
            return rowColumnParentData;
        }

        @NotNull
        public String toString() {
            return "WithAlignmentLine(line=" + this.alignmentLine + ')';
        }
    }

    /* compiled from: RowColumnImpl.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class WithAlignmentLineBlock extends SiblingsAlignedModifier {
        @NotNull
        private final Function1<Measured, Integer> block;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public WithAlignmentLineBlock(@NotNull Function1<? super Measured, Integer> block, @NotNull Function1<? super InspectorInfo, Unit> inspectorInfo) {
            super(inspectorInfo, null);
            Intrinsics.checkNotNullParameter(block, "block");
            Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
            this.block = block;
        }

        public boolean equals(@Nullable Object obj) {
            WithAlignmentLineBlock withAlignmentLineBlock;
            if (this == obj) {
                return true;
            }
            if (obj instanceof WithAlignmentLineBlock) {
                withAlignmentLineBlock = (WithAlignmentLineBlock) obj;
            } else {
                withAlignmentLineBlock = null;
            }
            if (withAlignmentLineBlock == null) {
                return false;
            }
            return Intrinsics.areEqual(this.block, withAlignmentLineBlock.block);
        }

        @NotNull
        public final Function1<Measured, Integer> getBlock() {
            return this.block;
        }

        public int hashCode() {
            return this.block.hashCode();
        }

        @Override // androidx.compose.foundation.layout.SiblingsAlignedModifier, androidx.compose.ui.layout.ParentDataModifier
        @NotNull
        public Object modifyParentData(@NotNull Density density, @Nullable Object obj) {
            RowColumnParentData rowColumnParentData;
            Intrinsics.checkNotNullParameter(density, "<this>");
            if (obj instanceof RowColumnParentData) {
                rowColumnParentData = (RowColumnParentData) obj;
            } else {
                rowColumnParentData = null;
            }
            if (rowColumnParentData == null) {
                rowColumnParentData = new RowColumnParentData(0.0f, false, null, 7, null);
            }
            rowColumnParentData.setCrossAxisAlignment(CrossAxisAlignment.Companion.Relative$foundation_layout_release(new AlignmentLineProvider.Block(this.block)));
            return rowColumnParentData;
        }

        @NotNull
        public String toString() {
            return "WithAlignmentLineBlock(block=" + this.block + ')';
        }
    }

    public /* synthetic */ SiblingsAlignedModifier(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1);
    }

    @Override // androidx.compose.ui.layout.ParentDataModifier
    @Nullable
    public abstract Object modifyParentData(@NotNull Density density, @Nullable Object obj);

    private SiblingsAlignedModifier(Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
    }
}
