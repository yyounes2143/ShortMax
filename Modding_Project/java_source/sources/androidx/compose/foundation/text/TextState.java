package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.Selectable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoreText.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextState {
    @NotNull
    private final MutableState drawScopeInvalidation$delegate;
    @Nullable
    private LayoutCoordinates layoutCoordinates;
    @Nullable
    private TextLayoutResult layoutResult;
    @NotNull
    private Function1<? super TextLayoutResult, Unit> onTextLayout;
    private long previousGlobalPosition;
    @Nullable
    private Selectable selectable;
    private final long selectableId;
    private long selectionBackgroundColor;
    @NotNull
    private TextDelegate textDelegate;

    public TextState(@NotNull TextDelegate textDelegate, long j10) {
        Intrinsics.checkNotNullParameter(textDelegate, "textDelegate");
        this.textDelegate = textDelegate;
        this.selectableId = j10;
        this.onTextLayout = new Function1<TextLayoutResult, Unit>() { // from class: androidx.compose.foundation.text.TextState$onTextLayout$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TextLayoutResult it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextLayoutResult textLayoutResult) {
                invoke2(textLayoutResult);
                return Unit.f60915a;
            }
        };
        this.previousGlobalPosition = Offset.Companion.m1622getZeroF1C5BW0();
        this.selectionBackgroundColor = Color.Companion.m1878getUnspecified0d7_KjU();
        this.drawScopeInvalidation$delegate = SnapshotStateKt.mutableStateOf(Unit.f60915a, SnapshotStateKt.neverEqualPolicy());
    }

    private final void setDrawScopeInvalidation(Unit unit) {
        this.drawScopeInvalidation$delegate.setValue(unit);
    }

    @NotNull
    public final Unit getDrawScopeInvalidation() {
        this.drawScopeInvalidation$delegate.getValue();
        return Unit.f60915a;
    }

    @Nullable
    public final LayoutCoordinates getLayoutCoordinates() {
        return this.layoutCoordinates;
    }

    @Nullable
    public final TextLayoutResult getLayoutResult() {
        return this.layoutResult;
    }

    @NotNull
    public final Function1<TextLayoutResult, Unit> getOnTextLayout() {
        return this.onTextLayout;
    }

    /* renamed from: getPreviousGlobalPosition-F1C5BW0  reason: not valid java name */
    public final long m800getPreviousGlobalPositionF1C5BW0() {
        return this.previousGlobalPosition;
    }

    @Nullable
    public final Selectable getSelectable() {
        return this.selectable;
    }

    public final long getSelectableId() {
        return this.selectableId;
    }

    /* renamed from: getSelectionBackgroundColor-0d7_KjU  reason: not valid java name */
    public final long m801getSelectionBackgroundColor0d7_KjU() {
        return this.selectionBackgroundColor;
    }

    @NotNull
    public final TextDelegate getTextDelegate() {
        return this.textDelegate;
    }

    public final void setLayoutCoordinates(@Nullable LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates = layoutCoordinates;
    }

    public final void setLayoutResult(@Nullable TextLayoutResult textLayoutResult) {
        setDrawScopeInvalidation(Unit.f60915a);
        this.layoutResult = textLayoutResult;
    }

    public final void setOnTextLayout(@NotNull Function1<? super TextLayoutResult, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onTextLayout = function1;
    }

    /* renamed from: setPreviousGlobalPosition-k-4lQ0M  reason: not valid java name */
    public final void m802setPreviousGlobalPositionk4lQ0M(long j10) {
        this.previousGlobalPosition = j10;
    }

    public final void setSelectable(@Nullable Selectable selectable) {
        this.selectable = selectable;
    }

    /* renamed from: setSelectionBackgroundColor-8_81llA  reason: not valid java name */
    public final void m803setSelectionBackgroundColor8_81llA(long j10) {
        this.selectionBackgroundColor = j10;
    }

    public final void setTextDelegate(@NotNull TextDelegate textDelegate) {
        Intrinsics.checkNotNullParameter(textDelegate, "<set-?>");
        this.textDelegate = textDelegate;
    }
}
