package androidx.compose.ui.platform;

import android.content.Context;
import android.os.IBinder;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.InternalComposeUiApi;
import androidx.compose.ui.node.Owner;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComposeView.android.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class AbstractComposeView extends ViewGroup {
    public static final int $stable = 8;
    @Nullable
    private WeakReference<CompositionContext> cachedViewTreeCompositionContext;
    @Nullable
    private Composition composition;
    private boolean creatingComposition;
    @Nullable
    private Function0<Unit> disposeViewCompositionStrategy;
    @Nullable
    private CompositionContext parentContext;
    @Nullable
    private IBinder previousAttachedWindowToken;
    private boolean showLayoutBounds;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AbstractComposeView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final CompositionContext cacheIfAlive(CompositionContext compositionContext) {
        CompositionContext compositionContext2;
        if (isAlive(compositionContext)) {
            compositionContext2 = compositionContext;
        } else {
            compositionContext2 = null;
        }
        if (compositionContext2 != null) {
            this.cachedViewTreeCompositionContext = new WeakReference<>(compositionContext2);
        }
        return compositionContext;
    }

    private final void checkAddView() {
        if (this.creatingComposition) {
            return;
        }
        throw new UnsupportedOperationException("Cannot add views to " + getClass().getSimpleName() + "; only Compose content is supported");
    }

    private final void ensureCompositionCreated() {
        if (this.composition == null) {
            try {
                this.creatingComposition = true;
                this.composition = Wrapper_androidKt.setContent(this, resolveParentCompositionContext(), ComposableLambdaKt.composableLambdaInstance(-656146368, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.platform.AbstractComposeView$ensureCompositionCreated$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.f60915a;
                    }

                    @Composable
                    public final void invoke(@Nullable Composer composer, int i10) {
                        if ((i10 & 11) == 2 && composer.getSkipping()) {
                            composer.skipToGroupEnd();
                        } else {
                            AbstractComposeView.this.Content(composer, 8);
                        }
                    }
                }));
            } finally {
                this.creatingComposition = false;
            }
        }
    }

    private final boolean isAlive(CompositionContext compositionContext) {
        if ((compositionContext instanceof Recomposer) && ((Recomposer) compositionContext).getCurrentState().getValue().compareTo(Recomposer.State.ShuttingDown) <= 0) {
            return false;
        }
        return true;
    }

    private final CompositionContext resolveParentCompositionContext() {
        CompositionContext compositionContext;
        CompositionContext compositionContext2;
        CompositionContext compositionContext3 = this.parentContext;
        if (compositionContext3 == null) {
            CompositionContext findViewTreeCompositionContext = WindowRecomposer_androidKt.findViewTreeCompositionContext(this);
            CompositionContext compositionContext4 = null;
            if (findViewTreeCompositionContext != null) {
                compositionContext = cacheIfAlive(findViewTreeCompositionContext);
            } else {
                compositionContext = null;
            }
            if (compositionContext == null) {
                WeakReference<CompositionContext> weakReference = this.cachedViewTreeCompositionContext;
                if (weakReference != null && (compositionContext2 = weakReference.get()) != null && isAlive(compositionContext2)) {
                    compositionContext4 = compositionContext2;
                }
                CompositionContext compositionContext5 = compositionContext4;
                if (compositionContext5 == null) {
                    return cacheIfAlive(WindowRecomposer_androidKt.getWindowRecomposer(this));
                }
                return compositionContext5;
            }
            return compositionContext;
        }
        return compositionContext3;
    }

    private final void setParentContext(CompositionContext compositionContext) {
        if (this.parentContext != compositionContext) {
            this.parentContext = compositionContext;
            if (compositionContext != null) {
                this.cachedViewTreeCompositionContext = null;
            }
            Composition composition = this.composition;
            if (composition != null) {
                composition.dispose();
                this.composition = null;
                if (isAttachedToWindow()) {
                    ensureCompositionCreated();
                }
            }
        }
    }

    private final void setPreviousAttachedWindowToken(IBinder iBinder) {
        if (this.previousAttachedWindowToken != iBinder) {
            this.previousAttachedWindowToken = iBinder;
            this.cachedViewTreeCompositionContext = null;
        }
    }

    @Composable
    public abstract void Content(@Nullable Composer composer, int i10);

    @Override // android.view.ViewGroup
    public void addView(@Nullable View view) {
        checkAddView();
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(@Nullable View view, int i10, @Nullable ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        return super.addViewInLayout(view, i10, layoutParams);
    }

    public final void createComposition() {
        if (this.parentContext == null && !isAttachedToWindow()) {
            throw new IllegalStateException("createComposition requires either a parent reference or the View to be attachedto a window. Attach the View or call setParentCompositionReference.");
        }
        ensureCompositionCreated();
    }

    public final void disposeComposition() {
        Composition composition = this.composition;
        if (composition != null) {
            composition.dispose();
        }
        this.composition = null;
        requestLayout();
    }

    public final boolean getHasComposition() {
        if (this.composition != null) {
            return true;
        }
        return false;
    }

    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return true;
    }

    public final boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    public void internalOnLayout$ui_release(boolean z10, int i10, int i11, int i12, int i13) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.layout(getPaddingLeft(), getPaddingTop(), (i12 - i10) - getPaddingRight(), (i13 - i11) - getPaddingBottom());
        }
    }

    public void internalOnMeasure$ui_release(int i10, int i11) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            super.onMeasure(i10, i11);
            return;
        }
        childAt.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i10) - getPaddingLeft()) - getPaddingRight()), View.MeasureSpec.getMode(i10)), View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i11) - getPaddingTop()) - getPaddingBottom()), View.MeasureSpec.getMode(i11)));
        setMeasuredDimension(childAt.getMeasuredWidth() + getPaddingLeft() + getPaddingRight(), childAt.getMeasuredHeight() + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setPreviousAttachedWindowToken(getWindowToken());
        if (getShouldCreateCompositionOnAttachedToWindow()) {
            ensureCompositionCreated();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        internalOnLayout$ui_release(z10, i10, i11, i12, i13);
    }

    @Override // android.view.View
    protected final void onMeasure(int i10, int i11) {
        ensureCompositionCreated();
        internalOnMeasure$ui_release(i10, i11);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.setLayoutDirection(i10);
        }
    }

    public final void setParentCompositionContext(@Nullable CompositionContext compositionContext) {
        setParentContext(compositionContext);
    }

    public final void setShowLayoutBounds(boolean z10) {
        this.showLayoutBounds = z10;
        View childAt = getChildAt(0);
        if (childAt != null) {
            ((Owner) childAt).setShowLayoutBounds(z10);
        }
    }

    public final void setViewCompositionStrategy(@NotNull ViewCompositionStrategy strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Function0<Unit> function0 = this.disposeViewCompositionStrategy;
        if (function0 != null) {
            function0.invoke();
        }
        this.disposeViewCompositionStrategy = strategy.installFor(this);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AbstractComposeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ AbstractComposeView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    @Override // android.view.ViewGroup
    public void addView(@Nullable View view, int i10) {
        checkAddView();
        super.addView(view, i10);
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(@Nullable View view, int i10, @Nullable ViewGroup.LayoutParams layoutParams, boolean z10) {
        checkAddView();
        return super.addViewInLayout(view, i10, layoutParams, z10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractComposeView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        setClipChildren(false);
        setClipToPadding(false);
        this.disposeViewCompositionStrategy = ViewCompositionStrategy.Companion.getDefault().installFor(this);
    }

    @Override // android.view.ViewGroup
    public void addView(@Nullable View view, int i10, int i11) {
        checkAddView();
        super.addView(view, i10, i11);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(@Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        super.addView(view, layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(@Nullable View view, int i10, @Nullable ViewGroup.LayoutParams layoutParams) {
        checkAddView();
        super.addView(view, i10, layoutParams);
    }

    private static /* synthetic */ void getDisposeViewCompositionStrategy$annotations() {
    }

    @InternalComposeUiApi
    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }
}
