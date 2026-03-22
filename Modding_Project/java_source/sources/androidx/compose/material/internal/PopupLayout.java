package androidx.compose.material.internal;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.R;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExposedDropdownMenuPopup.kt */
@Metadata
@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
final class PopupLayout extends AbstractComposeView implements ViewRootForInspector, ViewTreeObserver.OnGlobalLayoutListener {
    @NotNull
    private final State canCalculatePosition$delegate;
    @NotNull
    private final View composeView;
    @NotNull
    private final MutableState content$delegate;
    @NotNull
    private final Function2<Offset, IntRect, Boolean> dismissOnOutsideClick;
    private final float maxSupportedElevation;
    @Nullable
    private Function0<Unit> onDismissRequest;
    @NotNull
    private final WindowManager.LayoutParams params;
    @NotNull
    private final MutableState parentBounds$delegate;
    @NotNull
    private LayoutDirection parentLayoutDirection;
    @NotNull
    private final MutableState popupContentSize$delegate;
    @NotNull
    private PopupPositionProvider positionProvider;
    @NotNull
    private final Rect previousWindowVisibleFrame;
    private boolean shouldCreateCompositionOnAttachedToWindow;
    @NotNull
    private String testTag;
    @NotNull
    private final Rect tmpWindowVisibleFrame;
    @NotNull
    private final WindowManager windowManager;

