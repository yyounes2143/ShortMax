package androidx.compose.ui.platform;

import android.content.Context;
import android.util.AttributeSet;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeView.android.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ComposeView extends AbstractComposeView {
    public static final int $stable = 8;
    @NotNull
    private final MutableState<Function2<Composer, Integer, Unit>> content;
    private boolean shouldCreateCompositionOnAttachedToWindow;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComposeView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    @Composable
    public void Content(@Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(420213850);
        Function2<Composer, Integer, Unit> value = this.content.getValue();
        if (value != null) {
            value.invoke(startRestartGroup, 0);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.ComposeView$Content$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i11) {
                    ComposeView.this.Content(composer2, i10 | 1);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @NotNull
    public CharSequence getAccessibilityClassName() {
        String name = ComposeView.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "javaClass.name");
        return name;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    public final void setContent(@NotNull Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.shouldCreateCompositionOnAttachedToWindow = true;
        this.content.setValue(content);
        if (isAttachedToWindow()) {
            createComposition();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ComposeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ComposeView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        MutableState<Function2<Composer, Integer, Unit>> mutableStateOf$default;
        Intrinsics.checkNotNullParameter(context, "context");
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.content = mutableStateOf$default;
    }

    protected static /* synthetic */ void getShouldCreateCompositionOnAttachedToWindow$annotations() {
    }
}
