package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import at.n;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldScroll.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldScrollKt {

    /* compiled from: TextFieldScroll.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            iArr[Orientation.Vertical.ordinal()] = 1;
            iArr[Orientation.Horizontal.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final /* synthetic */ Rect access$getCursorRectInScroller(Density density, int i10, TransformedText transformedText, TextLayoutResult textLayoutResult, boolean z10, int i11) {
        return getCursorRectInScroller(density, i10, transformedText, textLayoutResult, z10, i11);
    }

    public static final Rect getCursorRectInScroller(Density density, int i10, TransformedText transformedText, TextLayoutResult textLayoutResult, boolean z10, int i11) {
        Rect zero;
        float left;
        float left2;
        if (textLayoutResult == null || (zero = textLayoutResult.getCursorRect(transformedText.getOffsetMapping().originalToTransformed(i10))) == null) {
            zero = Rect.Companion.getZero();
        }
        Rect rect = zero;
        int mo336roundToPx0680j_4 = density.mo336roundToPx0680j_4(TextFieldCursorKt.getDefaultCursorThickness());
        if (z10) {
            left = (i11 - rect.getLeft()) - mo336roundToPx0680j_4;
        } else {
            left = rect.getLeft();
        }
        float f10 = left;
        if (z10) {
            left2 = i11 - rect.getLeft();
        } else {
            left2 = rect.getLeft() + mo336roundToPx0680j_4;
        }
        return Rect.copy$default(rect, f10, 0.0f, left2, 0.0f, 10, null);
    }

    @NotNull
    public static final Modifier textFieldScroll(@NotNull Modifier modifier, @NotNull TextFieldScrollerPosition scrollerPosition, @NotNull TextFieldValue textFieldValue, @NotNull VisualTransformation visualTransformation, @NotNull Function0<TextLayoutResultProxy> textLayoutResultProvider) {
        Modifier verticalScrollLayoutModifier;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(scrollerPosition, "scrollerPosition");
        Intrinsics.checkNotNullParameter(textFieldValue, "textFieldValue");
        Intrinsics.checkNotNullParameter(visualTransformation, "visualTransformation");
        Intrinsics.checkNotNullParameter(textLayoutResultProvider, "textLayoutResultProvider");
        Orientation orientation = scrollerPosition.getOrientation();
        int m783getOffsetToFollow5zctL8 = scrollerPosition.m783getOffsetToFollow5zctL8(textFieldValue.m3874getSelectiond9O1mEE());
        scrollerPosition.m785setPreviousSelection5zctL8(textFieldValue.m3874getSelectiond9O1mEE());
        TransformedText filter = visualTransformation.filter(textFieldValue.getAnnotatedString());
        int i10 = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                verticalScrollLayoutModifier = new HorizontalScrollLayoutModifier(scrollerPosition, m783getOffsetToFollow5zctL8, filter, textLayoutResultProvider);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            verticalScrollLayoutModifier = new VerticalScrollLayoutModifier(scrollerPosition, m783getOffsetToFollow5zctL8, filter, textLayoutResultProvider);
        }
        return ClipKt.clipToBounds(modifier).then(verticalScrollLayoutModifier);
    }

    @NotNull
    public static final Modifier textFieldScrollable(@NotNull Modifier modifier, @NotNull final TextFieldScrollerPosition scrollerPosition, @Nullable final MutableInteractionSource mutableInteractionSource, final boolean z10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(scrollerPosition, "scrollerPosition");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("textFieldScrollable");
                    inspectorInfo.getProperties().set("scrollerPosition", TextFieldScrollerPosition.this);
                    inspectorInfo.getProperties().set("interactionSource", mutableInteractionSource);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(805428266);
                boolean z11 = TextFieldScrollerPosition.this.getOrientation() == Orientation.Vertical || !(composer.consume(CompositionLocalsKt.getLocalLayoutDirection()) == LayoutDirection.Rtl);
                final TextFieldScrollerPosition textFieldScrollerPosition = TextFieldScrollerPosition.this;
                Modifier scrollable$default = ScrollableKt.scrollable$default(Modifier.Companion, ScrollableStateKt.rememberScrollableState(new Function1<Float, Float>() { // from class: androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$controller$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Float invoke(Float f10) {
                        return invoke(f10.floatValue());
                    }

                    @NotNull
                    public final Float invoke(float f10) {
                        float offset = TextFieldScrollerPosition.this.getOffset() + f10;
                        if (offset > TextFieldScrollerPosition.this.getMaximum()) {
                            f10 = TextFieldScrollerPosition.this.getMaximum() - TextFieldScrollerPosition.this.getOffset();
                        } else if (offset < 0.0f) {
                            f10 = -TextFieldScrollerPosition.this.getOffset();
                        }
                        TextFieldScrollerPosition textFieldScrollerPosition2 = TextFieldScrollerPosition.this;
                        textFieldScrollerPosition2.setOffset(textFieldScrollerPosition2.getOffset() + f10);
                        return Float.valueOf(f10);
                    }
                }, composer, 0), TextFieldScrollerPosition.this.getOrientation(), z10 && TextFieldScrollerPosition.this.getMaximum() != 0.0f, z11, null, mutableInteractionSource, 16, null);
                composer.endReplaceableGroup();
                return scrollable$default;
            }
        });
    }

    public static /* synthetic */ Modifier textFieldScrollable$default(Modifier modifier, TextFieldScrollerPosition textFieldScrollerPosition, MutableInteractionSource mutableInteractionSource, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            mutableInteractionSource = null;
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        return textFieldScrollable(modifier, textFieldScrollerPosition, mutableInteractionSource, z10);
    }
}
