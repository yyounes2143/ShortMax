package androidx.compose.foundation.text;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextPainter;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldDelegate.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldDelegate {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: TextFieldDelegate.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: layout-_EkL_-Y$foundation_release$default  reason: not valid java name */
        public static /* synthetic */ Triple m773layout_EkL_Y$foundation_release$default(Companion companion, TextDelegate textDelegate, long j10, LayoutDirection layoutDirection, TextLayoutResult textLayoutResult, int i10, Object obj) {
            if ((i10 & 8) != 0) {
                textLayoutResult = null;
            }
            return companion.m775layout_EkL_Y$foundation_release(textDelegate, j10, layoutDirection, textLayoutResult);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void onEditCommand(List<? extends EditCommand> list, EditProcessor editProcessor, Function1<? super TextFieldValue, Unit> function1) {
            function1.invoke(editProcessor.apply(list));
        }

        @NotNull
        /* renamed from: applyCompositionDecoration-72CqOWE  reason: not valid java name */
        public final TransformedText m774applyCompositionDecoration72CqOWE(long j10, @NotNull TransformedText transformed) {
            Intrinsics.checkNotNullParameter(transformed, "transformed");
            AnnotatedString.Builder builder = new AnnotatedString.Builder(transformed.getText());
            builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.Companion.getUnderline(), (Shadow) null, 12287, (DefaultConstructorMarker) null), transformed.getOffsetMapping().originalToTransformed(TextRange.m3697getStartimpl(j10)), transformed.getOffsetMapping().originalToTransformed(TextRange.m3692getEndimpl(j10)));
            return new TransformedText(builder.toAnnotatedString(), transformed.getOffsetMapping());
        }

        public final void draw$foundation_release(@NotNull Canvas canvas, @NotNull TextFieldValue value, @NotNull OffsetMapping offsetMapping, @NotNull TextLayoutResult textLayoutResult, @NotNull Paint selectionPaint) {
            int originalToTransformed;
            int originalToTransformed2;
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(offsetMapping, "offsetMapping");
            Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
            Intrinsics.checkNotNullParameter(selectionPaint, "selectionPaint");
            if (!TextRange.m3691getCollapsedimpl(value.m3874getSelectiond9O1mEE()) && (originalToTransformed = offsetMapping.originalToTransformed(TextRange.m3695getMinimpl(value.m3874getSelectiond9O1mEE()))) != (originalToTransformed2 = offsetMapping.originalToTransformed(TextRange.m3694getMaximpl(value.m3874getSelectiond9O1mEE())))) {
                canvas.drawPath(textLayoutResult.getPathForRange(originalToTransformed, originalToTransformed2), selectionPaint);
            }
            TextPainter.INSTANCE.paint(canvas, textLayoutResult);
        }

        @NotNull
        /* renamed from: layout-_EkL_-Y$foundation_release  reason: not valid java name */
        public final Triple<Integer, Integer, TextLayoutResult> m775layout_EkL_Y$foundation_release(@NotNull TextDelegate textDelegate, long j10, @NotNull LayoutDirection layoutDirection, @Nullable TextLayoutResult textLayoutResult) {
            Intrinsics.checkNotNullParameter(textDelegate, "textDelegate");
            Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
            TextLayoutResult m770layoutNN6EwU = textDelegate.m770layoutNN6EwU(j10, layoutDirection, textLayoutResult);
            return new Triple<>(Integer.valueOf(IntSize.m4209getWidthimpl(m770layoutNN6EwU.m3683getSizeYbymL2g())), Integer.valueOf(IntSize.m4208getHeightimpl(m770layoutNN6EwU.m3683getSizeYbymL2g())), m770layoutNN6EwU);
        }

        public final void onBlur$foundation_release(@NotNull TextInputSession textInputSession, @NotNull EditProcessor editProcessor, @NotNull Function1<? super TextFieldValue, Unit> onValueChange) {
            Intrinsics.checkNotNullParameter(textInputSession, "textInputSession");
            Intrinsics.checkNotNullParameter(editProcessor, "editProcessor");
            Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
            onValueChange.invoke(TextFieldValue.m3869copy3r_uNRQ$default(editProcessor.toTextFieldValue(), (AnnotatedString) null, 0L, (TextRange) null, 3, (Object) null));
            textInputSession.dispose();
        }

        @NotNull
        public final TextInputSession onFocus$foundation_release(@NotNull TextInputService textInputService, @NotNull TextFieldValue value, @NotNull EditProcessor editProcessor, @NotNull ImeOptions imeOptions, @NotNull Function1<? super TextFieldValue, Unit> onValueChange, @NotNull Function1<? super ImeAction, Unit> onImeActionPerformed) {
            Intrinsics.checkNotNullParameter(textInputService, "textInputService");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(editProcessor, "editProcessor");
            Intrinsics.checkNotNullParameter(imeOptions, "imeOptions");
            Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
            Intrinsics.checkNotNullParameter(onImeActionPerformed, "onImeActionPerformed");
            return restartInput$foundation_release(textInputService, value, editProcessor, imeOptions, onValueChange, onImeActionPerformed);
        }

        @NotNull
        public final TextInputSession restartInput$foundation_release(@NotNull TextInputService textInputService, @NotNull TextFieldValue value, @NotNull final EditProcessor editProcessor, @NotNull ImeOptions imeOptions, @NotNull final Function1<? super TextFieldValue, Unit> onValueChange, @NotNull Function1<? super ImeAction, Unit> onImeActionPerformed) {
            Intrinsics.checkNotNullParameter(textInputService, "textInputService");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(editProcessor, "editProcessor");
            Intrinsics.checkNotNullParameter(imeOptions, "imeOptions");
            Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
            Intrinsics.checkNotNullParameter(onImeActionPerformed, "onImeActionPerformed");
            return textInputService.startInput(value, imeOptions, new Function1<List<? extends EditCommand>, Unit>() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$restartInput$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditCommand> list) {
                    invoke2(list);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull List<? extends EditCommand> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    TextFieldDelegate.Companion.onEditCommand(it, EditProcessor.this, onValueChange);
                }
            }, onImeActionPerformed);
        }

        /* renamed from: setCursorOffset-ULxng0E$foundation_release  reason: not valid java name */
        public final void m776setCursorOffsetULxng0E$foundation_release(long j10, @NotNull TextLayoutResultProxy textLayoutResult, @NotNull EditProcessor editProcessor, @NotNull OffsetMapping offsetMapping, @NotNull Function1<? super TextFieldValue, Unit> onValueChange) {
            Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
            Intrinsics.checkNotNullParameter(editProcessor, "editProcessor");
            Intrinsics.checkNotNullParameter(offsetMapping, "offsetMapping");
            Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
            onValueChange.invoke(TextFieldValue.m3869copy3r_uNRQ$default(editProcessor.toTextFieldValue(), (AnnotatedString) null, TextRangeKt.TextRange(offsetMapping.transformedToOriginal(TextLayoutResultProxy.m794getOffsetForPosition3MmeM6k$default(textLayoutResult, j10, false, 2, null))), (TextRange) null, 5, (Object) null));
        }

        private Companion() {
        }
    }

    private static final void onEditCommand(List<? extends EditCommand> list, EditProcessor editProcessor, Function1<? super TextFieldValue, Unit> function1) {
        Companion.onEditCommand(list, editProcessor, function1);
    }
}
