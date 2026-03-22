package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import bt.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldScroll.kt */
@Metadata
/* loaded from: classes.dex */
final class HorizontalScrollLayoutModifier implements LayoutModifier {
    private final int cursorOffset;
    @NotNull
    private final TextFieldScrollerPosition scrollerPosition;
    @NotNull
    private final Function0<TextLayoutResultProxy> textLayoutResultProvider;
    @NotNull
    private final TransformedText transformedText;

    public HorizontalScrollLayoutModifier(@NotNull TextFieldScrollerPosition scrollerPosition, int i10, @NotNull TransformedText transformedText, @NotNull Function0<TextLayoutResultProxy> textLayoutResultProvider) {
        Intrinsics.checkNotNullParameter(scrollerPosition, "scrollerPosition");
        Intrinsics.checkNotNullParameter(transformedText, "transformedText");
        Intrinsics.checkNotNullParameter(textLayoutResultProvider, "textLayoutResultProvider");
        this.scrollerPosition = scrollerPosition;
        this.cursorOffset = i10;
        this.transformedText = transformedText;
        this.textLayoutResultProvider = textLayoutResultProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HorizontalScrollLayoutModifier copy$default(HorizontalScrollLayoutModifier horizontalScrollLayoutModifier, TextFieldScrollerPosition textFieldScrollerPosition, int i10, TransformedText transformedText, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            textFieldScrollerPosition = horizontalScrollLayoutModifier.scrollerPosition;
        }
        if ((i11 & 2) != 0) {
            i10 = horizontalScrollLayoutModifier.cursorOffset;
        }
        if ((i11 & 4) != 0) {
            transformedText = horizontalScrollLayoutModifier.transformedText;
        }
        if ((i11 & 8) != 0) {
            function0 = horizontalScrollLayoutModifier.textLayoutResultProvider;
        }
        return horizontalScrollLayoutModifier.copy(textFieldScrollerPosition, i10, transformedText, function0);
    }

    @NotNull
    public final TextFieldScrollerPosition component1() {
        return this.scrollerPosition;
    }

    public final int component2() {
        return this.cursorOffset;
    }

    @NotNull
    public final TransformedText component3() {
        return this.transformedText;
    }

    @NotNull
    public final Function0<TextLayoutResultProxy> component4() {
        return this.textLayoutResultProvider;
    }

    @NotNull
    public final HorizontalScrollLayoutModifier copy(@NotNull TextFieldScrollerPosition scrollerPosition, int i10, @NotNull TransformedText transformedText, @NotNull Function0<TextLayoutResultProxy> textLayoutResultProvider) {
        Intrinsics.checkNotNullParameter(scrollerPosition, "scrollerPosition");
        Intrinsics.checkNotNullParameter(transformedText, "transformedText");
        Intrinsics.checkNotNullParameter(textLayoutResultProvider, "textLayoutResultProvider");
        return new HorizontalScrollLayoutModifier(scrollerPosition, i10, transformedText, textLayoutResultProvider);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HorizontalScrollLayoutModifier)) {
            return false;
        }
        HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = (HorizontalScrollLayoutModifier) obj;
        if (Intrinsics.areEqual(this.scrollerPosition, horizontalScrollLayoutModifier.scrollerPosition) && this.cursorOffset == horizontalScrollLayoutModifier.cursorOffset && Intrinsics.areEqual(this.transformedText, horizontalScrollLayoutModifier.transformedText) && Intrinsics.areEqual(this.textLayoutResultProvider, horizontalScrollLayoutModifier.textLayoutResultProvider)) {
            return true;
        }
        return false;
    }

    public final int getCursorOffset() {
        return this.cursorOffset;
    }

    @NotNull
    public final TextFieldScrollerPosition getScrollerPosition() {
        return this.scrollerPosition;
    }

    @NotNull
    public final Function0<TextLayoutResultProxy> getTextLayoutResultProvider() {
        return this.textLayoutResultProvider;
    }

    @NotNull
    public final TransformedText getTransformedText() {
        return this.transformedText;
    }

    public int hashCode() {
        return (((((this.scrollerPosition.hashCode() * 31) + Integer.hashCode(this.cursorOffset)) * 31) + this.transformedText.hashCode()) * 31) + this.textLayoutResultProvider.hashCode();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull final MeasureScope measure, @NotNull Measurable measurable, long j10) {
        long m3996copyZbe2FdA$default;
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (measurable.maxIntrinsicWidth(Constraints.m4004getMaxHeightimpl(j10)) < Constraints.m4005getMaxWidthimpl(j10)) {
            m3996copyZbe2FdA$default = j10;
        } else {
            m3996copyZbe2FdA$default = Constraints.m3996copyZbe2FdA$default(j10, 0, Integer.MAX_VALUE, 0, 0, 13, null);
        }
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(m3996copyZbe2FdA$default);
        final int min = Math.min(mo3335measureBRTryo0.getWidth(), Constraints.m4005getMaxWidthimpl(j10));
        return MeasureScope.layout$default(measure, min, mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.foundation.text.HorizontalScrollLayoutModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                MeasureScope measureScope = MeasureScope.this;
                int cursorOffset = this.getCursorOffset();
                TransformedText transformedText = this.getTransformedText();
                TextLayoutResultProxy invoke = this.getTextLayoutResultProvider().invoke();
                this.getScrollerPosition().update(Orientation.Horizontal, TextFieldScrollKt.access$getCursorRectInScroller(measureScope, cursorOffset, transformedText, invoke != null ? invoke.getValue() : null, MeasureScope.this.getLayoutDirection() == LayoutDirection.Rtl, mo3335measureBRTryo0.getWidth()), min, mo3335measureBRTryo0.getWidth());
                Placeable.PlacementScope.placeRelative$default(layout, mo3335measureBRTryo0, a.c(-this.getScrollerPosition().getOffset()), 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @NotNull
    public String toString() {
        return "HorizontalScrollLayoutModifier(scrollerPosition=" + this.scrollerPosition + ", cursorOffset=" + this.cursorOffset + ", transformedText=" + this.transformedText + ", textLayoutResultProvider=" + this.textLayoutResultProvider + ')';
    }
}