    /* compiled from: ExposedDropdownMenuPopup.kt */
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
    public PopupLayout(@org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r8, @org.jetbrains.annotations.NotNull java.lang.String r9, @org.jetbrains.annotations.NotNull android.view.View r10, @org.jetbrains.annotations.NotNull androidx.compose.ui.unit.Density r11, @org.jetbrains.annotations.NotNull androidx.compose.ui.window.PopupPositionProvider r12, @org.jetbrains.annotations.NotNull java.util.UUID r13) {
        /*
            r7 = this;
            java.lang.String r0 = "testTag"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "composeView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "density"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "initialPositionProvider"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "popupId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            android.content.Context r2 = r10.getContext()
            java.lang.String r0 = "composeView.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r5 = 6
            r6 = 0
            r3 = 0
            r4 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.onDismissRequest = r8
            r7.testTag = r9
            r7.composeView = r10
            android.content.Context r8 = r10.getContext()
            java.lang.String r9 = "window"
            java.lang.Object r8 = r8.getSystemService(r9)
            if (r8 == 0) goto Ld8
            android.view.WindowManager r8 = (android.view.WindowManager) r8
            r7.windowManager = r8
            android.view.WindowManager$LayoutParams r8 = r7.createLayoutParams()
            r7.params = r8
            r7.positionProvider = r12
            androidx.compose.ui.unit.LayoutDirection r8 = androidx.compose.ui.unit.LayoutDirection.Ltr
            r7.parentLayoutDirection = r8
            r8 = 0
            r9 = 2
            androidx.compose.runtime.MutableState r12 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.parentBounds$delegate = r12
            androidx.compose.runtime.MutableState r12 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.popupContentSize$delegate = r12
            androidx.compose.material.internal.PopupLayout$canCalculatePosition$2 r12 = new androidx.compose.material.internal.PopupLayout$canCalculatePosition$2
            r12.<init>()
            androidx.compose.runtime.State r12 = androidx.compose.runtime.SnapshotStateKt.derivedStateOf(r12)
            r7.canCalculatePosition$delegate = r12
            r12 = 30
            float r12 = (float) r12
            float r12 = androidx.compose.ui.unit.Dp.m4049constructorimpl(r12)
            r7.maxSupportedElevation = r12
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r7.previousWindowVisibleFrame = r0
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r7.tmpWindowVisibleFrame = r0
            androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1 r0 = new kotlin.jvm.functions.Function2<androidx.compose.ui.geometry.Offset, androidx.compose.ui.unit.IntRect, java.lang.Boolean>() { // from class: androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1
                static {
                    /*
                        androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1 r0 = new androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1) androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1.INSTANCE androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 2
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ java.lang.Boolean invoke(androidx.compose.ui.geometry.Offset r1, androidx.compose.ui.unit.IntRect r2) {
                    /*
                        r0 = this;
                        androidx.compose.ui.geometry.Offset r1 = (androidx.compose.ui.geometry.Offset) r1
                        androidx.compose.ui.unit.IntRect r2 = (androidx.compose.ui.unit.IntRect) r2
                        java.lang.Boolean r1 = r0.invoke(r1, r2)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function2
                @org.jetbrains.annotations.NotNull
                /* renamed from: invoke-KMgbckE  reason: not valid java name */
                public final java.lang.Boolean invoke(@org.jetbrains.annotations.Nullable androidx.compose.ui.geometry.Offset r4, @org.jetbrains.annotations.NotNull androidx.compose.ui.unit.IntRect r5) {
                    /*
                        r3 = this;
                        java.lang.String r0 = "bounds"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                        r0 = 0
                        if (r4 != 0) goto L9
                        goto L4e
                    L9:
                        long r1 = r4.m1616unboximpl()
                        float r1 = androidx.compose.ui.geometry.Offset.m1606getXimpl(r1)
                        int r2 = r5.getLeft()
                        float r2 = (float) r2
                        int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                        if (r1 < 0) goto L4d
                        long r1 = r4.m1616unboximpl()
                        float r1 = androidx.compose.ui.geometry.Offset.m1606getXimpl(r1)
                        int r2 = r5.getRight()
                        float r2 = (float) r2
                        int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                        if (r1 > 0) goto L4d
                        long r1 = r4.m1616unboximpl()
                        float r1 = androidx.compose.ui.geometry.Offset.m1607getYimpl(r1)
                        int r2 = r5.getTop()
                        float r2 = (float) r2
                        int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                        if (r1 < 0) goto L4d
                        long r1 = r4.m1616unboximpl()
                        float r4 = androidx.compose.ui.geometry.Offset.m1607getYimpl(r1)
                        int r5 = r5.getBottom()
                        float r5 = (float) r5
                        int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                        if (r4 <= 0) goto L4e
                    L4d:
                        r0 = 1
                    L4e:
                        java.lang.Boolean r4 = java.lang.Boolean.valueOf(r0)
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.internal.PopupLayout$dismissOnOutsideClick$1.invoke(androidx.compose.ui.geometry.Offset, androidx.compose.ui.unit.IntRect):java.lang.Boolean");
                }
            }
            r7.dismissOnOutsideClick = r0
            r0 = 16908290(0x1020002, float:2.3877235E-38)
            r7.setId(r0)
            androidx.lifecycle.LifecycleOwner r0 = androidx.lifecycle.ViewTreeLifecycleOwner.get(r10)
            androidx.lifecycle.ViewTreeLifecycleOwner.set(r7, r0)
            androidx.lifecycle.ViewModelStoreOwner r0 = androidx.lifecycle.ViewTreeViewModelStoreOwner.get(r10)
            androidx.lifecycle.ViewTreeViewModelStoreOwner.set(r7, r0)
            androidx.savedstate.SavedStateRegistryOwner r0 = androidx.savedstate.ViewTreeSavedStateRegistryOwner.get(r10)
            androidx.savedstate.ViewTreeSavedStateRegistryOwner.set(r7, r0)
            android.view.ViewTreeObserver r10 = r10.getViewTreeObserver()
            r10.addOnGlobalLayoutListener(r7)
            int r10 = androidx.compose.ui.R.id.compose_view_saveable_id_tag
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Popup:"
            r0.append(r1)
            r0.append(r13)
            java.lang.String r13 = r0.toString()
            r7.setTag(r10, r13)
            r10 = 0
            r7.setClipChildren(r10)
            float r10 = r11.mo342toPx0680j_4(r12)
            r7.setElevation(r10)
            androidx.compose.material.internal.PopupLayout$2 r10 = new androidx.compose.material.internal.PopupLayout$2
            r10.<init>()
            r7.setOutlineProvider(r10)
            androidx.compose.material.internal.ComposableSingletons$ExposedDropdownMenuPopupKt r10 = androidx.compose.material.internal.ComposableSingletons$ExposedDropdownMenuPopupKt.INSTANCE
            kotlin.jvm.functions.Function2 r10 = r10.m1273getLambda1$material_release()
            androidx.compose.runtime.MutableState r8 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r10, r8, r9, r8)
            r7.content$delegate = r8
            return
        Ld8:
            java.lang.NullPointerException r8 = new java.lang.NullPointerException
            java.lang.String r9 = "null cannot be cast to non-null type android.view.WindowManager"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.internal.PopupLayout.<init>(kotlin.jvm.functions.Function0, java.lang.String, android.view.View, androidx.compose.ui.unit.Density, androidx.compose.ui.window.PopupPositionProvider, java.util.UUID):void");
    }

    private final WindowManager.LayoutParams createLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        layoutParams.flags = 393248;
        layoutParams.softInputMode = 1;
        layoutParams.type = 1000;
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

    private final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.content$delegate.setValue(function2);
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

    private final IntRect toIntBounds(Rect rect) {
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    @Composable
    public void Content(@Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-1288867704);
        getContent().invoke(startRestartGroup, 0);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material.internal.PopupLayout$Content$4
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
        this.composeView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.windowManager.removeViewImmediate(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(@NotNull KeyEvent event) {
        KeyEvent.DispatcherState keyDispatcherState;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getKeyCode() == 4) {
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

    @Nullable
    public final IntRect getParentBounds() {
        return (IntRect) this.parentBounds$delegate.getValue();
    }

    @NotNull
    public final LayoutDirection getParentLayoutDirection() {
        return this.parentLayoutDirection;
    }

    @Nullable
    /* renamed from: getPopupContentSize-bOM6tXw  reason: not valid java name */
    public final IntSize m1277getPopupContentSizebOM6tXw() {
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

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.composeView.getWindowVisibleDisplayFrame(this.tmpWindowVisibleFrame);
        if (!Intrinsics.areEqual(this.tmpWindowVisibleFrame, this.previousWindowVisibleFrame)) {
            updatePosition();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
        if (r2.invoke(r1, r0).booleanValue() != false) goto L27;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.Nullable android.view.MotionEvent r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L7
            boolean r6 = super.onTouchEvent(r6)
            return r6
        L7:
            int r0 = r6.getAction()
            r1 = 0
            if (r0 != 0) goto L38
            float r0 = r6.getX()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L3f
            float r0 = r6.getX()
            int r2 = r5.getWidth()
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L3f
            float r0 = r6.getY()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L3f
            float r0 = r6.getY()
            int r2 = r5.getHeight()
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L3f
        L38:
            int r0 = r6.getAction()
            r2 = 4
            if (r0 != r2) goto L8a
        L3f:
            androidx.compose.ui.unit.IntRect r0 = r5.getParentBounds()
            if (r0 == 0) goto L81
            kotlin.jvm.functions.Function2<androidx.compose.ui.geometry.Offset, androidx.compose.ui.unit.IntRect, java.lang.Boolean> r2 = r5.dismissOnOutsideClick
            float r3 = r6.getX()
            int r3 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r3 != 0) goto L59
            float r3 = r6.getY()
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 != 0) goto L59
            r1 = 0
            goto L75
        L59:
            android.view.WindowManager$LayoutParams r1 = r5.params
            int r1 = r1.x
            float r1 = (float) r1
            float r3 = r6.getX()
            float r1 = r1 + r3
            android.view.WindowManager$LayoutParams r3 = r5.params
            int r3 = r3.y
            float r3 = (float) r3
            float r4 = r6.getY()
            float r3 = r3 + r4
            long r3 = androidx.compose.ui.geometry.OffsetKt.Offset(r1, r3)
            androidx.compose.ui.geometry.Offset r1 = androidx.compose.ui.geometry.Offset.m1595boximpl(r3)
        L75:
            java.lang.Object r0 = r2.invoke(r1, r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L8a
        L81:
            kotlin.jvm.functions.Function0<kotlin.Unit> r6 = r5.onDismissRequest
            if (r6 == 0) goto L88
            r6.invoke()
        L88:
            r6 = 1
            return r6
        L8a:
            boolean r6 = super.onTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.internal.PopupLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setParentBounds(@Nullable IntRect intRect) {
        this.parentBounds$delegate.setValue(intRect);
    }

    public final void setParentLayoutDirection(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.parentLayoutDirection = layoutDirection;
    }

    /* renamed from: setPopupContentSize-fhxjrPA  reason: not valid java name */
    public final void m1278setPopupContentSizefhxjrPA(@Nullable IntSize intSize) {
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

    public final void updateParameters(@Nullable Function0<Unit> function0, @NotNull String testTag, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(testTag, "testTag");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.onDismissRequest = function0;
        this.testTag = testTag;
        superSetLayoutDirection(layoutDirection);
    }

    public final void updatePosition() {
        IntSize m1277getPopupContentSizebOM6tXw;
        IntRect parentBounds = getParentBounds();
        if (parentBounds != null && (m1277getPopupContentSizebOM6tXw = m1277getPopupContentSizebOM6tXw()) != null) {
            long m4213unboximpl = m1277getPopupContentSizebOM6tXw.m4213unboximpl();
            Rect rect = this.previousWindowVisibleFrame;
            this.composeView.getWindowVisibleDisplayFrame(rect);
            IntRect intBounds = toIntBounds(rect);
            long mo809calculatePositionllwVHH4 = this.positionProvider.mo809calculatePositionllwVHH4(parentBounds, IntSizeKt.IntSize(intBounds.getWidth(), intBounds.getHeight()), this.parentLayoutDirection, m4213unboximpl);
            this.params.x = IntOffset.m4167getXimpl(mo809calculatePositionllwVHH4);
            this.params.y = IntOffset.m4168getYimpl(mo809calculatePositionllwVHH4);
            this.windowManager.updateViewLayout(this, this.params);
        }
    }

    public final void setContent(@NotNull CompositionContext parent, @NotNull Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(content, "content");
        setParentCompositionContext(parent);
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
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
