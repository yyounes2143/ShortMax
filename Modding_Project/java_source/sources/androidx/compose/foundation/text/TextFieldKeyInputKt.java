package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldKeyInput.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldKeyInputKt {
    @NotNull
    public static final Modifier textFieldKeyInput(@NotNull Modifier modifier, @NotNull final TextFieldState state, @NotNull final TextFieldSelectionManager manager, @NotNull final TextFieldValue value, @NotNull final Function1<? super TextFieldValue, Unit> onValueChange, final boolean z10, final boolean z11, @NotNull final OffsetMapping offsetMapping, @NotNull final UndoManager undoManager) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        Intrinsics.checkNotNullParameter(offsetMapping, "offsetMapping");
        Intrinsics.checkNotNullParameter(undoManager, "undoManager");
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.text.TextFieldKeyInputKt$textFieldKeyInput$2

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: TextFieldKeyInput.kt */
            @Metadata
            /* renamed from: androidx.compose.foundation.text.TextFieldKeyInputKt$textFieldKeyInput$2$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<KeyEvent, Boolean> {
                AnonymousClass1(Object obj) {
                    super(1, obj, TextFieldKeyInput.class, "process", "process-ZmokQxo(Landroid/view/KeyEvent;)Z", 0);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                    return m779invokeZmokQxo(keyEvent.m3065unboximpl());
                }

                @NotNull
                /* renamed from: invoke-ZmokQxo  reason: not valid java name */
                public final Boolean m779invokeZmokQxo(@NotNull android.view.KeyEvent p02) {
                    Intrinsics.checkNotNullParameter(p02, "p0");
                    return Boolean.valueOf(((TextFieldKeyInput) this.receiver).m778processZmokQxo(p02));
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                composer.startReplaceableGroup(58482146);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new TextPreparedSelectionState();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                Modifier onKeyEvent = KeyInputModifierKt.onKeyEvent(Modifier.Companion, new AnonymousClass1(new TextFieldKeyInput(TextFieldState.this, manager, value, z10, z11, (TextPreparedSelectionState) rememberedValue, offsetMapping, undoManager, null, onValueChange, 256, null)));
                composer.endReplaceableGroup();
                return onKeyEvent;
            }
        }, 1, null);
    }

    public static /* synthetic */ Modifier textFieldKeyInput$default(Modifier modifier, TextFieldState textFieldState, TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, Function1 function1, boolean z10, boolean z11, OffsetMapping offsetMapping, UndoManager undoManager, int i10, Object obj) {
        TextFieldKeyInputKt$textFieldKeyInput$1 textFieldKeyInputKt$textFieldKeyInput$1;
        if ((i10 & 8) != 0) {
            textFieldKeyInputKt$textFieldKeyInput$1 = new Function1<TextFieldValue, Unit>() { // from class: androidx.compose.foundation.text.TextFieldKeyInputKt$textFieldKeyInput$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull TextFieldValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(TextFieldValue textFieldValue2) {
                    invoke2(textFieldValue2);
                    return Unit.f60915a;
                }
            };
        } else {
            textFieldKeyInputKt$textFieldKeyInput$1 = function1;
        }
        return textFieldKeyInput(modifier, textFieldState, textFieldSelectionManager, textFieldValue, textFieldKeyInputKt$textFieldKeyInput$1, z10, z11, offsetMapping, undoManager);
    }
}
