package androidx.compose.ui.window;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.R;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import bt.a;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPopup.android.kt */
@Metadata
@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public final class PopupLayout extends AbstractComposeView implements ViewRootForInspector {
    @NotNull
    private final State canCalculatePosition$delegate;
    @NotNull
    private final View composeView;
    @NotNull
    private final MutableState content$delegate;
    @NotNull
    private final int[] locationOnScreen;
    private final float maxSupportedElevation;
    @Nullable
    private Function0<Unit> onDismissRequest;
    @NotNull
    private final WindowManager.LayoutParams params;
    @Nullable
    private IntRect parentBounds;
    @NotNull
    private final MutableState parentLayoutCoordinates$delegate;
    @NotNull
    private LayoutDirection parentLayoutDirection;
    @NotNull
    private final MutableState popupContentSize$delegate;
    @NotNull
    private final PopupLayoutHelper popupLayoutHelper;
    @NotNull
    private PopupPositionProvider positionProvider;
    @NotNull
    private final Rect previousWindowVisibleFrame;
    @NotNull
    private PopupProperties properties;
    private boolean shouldCreateCompositionOnAttachedToWindow;
    @NotNull
    private String testTag;
    @NotNull
    private final WindowManager windowManager;

    /* compiled from: AndroidPopup.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ PopupLayout(kotlin.jvm.functions.Function0 r11, androidx.compose.ui.window.PopupProperties r12, java.lang.String r13, android.view.View r14, androidx.compose.ui.unit.Density r15, androidx.compose.ui.window.PopupPositionProvider r16, java.util.UUID r17, androidx.compose.ui.window.PopupLayoutHelper r18, int r19, kotlin.jvm.internal.DefaultConstructorMarker r20) {
        /*
            r10 = this;
            r0 = r19
            r0 = r0 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto L19
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto L12
            androidx.compose.ui.window.PopupLayoutHelperImpl29 r0 = new androidx.compose.ui.window.PopupLayoutHelperImpl29
            r0.<init>()
            goto L17
        L12:
            androidx.compose.ui.window.PopupLayoutHelperImpl r0 = new androidx.compose.ui.window.PopupLayoutHelperImpl
            r0.<init>()
        L17:
            r9 = r0
            goto L1b
        L19:
            r9 = r18
        L1b:
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r15
            r7 = r16
            r8 = r17
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.PopupLayout.<init>(kotlin.jvm.functions.Function0, androidx.compose.ui.window.PopupProperties, java.lang.String, android.view.View, androidx.compose.ui.unit.Density, androidx.compose.ui.window.PopupPositionProvider, java.util.UUID, androidx.compose.ui.window.PopupLayoutHelper, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    private final void applyNewFlags(int i10) {
        WindowManager.LayoutParams layoutParams = this.params;
        layoutParams.flags = i10;
        this.popupLayoutHelper.updateViewLayout(this.windowManager, this, layoutParams);
    }

    private final WindowManager.LayoutParams createLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        layoutParams.flags = (layoutParams.flags & (-8552473)) | 262144;
        layoutParams.type = 1002;
        layoutParams.token = this.composeView.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(this.composeView.getContext().getResources().getString(R.string.default_popup_window_title));
        return layoutParams;
    }

    private final Function2<Composer, Integer, Unit> getContent() {
        return (Function2) this.content$delegate.getValue();
    }

    private final int getDisplayHeight() {
        return a.c(getContext().getResources().getConfiguration().screenHeightDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final int getDisplayWidth() {
        return a.c(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getParentLayoutCoordinates() {
        return (LayoutCoordinates) this.parentLayoutCoordinates$delegate.getValue();
    }

    private final void setClippingEnabled(boolean z10) {
        int i10;
        if (z10) {
            i10 = this.params.flags & (-513);
        } else {
            i10 = this.params.flags | 512;
        }
        applyNewFlags(i10);
    }

    private final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.content$delegate.setValue(function2);
    }

    private final void setIsFocusable(boolean z10) {
        int i10;
        if (!z10) {
            i10 = this.params.flags | 8;
        } else {
            i10 = this.params.flags & (-9);
        }
        applyNewFlags(i10);
    }

    private final void setParentLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this.parentLayoutCoordinates$delegate.setValue(layoutCoordinates);
    }

    private final void setSecurePolicy(SecureFlagPolicy secureFlagPolicy) {
        int i10;
        if (SecureFlagPolicy_androidKt.shouldApplySecureFlag(secureFlagPolicy, AndroidPopup_androidKt.isFlagSecureEnabled(this.composeView))) {
            i10 = this.params.flags | 8192;
        } else {
            i10 = this.params.flags & (-8193);
        }
        applyNewFlags(i10);
    }

    private final void superSetLayoutDirection(LayoutDirection layoutDirection) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i11 = 1;
        if (i10 != 1) {
            if (i10 != 2) {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            i11 = 0;
        }
        super.setLayoutDirection(i11);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    @Composable
    @UiComposable
    public void Content(@Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-857613600);
        getContent().invoke(startRestartGroup, 0);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.PopupLayout$Content$4
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
                    PopupLayout.this.Content(composer2, i10 | 1);
                }
            });
        }
    }

    public final void dismiss() {
        ViewTreeLifecycleOwner.set(this, null);
        this.windowManager.removeViewImmediate(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(@NotNull KeyEvent event) {
        KeyEvent.DispatcherState keyDispatcherState;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getKeyCode() == 4 && this.properties.getDismissOnBackPress()) {
            if (getKeyDispatcherState() == null) {
                return super.dispatchKeyEvent(event);
            }
            if (event.getAction() == 0 && event.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.startTracking(event, this);
                }
                return true;
            } else if (event.getAction() == 1 && (keyDispatcherState = getKeyDispatcherState()) != null && keyDispatcherState.isTracking(event) && !event.isCanceled()) {
                Function0<Unit> function0 = this.onDismissRequest;
                if (function0 != null) {
                    function0.invoke();
                }
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.canCalculatePosition$delegate.getValue()).booleanValue();
    }

    @NotNull
    public final WindowManager.LayoutParams getParams$ui_release() {
        return this.params;
    }

    @NotNull
    public final LayoutDirection getParentLayoutDirection() {
        return this.parentLayoutDirection;
    }

    @Nullable
    /* renamed from: getPopupContentSize-bOM6tXw  reason: not valid java name */
    public final IntSize m4297getPopupContentSizebOM6tXw() {
        return (IntSize) this.popupContentSize$delegate.getValue();
    }

    @NotNull
    public final PopupPositionProvider getPositionProvider() {
        return this.positionProvider;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    @NotNull
    public final String getTestTag() {
        return this.testTag;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnLayout$ui_release(boolean z10, int i10, int i11, int i12, int i13) {
        super.internalOnLayout$ui_release(z10, i10, i11, i12, i13);
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        this.params.width = childAt.getMeasuredWidth();
        this.params.height = childAt.getMeasuredHeight();
        this.popupLayoutHelper.updateViewLayout(this.windowManager, this, this.params);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnMeasure$ui_release(int i10, int i11) {
        if (this.properties.getUsePlatformDefaultWidth()) {
            super.internalOnMeasure$ui_release(i10, i11);
        } else {
            super.internalOnMeasure$ui_release(View.MeasureSpec.makeMeasureSpec(getDisplayWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getDisplayHeight(), Integer.MIN_VALUE));
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@Nullable MotionEvent motionEvent) {
        if (!this.properties.getDismissOnClickOutside()) {
            return super.onTouchEvent(motionEvent);
        }
        if (motionEvent != null && motionEvent.getAction() == 0 && (motionEvent.getX() < 0.0f || motionEvent.getX() >= getWidth() || motionEvent.getY() < 0.0f || motionEvent.getY() >= getHeight())) {
            Function0<Unit> function0 = this.onDismissRequest;
            if (function0 != null) {
                function0.invoke();
            }
            return true;
        } else if (motionEvent != null && motionEvent.getAction() == 4) {
            Function0<Unit> function02 = this.onDismissRequest;
            if (function02 != null) {
                function02.invoke();
            }
            return true;
        } else {
            return super.onTouchEvent(motionEvent);
        }
    }

    public final void pollForLocationOnScreenChange() {
        int[] iArr = this.locationOnScreen;
        int i10 = iArr[0];
        int i11 = iArr[1];
        this.composeView.getLocationOnScreen(iArr);
        int[] iArr2 = this.locationOnScreen;
        if (i10 != iArr2[0] || i11 != iArr2[1]) {
            updateParentBounds$ui_release();
        }
    }

    public final void setParentLayoutDirection(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.parentLayoutDirection = layoutDirection;
    }

    /* renamed from: setPopupContentSize-fhxjrPA  reason: not valid java name */
    public final void m4298setPopupContentSizefhxjrPA(@Nullable IntSize intSize) {
        this.popupContentSize$delegate.setValue(intSize);
    }

    public final void setPositionProvider(@NotNull PopupPositionProvider popupPositionProvider) {
        Intrinsics.checkNotNullParameter(popupPositionProvider, "<set-?>");
        this.positionProvider = popupPositionProvider;
    }

    public final void setTestTag(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.testTag = str;
    }

    public final void show() {
        this.windowManager.addView(this, this.params);
    }

    public final void updateParameters(@Nullable Function0<Unit> function0, @NotNull PopupProperties properties, @NotNull String testTag, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(testTag, "testTag");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.onDismissRequest = function0;
        this.properties = properties;
        this.testTag = testTag;
        setIsFocusable(properties.getFocusable());
        setSecurePolicy(properties.getSecurePolicy());
        setClippingEnabled(properties.getClippingEnabled());
        superSetLayoutDirection(layoutDirection);
    }

    @VisibleForTesting(otherwise = 2)
    public final void updateParentBounds$ui_release() {
        LayoutCoordinates parentLayoutCoordinates = getParentLayoutCoordinates();
        if (parentLayoutCoordinates == null) {
            return;
        }
        long mo3337getSizeYbymL2g = parentLayoutCoordinates.mo3337getSizeYbymL2g();
        long positionInWindow = LayoutCoordinatesKt.positionInWindow(parentLayoutCoordinates);
        IntRect m4199IntRectVbeCjmY = IntRectKt.m4199IntRectVbeCjmY(IntOffsetKt.IntOffset(a.c(Offset.m1606getXimpl(positionInWindow)), a.c(Offset.m1607getYimpl(positionInWindow))), mo3337getSizeYbymL2g);
        if (!Intrinsics.areEqual(m4199IntRectVbeCjmY, this.parentBounds)) {
            this.parentBounds = m4199IntRectVbeCjmY;
            updatePosition();
        }
    }

    public final void updateParentLayoutCoordinates(@NotNull LayoutCoordinates parentLayoutCoordinates) {
        Intrinsics.checkNotNullParameter(parentLayoutCoordinates, "parentLayoutCoordinates");
        setParentLayoutCoordinates(parentLayoutCoordinates);
        updateParentBounds$ui_release();
    }

    public final void updatePosition() {
        IntSize m4297getPopupContentSizebOM6tXw;
        IntRect intRect = this.parentBounds;
        if (intRect != null && (m4297getPopupContentSizebOM6tXw = m4297getPopupContentSizebOM6tXw()) != null) {
            long m4213unboximpl = m4297getPopupContentSizebOM6tXw.m4213unboximpl();
            Rect rect = this.previousWindowVisibleFrame;
            this.popupLayoutHelper.getWindowVisibleDisplayFrame(this.composeView, rect);
            IntRect access$toIntBounds = AndroidPopup_androidKt.access$toIntBounds(rect);
            long IntSize = IntSizeKt.IntSize(access$toIntBounds.getWidth(), access$toIntBounds.getHeight());
            long mo809calculatePositionllwVHH4 = this.positionProvider.mo809calculatePositionllwVHH4(intRect, IntSize, this.parentLayoutDirection, m4213unboximpl);
            this.params.x = IntOffset.m4167getXimpl(mo809calculatePositionllwVHH4);
            this.params.y = IntOffset.m4168getYimpl(mo809calculatePositionllwVHH4);
            if (this.properties.getExcludeFromSystemGesture()) {
                this.popupLayoutHelper.setGestureExclusionRects(this, IntSize.m4209getWidthimpl(IntSize), IntSize.m4208getHeightimpl(IntSize));
            }
            this.popupLayoutHelper.updateViewLayout(this.windowManager, this, this.params);
        }
    }

    public final void setContent(@NotNull CompositionContext parent, @NotNull Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(content, "content");
        setParentCompositionContext(parent);
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PopupLayout(@org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r8, @org.jetbrains.annotations.NotNull androidx.compose.ui.window.PopupProperties r9, @org.jetbrains.annotations.NotNull java.lang.String r10, @org.jetbrains.annotations.NotNull android.view.View r11, @org.jetbrains.annotations.NotNull androidx.compose.ui.unit.Density r12, @org.jetbrains.annotations.NotNull androidx.compose.ui.window.PopupPositionProvider r13, @org.jetbrains.annotations.NotNull java.util.UUID r14, @org.jetbrains.annotations.NotNull androidx.compose.ui.window.PopupLayoutHelper r15) {
        /*
            r7 = this;
            java.lang.String r0 = "properties"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "testTag"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "composeView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "density"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "initialPositionProvider"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "popupId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "popupLayoutHelper"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            android.content.Context r2 = r11.getContext()
            java.lang.String r0 = "composeView.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r5 = 6
            r6 = 0
            r3 = 0
            r4 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.onDismissRequest = r8
            r7.properties = r9
            r7.testTag = r10
            r7.composeView = r11
            r7.popupLayoutHelper = r15
            android.content.Context r8 = r11.getContext()
            java.lang.String r9 = "window"
            java.lang.Object r8 = r8.getSystemService(r9)
            if (r8 == 0) goto Ld8
            android.view.WindowManager r8 = (android.view.WindowManager) r8
            r7.windowManager = r8
            android.view.WindowManager$LayoutParams r8 = r7.createLayoutParams()
            r7.params = r8
            r7.positionProvider = r13
            androidx.compose.ui.unit.LayoutDirection r8 = androidx.compose.ui.unit.LayoutDirection.Ltr
            r7.parentLayoutDirection = r8
            r8 = 0
            r9 = 2
            androidx.compose.runtime.MutableState r10 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.popupContentSize$delegate = r10
            androidx.compose.runtime.MutableState r10 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.parentLayoutCoordinates$delegate = r10
            androidx.compose.ui.window.PopupLayout$canCalculatePosition$2 r10 = new androidx.compose.ui.window.PopupLayout$canCalculatePosition$2
            r10.<init>()
            androidx.compose.runtime.State r10 = androidx.compose.runtime.SnapshotStateKt.derivedStateOf(r10)
            r7.canCalculatePosition$delegate = r10
            r10 = 30
            float r10 = (float) r10
            float r10 = androidx.compose.ui.unit.Dp.m4049constructorimpl(r10)
            r7.maxSupportedElevation = r10
            android.graphics.Rect r13 = new android.graphics.Rect
            r13.<init>()
            r7.previousWindowVisibleFrame = r13
            r13 = 16908290(0x1020002, float:2.3877235E-38)
            r7.setId(r13)
            androidx.lifecycle.LifecycleOwner r13 = androidx.lifecycle.ViewTreeLifecycleOwner.get(r11)
            androidx.lifecycle.ViewTreeLifecycleOwner.set(r7, r13)
            androidx.lifecycle.ViewModelStoreOwner r13 = androidx.lifecycle.ViewTreeViewModelStoreOwner.get(r11)
            androidx.lifecycle.ViewTreeViewModelStoreOwner.set(r7, r13)
            androidx.savedstate.SavedStateRegistryOwner r11 = androidx.savedstate.ViewTreeSavedStateRegistryOwner.get(r11)
            androidx.savedstate.ViewTreeSavedStateRegistryOwner.set(r7, r11)
            int r11 = androidx.compose.ui.R.id.compose_view_saveable_id_tag
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r15 = "Popup:"
            r13.append(r15)
            r13.append(r14)
            java.lang.String r13 = r13.toString()
            r7.setTag(r11, r13)
            r11 = 0
            r7.setClipChildren(r11)
            float r10 = r12.mo342toPx0680j_4(r10)
            r7.setElevation(r10)
            androidx.compose.ui.window.PopupLayout$2 r10 = new androidx.compose.ui.window.PopupLayout$2
            r10.<init>()
            r7.setOutlineProvider(r10)
            androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt r10 = androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt.INSTANCE
            kotlin.jvm.functions.Function2 r10 = r10.m4296getLambda1$ui_release()
            androidx.compose.runtime.MutableState r8 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r10, r8, r9, r8)
            r7.content$delegate = r8
            int[] r8 = new int[r9]
            r7.locationOnScreen = r8
            return
        Ld8:
            java.lang.NullPointerException r8 = new java.lang.NullPointerException
            java.lang.String r9 = "null cannot be cast to non-null type android.view.WindowManager"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.PopupLayout.<init>(kotlin.jvm.functions.Function0, androidx.compose.ui.window.PopupProperties, java.lang.String, android.view.View, androidx.compose.ui.unit.Density, androidx.compose.ui.window.PopupPositionProvider, java.util.UUID, androidx.compose.ui.window.PopupLayoutHelper):void");
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getParams$ui_release$annotations() {
    }

    @Override // androidx.compose.ui.platform.ViewRootForInspector
    @NotNull
    public AbstractComposeView getSubCompositionView() {
        return this;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
    }
}
