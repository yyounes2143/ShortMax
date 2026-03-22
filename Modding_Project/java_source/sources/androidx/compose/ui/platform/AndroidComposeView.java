package androidx.compose.ui.platform;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidAutofill_androidKt;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillCallback;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusManagerImpl;
import androidx.compose.ui.focus.FocusModifier;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.InputModeManagerImpl;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifier;
import androidx.compose.ui.input.pointer.MotionEventAdapter;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconDefaults;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.input.pointer.PointerInputEvent;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.input.pointer.PointerInputEventProcessor;
import androidx.compose.ui.input.pointer.PointerInputEventProcessorKt;
import androidx.compose.ui.input.pointer.PositionCalculator;
import androidx.compose.ui.input.pointer.ProcessResult;
import androidx.compose.ui.input.rotary.RotaryInputModifierKt;
import androidx.compose.ui.input.rotary.RotaryScrollEvent;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.MeasureAndLayoutDelegate;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.platform.ViewLayer;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsModifierCore;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontFamilyResolver_androidKt;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidComposeView.android.kt */
@Metadata
@SuppressLint({"ViewConstructor", "VisibleForTests"})
/* loaded from: classes.dex */
public final class AndroidComposeView extends ViewGroup implements Owner, ViewRootForTest, PositionCalculator, DefaultLifecycleObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String FocusTag = "Compose Focus";
    private static final int MaximumLayerCacheSize = 10;
    @Nullable
    private static Method getBooleanMethod;
    @Nullable
    private static Class<?> systemPropertiesClass;
    @Nullable
    private AndroidViewsHandler _androidViewsHandler;
    @Nullable
    private final AndroidAutofill _autofill;
    @NotNull
    private final FocusManagerImpl _focusManager;
    @NotNull
    private final InputModeManagerImpl _inputModeManager;
    @NotNull
    private final WindowInfoImpl _windowInfo;
    @NotNull
    private final AndroidComposeViewAccessibilityDelegateCompat accessibilityDelegate;
    @NotNull
    private final AndroidAccessibilityManager accessibilityManager;
    @NotNull
    private final AutofillTree autofillTree;
    @NotNull
    private final CanvasHolder canvasHolder;
    @NotNull
    private final AndroidClipboardManager clipboardManager;
    @NotNull
    private Function1<? super Configuration, Unit> configurationChangeObserver;
    private int currentFontWeightAdjustment;
    @NotNull
    private Density density;
    @Nullable
    private PointerIcon desiredPointerIcon;
    @NotNull
    private final List<OwnedLayer> dirtyLayers;
    @NotNull
    private final MutableVector<Function0<Unit>> endApplyChangesListeners;
    @NotNull
    private final MutableState fontFamilyResolver$delegate;
    @NotNull
    private final Font.ResourceLoader fontLoader;
    private boolean forceUseMatrixCache;
    @NotNull
    private final ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener;
    private long globalPosition;
    @NotNull
    private final HapticFeedback hapticFeedBack;
    private boolean hoverExitReceived;
    private boolean isDrawingContent;
    private boolean isRenderNodeCompatible;
    @NotNull
    private final KeyInputModifier keyInputModifier;
    private long lastDownPointerPosition;
    private long lastMatrixRecalculationAnimationTime;
    @NotNull
    private final WeakCache<OwnedLayer> layerCache;
    @NotNull
    private final MutableState layoutDirection$delegate;
    @NotNull
    private final CalculateMatrixToWindow matrixToWindow;
    @NotNull
    private final MeasureAndLayoutDelegate measureAndLayoutDelegate;
    @NotNull
    private final MotionEventAdapter motionEventAdapter;
    private boolean observationClearRequested;
    @Nullable
    private Constraints onMeasureConstraints;
    @Nullable
    private Function1<? super ViewTreeOwners, Unit> onViewTreeOwnersAvailable;
    @NotNull
    private final PointerIconService pointerIconService;
    @NotNull
    private final PointerInputEventProcessor pointerInputEventProcessor;
    @Nullable
    private List<OwnedLayer> postponedDirtyLayers;
    @Nullable
    private MotionEvent previousMotionEvent;
    private long relayoutTime;
    @NotNull
    private final Function0<Unit> resendMotionEventOnLayout;
    @NotNull
    private final AndroidComposeView$resendMotionEventRunnable$1 resendMotionEventRunnable;
    @NotNull
    private final LayoutNode root;
    @NotNull
    private final RootForTest rootForTest;
    @NotNull
    private final Modifier rotaryInputModifier;
    @NotNull
    private final ViewTreeObserver.OnScrollChangedListener scrollChangedListener;
    @NotNull
    private final SemanticsModifierCore semanticsModifier;
    @NotNull
    private final SemanticsOwner semanticsOwner;
    @NotNull
    private final Runnable sendHoverExitEvent;
    @NotNull
    private final LayoutNodeDrawScope sharedDrawScope;
    private boolean showLayoutBounds;
    @NotNull
    private final OwnerSnapshotObserver snapshotObserver;
    private boolean superclassInitComplete;
    @NotNull
    private final TextInputService textInputService;
    @NotNull
    private final TextInputServiceAndroid textInputServiceAndroid;
    @NotNull
    private final TextToolbar textToolbar;
    @NotNull
    private final int[] tmpPositionArray;
    @NotNull
    private final ViewTreeObserver.OnTouchModeChangeListener touchModeChangeListener;
    @NotNull
    private final ViewConfiguration viewConfiguration;
    @Nullable
    private DrawChildContainer viewLayersContainer;
    @NotNull
    private final float[] viewToWindowMatrix;
    @NotNull
    private final MutableState viewTreeOwners$delegate;
    private boolean wasMeasuredWithMultipleConstraints;
    private long windowPosition;
    @NotNull
    private final float[] windowToViewMatrix;

    /* compiled from: AndroidComposeView.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @SuppressLint({"PrivateApi", "BanUncheckedReflection"})
        public final boolean getIsShowingLayoutBounds() {
            Object obj;
            Method method;
            try {
                Boolean bool = null;
                if (AndroidComposeView.systemPropertiesClass == null) {
                    AndroidComposeView.systemPropertiesClass = Class.forName("android.os.SystemProperties");
                    Class cls = AndroidComposeView.systemPropertiesClass;
                    if (cls != null) {
                        method = cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
                    } else {
                        method = null;
                    }
                    AndroidComposeView.getBooleanMethod = method;
                }
                Method method2 = AndroidComposeView.getBooleanMethod;
                if (method2 != null) {
                    obj = method2.invoke(null, "debug.layout", Boolean.FALSE);
                } else {
                    obj = null;
                }
                if (obj instanceof Boolean) {
                    bool = obj;
                }
                if (bool == null) {
                    return false;
                }
                return bool.booleanValue();
            } catch (Exception unused) {
                return false;
            }
        }

        private Companion() {
        }
    }

    /* compiled from: AndroidComposeView.android.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class ViewTreeOwners {
        public static final int $stable = 8;
        @NotNull
        private final LifecycleOwner lifecycleOwner;
        @NotNull
        private final SavedStateRegistryOwner savedStateRegistryOwner;

        public ViewTreeOwners(@NotNull LifecycleOwner lifecycleOwner, @NotNull SavedStateRegistryOwner savedStateRegistryOwner) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
            Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "savedStateRegistryOwner");
            this.lifecycleOwner = lifecycleOwner;
            this.savedStateRegistryOwner = savedStateRegistryOwner;
        }

        @NotNull
        public final LifecycleOwner getLifecycleOwner() {
            return this.lifecycleOwner;
        }

        @NotNull
        public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
            return this.savedStateRegistryOwner;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r12v10, types: [androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1] */
    public AndroidComposeView(@NotNull Context context) {
        super(context);
        AndroidAutofill androidAutofill;
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        int m2473getKeyboardaOaMEAU;
        CalculateMatrixToWindow calculateMatrixToWindowApi21;
        Intrinsics.checkNotNullParameter(context, "context");
        Offset.Companion companion = Offset.Companion;
        this.lastDownPointerPosition = companion.m1621getUnspecifiedF1C5BW0();
        this.superclassInitComplete = true;
        this.sharedDrawScope = new LayoutNodeDrawScope(null, 1, null);
        this.density = AndroidDensity_androidKt.Density(context);
        SemanticsModifierCore semanticsModifierCore = new SemanticsModifierCore(SemanticsModifierCore.Companion.generateSemanticsId(), false, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$semanticsModifier$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SemanticsPropertyReceiver $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.f60915a;
            }
        });
        this.semanticsModifier = semanticsModifierCore;
        FocusManagerImpl focusManagerImpl = new FocusManagerImpl(null, 1, null);
        this._focusManager = focusManagerImpl;
        this._windowInfo = new WindowInfoImpl();
        KeyInputModifier keyInputModifier = new KeyInputModifier(new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$keyInputModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m3519invokeZmokQxo(keyEvent.m3065unboximpl());
            }

            @NotNull
            /* renamed from: invoke-ZmokQxo  reason: not valid java name */
            public final Boolean m3519invokeZmokQxo(@NotNull android.view.KeyEvent it) {
                Intrinsics.checkNotNullParameter(it, "it");
                FocusDirection mo3509getFocusDirectionP8AzH3I = AndroidComposeView.this.mo3509getFocusDirectionP8AzH3I(it);
                if (mo3509getFocusDirectionP8AzH3I != null && KeyEventType.m3069equalsimpl0(KeyEvent_androidKt.m3077getTypeZmokQxo(it), KeyEventType.Companion.m3073getKeyDownCS__XNY())) {
                    return Boolean.valueOf(AndroidComposeView.this.getFocusManager().mo1556moveFocus3ESFkO8(mo3509getFocusDirectionP8AzH3I.m1545unboximpl()));
                }
                return Boolean.FALSE;
            }
        }, null);
        this.keyInputModifier = keyInputModifier;
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier onRotaryScrollEvent = RotaryInputModifierKt.onRotaryScrollEvent(companion2, new Function1<RotaryScrollEvent, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$rotaryInputModifier$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull RotaryScrollEvent it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.FALSE;
            }
        });
        this.rotaryInputModifier = onRotaryScrollEvent;
        this.canvasHolder = new CanvasHolder();
        LayoutNode layoutNode = new LayoutNode(false, 1, null);
        layoutNode.setMeasurePolicy(RootMeasurePolicy.INSTANCE);
        layoutNode.setModifier(companion2.then(semanticsModifierCore).then(onRotaryScrollEvent).then(focusManagerImpl.getModifier()).then(keyInputModifier));
        layoutNode.setDensity(getDensity());
        this.root = layoutNode;
        this.rootForTest = this;
        this.semanticsOwner = new SemanticsOwner(getRoot());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.accessibilityDelegate = androidComposeViewAccessibilityDelegateCompat;
        this.autofillTree = new AutofillTree();
        this.dirtyLayers = new ArrayList();
        this.motionEventAdapter = new MotionEventAdapter();
        this.pointerInputEventProcessor = new PointerInputEventProcessor(getRoot());
        this.configurationChangeObserver = new Function1<Configuration, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$configurationChangeObserver$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Configuration it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Configuration configuration) {
                invoke2(configuration);
                return Unit.f60915a;
            }
        };
        if (autofillSupported()) {
            androidAutofill = new AndroidAutofill(this, getAutofillTree());
        } else {
            androidAutofill = null;
        }
        this._autofill = androidAutofill;
        this.clipboardManager = new AndroidClipboardManager(context);
        this.accessibilityManager = new AndroidAccessibilityManager(context);
        this.snapshotObserver = new OwnerSnapshotObserver(new AndroidComposeView$snapshotObserver$1(this));
        this.measureAndLayoutDelegate = new MeasureAndLayoutDelegate(getRoot());
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        Intrinsics.checkNotNullExpressionValue(viewConfiguration, "get(context)");
        this.viewConfiguration = new AndroidViewConfiguration(viewConfiguration);
        this.globalPosition = IntOffset.Companion.m4177getZeronOccac();
        this.tmpPositionArray = new int[]{0, 0};
        this.viewToWindowMatrix = Matrix.m2036constructorimpl$default(null, 1, null);
        this.windowToViewMatrix = Matrix.m2036constructorimpl$default(null, 1, null);
        this.lastMatrixRecalculationAnimationTime = -1L;
        this.windowPosition = companion.m1620getInfiniteF1C5BW0();
        this.isRenderNodeCompatible = true;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.viewTreeOwners$delegate = mutableStateOf$default;
        this.globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.compose.ui.platform.c
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                AndroidComposeView.m3512globalLayoutListener$lambda1(AndroidComposeView.this);
            }
        };
        this.scrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: androidx.compose.ui.platform.d
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                AndroidComposeView.m3514scrollChangedListener$lambda2(AndroidComposeView.this);
            }
        };
        this.touchModeChangeListener = new ViewTreeObserver.OnTouchModeChangeListener() { // from class: androidx.compose.ui.platform.e
            @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
            public final void onTouchModeChanged(boolean z10) {
                AndroidComposeView.m3517touchModeChangeListener$lambda3(AndroidComposeView.this, z10);
            }
        };
        TextInputServiceAndroid textInputServiceAndroid = new TextInputServiceAndroid(this);
        this.textInputServiceAndroid = textInputServiceAndroid;
        this.textInputService = AndroidComposeView_androidKt.getTextInputServiceFactory().invoke(textInputServiceAndroid);
        this.fontLoader = new AndroidFontResourceLoader(context);
        this.fontFamilyResolver$delegate = SnapshotStateKt.mutableStateOf(FontFamilyResolver_androidKt.createFontFamilyResolver(context), SnapshotStateKt.referentialEqualityPolicy());
        Configuration configuration = context.getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "context.resources.configuration");
        this.currentFontWeightAdjustment = getFontWeightAdjustmentCompat(configuration);
        Configuration configuration2 = context.getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration2, "context.resources.configuration");
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(AndroidComposeView_androidKt.getLocaleLayoutDirection(configuration2), null, 2, null);
        this.layoutDirection$delegate = mutableStateOf$default2;
        this.hapticFeedBack = new PlatformHapticFeedback(this);
        if (isInTouchMode()) {
            m2473getKeyboardaOaMEAU = InputMode.Companion.m2474getTouchaOaMEAU();
        } else {
            m2473getKeyboardaOaMEAU = InputMode.Companion.m2473getKeyboardaOaMEAU();
        }
        this._inputModeManager = new InputModeManagerImpl(m2473getKeyboardaOaMEAU, new Function1<InputMode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$_inputModeManager$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(InputMode inputMode) {
                return m3518invokeiuPiT84(inputMode.m2472unboximpl());
            }

            @NotNull
            /* renamed from: invoke-iuPiT84  reason: not valid java name */
            public final Boolean m3518invokeiuPiT84(int i10) {
                boolean z10;
                InputMode.Companion companion3 = InputMode.Companion;
                if (InputMode.m2469equalsimpl0(i10, companion3.m2474getTouchaOaMEAU())) {
                    z10 = AndroidComposeView.this.isInTouchMode();
                } else if (InputMode.m2469equalsimpl0(i10, companion3.m2473getKeyboardaOaMEAU())) {
                    if (AndroidComposeView.this.isInTouchMode()) {
                        z10 = AndroidComposeView.this.requestFocusFromTouch();
                    } else {
                        z10 = true;
                    }
                } else {
                    z10 = false;
                }
                return Boolean.valueOf(z10);
            }
        }, null);
        this.textToolbar = new AndroidTextToolbar(this);
        this.layerCache = new WeakCache<>();
        this.endApplyChangesListeners = new MutableVector<>(new Function0[16], 0);
        this.resendMotionEventRunnable = new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                MotionEvent motionEvent;
                long j10;
                AndroidComposeView.this.removeCallbacks(this);
                motionEvent = AndroidComposeView.this.previousMotionEvent;
                if (motionEvent != null) {
                    boolean z10 = false;
                    if (motionEvent.getToolType(0) == 3) {
                        z10 = true;
                    }
                    int actionMasked = motionEvent.getActionMasked();
                    if (z10) {
                        if (actionMasked == 10 || actionMasked == 1) {
                            return;
                        }
                    } else if (actionMasked == 1) {
                        return;
                    }
                    int i10 = 7;
                    if (actionMasked != 7 && actionMasked != 9) {
                        i10 = 2;
                    }
                    AndroidComposeView androidComposeView = AndroidComposeView.this;
                    j10 = androidComposeView.relayoutTime;
                    androidComposeView.sendSimulatedEvent(motionEvent, i10, j10, false);
                }
            }
        };
        this.sendHoverExitEvent = new Runnable() { // from class: androidx.compose.ui.platform.f
            @Override // java.lang.Runnable
            public final void run() {
                AndroidComposeView.m3515sendHoverExitEvent$lambda5(AndroidComposeView.this);
            }
        };
        this.resendMotionEventOnLayout = new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$resendMotionEventOnLayout$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                MotionEvent motionEvent;
                AndroidComposeView$resendMotionEventRunnable$1 androidComposeView$resendMotionEventRunnable$1;
                motionEvent = AndroidComposeView.this.previousMotionEvent;
                if (motionEvent != null) {
                    int actionMasked = motionEvent.getActionMasked();
                    if (actionMasked == 7 || actionMasked == 9) {
                        AndroidComposeView.this.relayoutTime = SystemClock.uptimeMillis();
                        AndroidComposeView androidComposeView = AndroidComposeView.this;
                        androidComposeView$resendMotionEventRunnable$1 = androidComposeView.resendMotionEventRunnable;
                        androidComposeView.post(androidComposeView$resendMotionEventRunnable$1);
                    }
                }
            }
        };
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            calculateMatrixToWindowApi21 = new CalculateMatrixToWindowApi29();
        } else {
            calculateMatrixToWindowApi21 = new CalculateMatrixToWindowApi21();
        }
        this.matrixToWindow = calculateMatrixToWindowApi21;
        setWillNotDraw(false);
        setFocusable(true);
        if (i10 >= 26) {
            AndroidComposeViewVerificationHelperMethodsO.INSTANCE.focusable(this, 1, false);
        }
        setFocusableInTouchMode(true);
        setClipChildren(false);
        setTransitionGroup(true);
        ViewCompat.setAccessibilityDelegate(this, androidComposeViewAccessibilityDelegateCompat);
        Function1<ViewRootForTest, Unit> onViewCreatedCallback = ViewRootForTest.Companion.getOnViewCreatedCallback();
        if (onViewCreatedCallback != null) {
            onViewCreatedCallback.invoke(this);
        }
        getRoot().attach$ui_release(this);
        if (i10 >= 29) {
            AndroidComposeViewForceDarkModeQ.INSTANCE.disallowForceDark(this);
        }
        this.pointerIconService = new PointerIconService() { // from class: androidx.compose.ui.platform.AndroidComposeView$pointerIconService$1
            @Override // androidx.compose.ui.input.pointer.PointerIconService
            @NotNull
            public PointerIcon getCurrent() {
                PointerIcon pointerIcon;
                pointerIcon = AndroidComposeView.this.desiredPointerIcon;
                if (pointerIcon == null) {
                    return PointerIconDefaults.INSTANCE.getDefault();
                }
                return pointerIcon;
            }

            @Override // androidx.compose.ui.input.pointer.PointerIconService
            public void setCurrent(@NotNull PointerIcon value) {
                Intrinsics.checkNotNullParameter(value, "value");
                AndroidComposeView.this.desiredPointerIcon = value;
            }
        };
    }

    private final boolean autofillSupported() {
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        return false;
    }

    private final void clearChildInvalidObservations(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).onEndApplyChanges();
            } else if (childAt instanceof ViewGroup) {
                clearChildInvalidObservations((ViewGroup) childAt);
            }
        }
    }

    private final Pair<Integer, Integer> convertMeasureSpec(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    return ms.k.a(Integer.valueOf(size), Integer.valueOf(size));
                }
                throw new IllegalStateException();
            }
            return ms.k.a(0, Integer.MAX_VALUE);
        }
        return ms.k.a(0, Integer.valueOf(size));
    }

    private final View findViewByAccessibilityIdRootedAtCurrentView(int i10, View view) {
        if (Build.VERSION.SDK_INT < 29) {
            Method declaredMethod = View.class.getDeclaredMethod("getAccessibilityViewId", new Class[0]);
            declaredMethod.setAccessible(true);
            if (Intrinsics.areEqual(declaredMethod.invoke(view, new Object[0]), Integer.valueOf(i10))) {
                return view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    Intrinsics.checkNotNullExpressionValue(childAt, "currentView.getChildAt(i)");
                    View findViewByAccessibilityIdRootedAtCurrentView = findViewByAccessibilityIdRootedAtCurrentView(i10, childAt);
                    if (findViewByAccessibilityIdRootedAtCurrentView != null) {
                        return findViewByAccessibilityIdRootedAtCurrentView;
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private final int getFontWeightAdjustmentCompat(Configuration configuration) {
        int i10;
        if (Build.VERSION.SDK_INT >= 31) {
            i10 = configuration.fontWeightAdjustment;
            return i10;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: globalLayoutListener$lambda-1  reason: not valid java name */
    public static final void m3512globalLayoutListener$lambda1(AndroidComposeView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updatePositionCacheAndDispatch();
    }

    /* renamed from: handleMotionEvent-8iAsVTc  reason: not valid java name */
    private final int m3513handleMotionEvent8iAsVTc(MotionEvent motionEvent) {
        boolean z10;
        removeCallbacks(this.resendMotionEventRunnable);
        try {
            recalculateWindowPosition(motionEvent);
            boolean z11 = true;
            this.forceUseMatrixCache = true;
            measureAndLayout(false);
            this.desiredPointerIcon = null;
            Trace.beginSection("AndroidOwner:onTouch");
            int actionMasked = motionEvent.getActionMasked();
            MotionEvent motionEvent2 = this.previousMotionEvent;
            if (motionEvent2 != null && motionEvent2.getToolType(0) == 3) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (motionEvent2 != null && hasChangedDevices(motionEvent, motionEvent2)) {
                if (isDevicePressEvent(motionEvent2)) {
                    this.pointerInputEventProcessor.processCancel();
                } else if (motionEvent2.getActionMasked() != 10 && z10) {
                    sendSimulatedEvent$default(this, motionEvent2, 10, motionEvent2.getEventTime(), false, 8, null);
                }
            }
            if (motionEvent.getToolType(0) != 3) {
                z11 = false;
            }
            if (!z10 && z11 && actionMasked != 3 && actionMasked != 9 && isInBounds(motionEvent)) {
                sendSimulatedEvent$default(this, motionEvent, 9, motionEvent.getEventTime(), false, 8, null);
            }
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.previousMotionEvent = MotionEvent.obtainNoHistory(motionEvent);
            int m3516sendMotionEvent8iAsVTc = m3516sendMotionEvent8iAsVTc(motionEvent);
            Trace.endSection();
            AndroidComposeViewVerificationHelperMethodsN.INSTANCE.setPointerIcon(this, this.desiredPointerIcon);
            return m3516sendMotionEvent8iAsVTc;
        } finally {
            this.forceUseMatrixCache = false;
        }
    }

    private final boolean handleRotaryEvent(MotionEvent motionEvent) {
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
        float f10 = -motionEvent.getAxisValue(26);
        RotaryScrollEvent rotaryScrollEvent = new RotaryScrollEvent(ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, getContext()) * f10, f10 * ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, getContext()), motionEvent.getEventTime());
        FocusModifier activeFocusModifier$ui_release = this._focusManager.getActiveFocusModifier$ui_release();
        if (activeFocusModifier$ui_release != null) {
            return activeFocusModifier$ui_release.propagateRotaryEvent(rotaryScrollEvent);
        }
        return false;
    }

    private final boolean hasChangedDevices(MotionEvent motionEvent, MotionEvent motionEvent2) {
        if (motionEvent2.getSource() == motionEvent.getSource() && motionEvent2.getToolType(0) == motionEvent.getToolType(0)) {
            return false;
        }
        return true;
    }

    private final void invalidateLayers(LayoutNode layoutNode) {
        layoutNode.invalidateLayers$ui_release();
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i10 = 0;
            do {
                invalidateLayers(content[i10]);
                i10++;
            } while (i10 < size);
        }
    }

    private final void invalidateLayoutNodeMeasurement(LayoutNode layoutNode) {
        int i10 = 0;
        MeasureAndLayoutDelegate.requestRemeasure$default(this.measureAndLayoutDelegate, layoutNode, false, 2, null);
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            do {
                invalidateLayoutNodeMeasurement(content[i10]);
                i10++;
            } while (i10 < size);
        }
    }

    private final boolean isBadMotionEvent(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        if (!Float.isInfinite(x10) && !Float.isNaN(x10)) {
            float y10 = motionEvent.getY();
            if (!Float.isInfinite(y10) && !Float.isNaN(y10)) {
                float rawX = motionEvent.getRawX();
                if (!Float.isInfinite(rawX) && !Float.isNaN(rawX)) {
                    float rawY = motionEvent.getRawY();
                    if (!Float.isInfinite(rawY) && !Float.isNaN(rawY)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private final boolean isDevicePressEvent(MotionEvent motionEvent) {
        int actionMasked;
        if (motionEvent.getButtonState() != 0 || (actionMasked = motionEvent.getActionMasked()) == 0 || actionMasked == 2 || actionMasked == 6) {
            return true;
        }
        return false;
    }

    private final boolean isInBounds(MotionEvent motionEvent) {
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (0.0f <= x10 && x10 <= getWidth() && 0.0f <= y10 && y10 <= getHeight()) {
            return true;
        }
        return false;
    }

    private final boolean isPositionChanged(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        if (motionEvent.getPointerCount() != 1 || (motionEvent2 = this.previousMotionEvent) == null || motionEvent.getRawX() != motionEvent2.getRawX() || motionEvent.getRawY() != motionEvent2.getRawY()) {
            return true;
        }
        return false;
    }

    private final void recalculateWindowPosition() {
        if (this.forceUseMatrixCache) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (currentAnimationTimeMillis != this.lastMatrixRecalculationAnimationTime) {
            this.lastMatrixRecalculationAnimationTime = currentAnimationTimeMillis;
            recalculateWindowViewTransforms();
            ViewParent parent = getParent();
            View view = this;
            while (parent instanceof ViewGroup) {
                view = (View) parent;
                parent = ((ViewGroup) view).getParent();
            }
            view.getLocationOnScreen(this.tmpPositionArray);
            int[] iArr = this.tmpPositionArray;
            view.getLocationInWindow(iArr);
            int[] iArr2 = this.tmpPositionArray;
            this.windowPosition = OffsetKt.Offset(iArr[0] - iArr2[0], iArr[1] - iArr2[1]);
        }
    }

    private final void recalculateWindowViewTransforms() {
        this.matrixToWindow.mo3530calculateMatrixToWindowEL8BTi8(this, this.viewToWindowMatrix);
        InvertMatrixKt.m3547invertToJiSxe2E(this.viewToWindowMatrix, this.windowToViewMatrix);
    }

    private final void scheduleMeasureAndLayout(LayoutNode layoutNode) {
        if (!isLayoutRequested() && isAttachedToWindow()) {
            if (this.wasMeasuredWithMultipleConstraints && layoutNode != null) {
                while (layoutNode != null && layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock) {
                    layoutNode = layoutNode.getParent$ui_release();
                }
                if (layoutNode == getRoot()) {
                    requestLayout();
                    return;
                }
            }
            if (getWidth() != 0 && getHeight() != 0) {
                invalidate();
            } else {
                requestLayout();
            }
        }
    }

    static /* synthetic */ void scheduleMeasureAndLayout$default(AndroidComposeView androidComposeView, LayoutNode layoutNode, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            layoutNode = null;
        }
        androidComposeView.scheduleMeasureAndLayout(layoutNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: scrollChangedListener$lambda-2  reason: not valid java name */
    public static final void m3514scrollChangedListener$lambda2(AndroidComposeView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.updatePositionCacheAndDispatch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendHoverExitEvent$lambda-5  reason: not valid java name */
    public static final void m3515sendHoverExitEvent$lambda5(AndroidComposeView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.hoverExitReceived = false;
        MotionEvent motionEvent = this$0.previousMotionEvent;
        Intrinsics.checkNotNull(motionEvent);
        if (motionEvent.getActionMasked() == 10) {
            this$0.m3516sendMotionEvent8iAsVTc(motionEvent);
            return;
        }
        throw new IllegalStateException("The ACTION_HOVER_EXIT event was not cleared.");
    }

    /* renamed from: sendMotionEvent-8iAsVTc  reason: not valid java name */
    private final int m3516sendMotionEvent8iAsVTc(MotionEvent motionEvent) {
        PointerInputEventData pointerInputEventData;
        PointerInputEvent convertToPointerInputEvent$ui_release = this.motionEventAdapter.convertToPointerInputEvent$ui_release(motionEvent, this);
        if (convertToPointerInputEvent$ui_release != null) {
            List<PointerInputEventData> pointers = convertToPointerInputEvent$ui_release.getPointers();
            ListIterator<PointerInputEventData> listIterator = pointers.listIterator(pointers.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    pointerInputEventData = listIterator.previous();
                    if (pointerInputEventData.getDown()) {
                        break;
                    }
                } else {
                    pointerInputEventData = null;
                    break;
                }
            }
            PointerInputEventData pointerInputEventData2 = pointerInputEventData;
            if (pointerInputEventData2 != null) {
                this.lastDownPointerPosition = pointerInputEventData2.m3222getPositionF1C5BW0();
            }
            int m3227processBIzXfog = this.pointerInputEventProcessor.m3227processBIzXfog(convertToPointerInputEvent$ui_release, this, isInBounds(motionEvent));
            int actionMasked = motionEvent.getActionMasked();
            if ((actionMasked == 0 || actionMasked == 5) && !ProcessResult.m3295getDispatchedToAPointerInputModifierimpl(m3227processBIzXfog)) {
                this.motionEventAdapter.endStream(motionEvent.getPointerId(motionEvent.getActionIndex()));
                return m3227processBIzXfog;
            }
            return m3227processBIzXfog;
        }
        this.pointerInputEventProcessor.processCancel();
        return PointerInputEventProcessorKt.ProcessResult(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendSimulatedEvent(MotionEvent motionEvent, int i10, long j10, boolean z10) {
        int i11;
        int buttonState;
        long downTime;
        int i12;
        int actionMasked = motionEvent.getActionMasked();
        int i13 = -1;
        if (actionMasked != 1) {
            if (actionMasked == 6) {
                i13 = motionEvent.getActionIndex();
            }
        } else if (i10 != 9 && i10 != 10) {
            i13 = 0;
        }
        int pointerCount = motionEvent.getPointerCount();
        if (i13 >= 0) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        int i14 = pointerCount - i11;
        if (i14 == 0) {
            return;
        }
        MotionEvent.PointerProperties[] pointerPropertiesArr = new MotionEvent.PointerProperties[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            pointerPropertiesArr[i15] = new MotionEvent.PointerProperties();
        }
        MotionEvent.PointerCoords[] pointerCoordsArr = new MotionEvent.PointerCoords[i14];
        for (int i16 = 0; i16 < i14; i16++) {
            pointerCoordsArr[i16] = new MotionEvent.PointerCoords();
        }
        for (int i17 = 0; i17 < i14; i17++) {
            if (i13 >= 0 && i17 >= i13) {
                i12 = 1;
            } else {
                i12 = 0;
            }
            int i18 = i12 + i17;
            motionEvent.getPointerProperties(i18, pointerPropertiesArr[i17]);
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[i17];
            motionEvent.getPointerCoords(i18, pointerCoords);
            long mo3288localToScreenMKHz9U = mo3288localToScreenMKHz9U(OffsetKt.Offset(pointerCoords.x, pointerCoords.y));
            pointerCoords.x = Offset.m1606getXimpl(mo3288localToScreenMKHz9U);
            pointerCoords.y = Offset.m1607getYimpl(mo3288localToScreenMKHz9U);
        }
        if (z10) {
            buttonState = 0;
        } else {
            buttonState = motionEvent.getButtonState();
        }
        if (motionEvent.getDownTime() == motionEvent.getEventTime()) {
            downTime = j10;
        } else {
            downTime = motionEvent.getDownTime();
        }
        MotionEvent event = MotionEvent.obtain(downTime, j10, i10, i14, pointerPropertiesArr, pointerCoordsArr, motionEvent.getMetaState(), buttonState, motionEvent.getXPrecision(), motionEvent.getYPrecision(), motionEvent.getDeviceId(), motionEvent.getEdgeFlags(), motionEvent.getSource(), motionEvent.getFlags());
        MotionEventAdapter motionEventAdapter = this.motionEventAdapter;
        Intrinsics.checkNotNullExpressionValue(event, "event");
        PointerInputEvent convertToPointerInputEvent$ui_release = motionEventAdapter.convertToPointerInputEvent$ui_release(event, this);
        Intrinsics.checkNotNull(convertToPointerInputEvent$ui_release);
        this.pointerInputEventProcessor.m3227processBIzXfog(convertToPointerInputEvent$ui_release, this, true);
        event.recycle();
    }

    static /* synthetic */ void sendSimulatedEvent$default(AndroidComposeView androidComposeView, MotionEvent motionEvent, int i10, long j10, boolean z10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z10 = true;
        }
        androidComposeView.sendSimulatedEvent(motionEvent, i10, j10, z10);
    }

    private void setFontFamilyResolver(FontFamily.Resolver resolver) {
        this.fontFamilyResolver$delegate.setValue(resolver);
    }

    private void setLayoutDirection(LayoutDirection layoutDirection) {
        this.layoutDirection$delegate.setValue(layoutDirection);
    }

    private final void setViewTreeOwners(ViewTreeOwners viewTreeOwners) {
        this.viewTreeOwners$delegate.setValue(viewTreeOwners);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: touchModeChangeListener$lambda-3  reason: not valid java name */
    public static final void m3517touchModeChangeListener$lambda3(AndroidComposeView this$0, boolean z10) {
        int m2473getKeyboardaOaMEAU;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InputModeManagerImpl inputModeManagerImpl = this$0._inputModeManager;
        if (z10) {
            m2473getKeyboardaOaMEAU = InputMode.Companion.m2474getTouchaOaMEAU();
        } else {
            m2473getKeyboardaOaMEAU = InputMode.Companion.m2473getKeyboardaOaMEAU();
        }
        inputModeManagerImpl.m2477setInputModeiuPiT84(m2473getKeyboardaOaMEAU);
        this$0._focusManager.fetchUpdatedFocusProperties();
    }

    private final void updatePositionCacheAndDispatch() {
        getLocationOnScreen(this.tmpPositionArray);
        boolean z10 = false;
        if (IntOffset.m4167getXimpl(this.globalPosition) != this.tmpPositionArray[0] || IntOffset.m4168getYimpl(this.globalPosition) != this.tmpPositionArray[1]) {
            int[] iArr = this.tmpPositionArray;
            this.globalPosition = IntOffsetKt.IntOffset(iArr[0], iArr[1]);
            z10 = true;
        }
        this.measureAndLayoutDelegate.dispatchOnPositionedCallbacks(z10);
    }

    public final void addAndroidView(@NotNull AndroidViewHolder view, @NotNull final LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        getAndroidViewsHandler$ui_release().getHolderToLayoutNode().put(view, layoutNode);
        getAndroidViewsHandler$ui_release().addView(view);
        getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().put(layoutNode, view);
        ViewCompat.setImportantForAccessibility(view, 1);
        ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(@NotNull View host, @NotNull AccessibilityNodeInfoCompat info) {
                Intrinsics.checkNotNullParameter(host, "host");
                Intrinsics.checkNotNullParameter(info, "info");
                super.onInitializeAccessibilityNodeInfo(host, info);
                SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(LayoutNode.this);
                Intrinsics.checkNotNull(outerSemantics);
                SemanticsNode parent = new SemanticsNode(outerSemantics, false).getParent();
                Intrinsics.checkNotNull(parent);
                int id2 = parent.getId();
                if (id2 == this.getSemanticsOwner().getUnmergedRootSemanticsNode().getId()) {
                    id2 = -1;
                }
                info.setParent(this, id2);
            }
        });
    }

    @Override // android.view.View
    public void autofill(@NotNull SparseArray<AutofillValue> values) {
        AndroidAutofill androidAutofill;
        Intrinsics.checkNotNullParameter(values, "values");
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AndroidAutofill_androidKt.performAutofill(androidAutofill, values);
        }
    }

    @Nullable
    public final Object boundsUpdatesEventLoop(@NotNull rs.c<? super Unit> cVar) {
        Object boundsUpdatesEventLoop = this.accessibilityDelegate.boundsUpdatesEventLoop(cVar);
        if (boundsUpdatesEventLoop == kotlin.coroutines.intrinsics.a.f()) {
            return boundsUpdatesEventLoop;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.ui.node.Owner
    /* renamed from: calculateLocalPosition-MK-Hz9U */
    public long mo3507calculateLocalPositionMKHz9U(long j10) {
        recalculateWindowPosition();
        return Matrix.m2042mapMKHz9U(this.windowToViewMatrix, j10);
    }

    @Override // androidx.compose.ui.node.Owner
    /* renamed from: calculatePositionInWindow-MK-Hz9U */
    public long mo3508calculatePositionInWindowMKHz9U(long j10) {
        recalculateWindowPosition();
        return Matrix.m2042mapMKHz9U(this.viewToWindowMatrix, j10);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        return this.accessibilityDelegate.m3522canScroll0AR0LA0$ui_release(false, i10, this.lastDownPointerPosition);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        return this.accessibilityDelegate.m3522canScroll0AR0LA0$ui_release(true, i10, this.lastDownPointerPosition);
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public OwnedLayer createLayer(@NotNull Function1<? super Canvas, Unit> drawBlock, @NotNull Function0<Unit> invalidateParentLayer) {
        DrawChildContainer viewLayerContainer;
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        Intrinsics.checkNotNullParameter(invalidateParentLayer, "invalidateParentLayer");
        OwnedLayer pop = this.layerCache.pop();
        if (pop != null) {
            pop.reuseLayer(drawBlock, invalidateParentLayer);
            return pop;
        }
        if (isHardwareAccelerated() && this.isRenderNodeCompatible) {
            try {
                return new RenderNodeLayer(this, drawBlock, invalidateParentLayer);
            } catch (Throwable unused) {
                this.isRenderNodeCompatible = false;
            }
        }
        if (this.viewLayersContainer == null) {
            ViewLayer.Companion companion = ViewLayer.Companion;
            if (!companion.getHasRetrievedMethod()) {
                companion.updateDisplayList(new View(getContext()));
            }
            if (companion.getShouldUseDispatchDraw()) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                viewLayerContainer = new DrawChildContainer(context);
            } else {
                Context context2 = getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                viewLayerContainer = new ViewLayerContainer(context2);
            }
            this.viewLayersContainer = viewLayerContainer;
            addView(viewLayerContainer);
        }
        DrawChildContainer drawChildContainer = this.viewLayersContainer;
        Intrinsics.checkNotNull(drawChildContainer);
        return new ViewLayer(this, drawChildContainer, drawBlock, invalidateParentLayer);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NotNull android.graphics.Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (!isAttachedToWindow()) {
            invalidateLayers(getRoot());
        }
        Owner.measureAndLayout$default(this, false, 1, null);
        this.isDrawingContent = true;
        CanvasHolder canvasHolder = this.canvasHolder;
        android.graphics.Canvas internalCanvas = canvasHolder.getAndroidCanvas().getInternalCanvas();
        canvasHolder.getAndroidCanvas().setInternalCanvas(canvas);
        getRoot().draw$ui_release(canvasHolder.getAndroidCanvas());
        canvasHolder.getAndroidCanvas().setInternalCanvas(internalCanvas);
        if (!this.dirtyLayers.isEmpty()) {
            int size = this.dirtyLayers.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.dirtyLayers.get(i10).updateDisplayList();
            }
        }
        if (ViewLayer.Companion.getShouldUseDispatchDraw()) {
            int save = canvas.save();
            canvas.clipRect(0.0f, 0.0f, 0.0f, 0.0f);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(save);
        }
        this.dirtyLayers.clear();
        this.isDrawingContent = false;
        List<OwnedLayer> list = this.postponedDirtyLayers;
        if (list != null) {
            Intrinsics.checkNotNull(list);
            this.dirtyLayers.addAll(list);
            list.clear();
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getActionMasked() == 8) {
            if (event.isFromSource(4194304)) {
                return handleRotaryEvent(event);
            }
            if (!isBadMotionEvent(event) && isAttachedToWindow()) {
                return ProcessResult.m3295getDispatchedToAPointerInputModifierimpl(m3513handleMotionEvent8iAsVTc(event));
            }
            return super.dispatchGenericMotionEvent(event);
        }
        return super.dispatchGenericMotionEvent(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            this.sendHoverExitEvent.run();
        }
        if (isBadMotionEvent(event) || !isAttachedToWindow()) {
            return false;
        }
        if (event.isFromSource(InputDeviceCompat.SOURCE_TOUCHSCREEN) && event.getToolType(0) == 1) {
            return this.accessibilityDelegate.dispatchHoverEvent(event);
        }
        int actionMasked = event.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10 && isInBounds(event)) {
                if (event.getToolType(0) != 3) {
                    MotionEvent motionEvent = this.previousMotionEvent;
                    if (motionEvent != null) {
                        motionEvent.recycle();
                    }
                    this.previousMotionEvent = MotionEvent.obtainNoHistory(event);
                    this.hoverExitReceived = true;
                    post(this.sendHoverExitEvent);
                    return false;
                } else if (event.getButtonState() != 0) {
                    return false;
                }
            }
        } else if (!isPositionChanged(event)) {
            return false;
        }
        return ProcessResult.m3295getDispatchedToAPointerInputModifierimpl(m3513handleMotionEvent8iAsVTc(event));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(@NotNull android.view.KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isFocused()) {
            return mo3511sendKeyEventZmokQxo(KeyEvent.m3060constructorimpl(event));
        }
        return super.dispatchKeyEvent(event);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (this.hoverExitReceived) {
            removeCallbacks(this.sendHoverExitEvent);
            MotionEvent motionEvent2 = this.previousMotionEvent;
            Intrinsics.checkNotNull(motionEvent2);
            if (motionEvent.getActionMasked() == 0 && !hasChangedDevices(motionEvent, motionEvent2)) {
                this.hoverExitReceived = false;
            } else {
                this.sendHoverExitEvent.run();
            }
        }
        if (isBadMotionEvent(motionEvent) || !isAttachedToWindow()) {
            return false;
        }
        if (motionEvent.getActionMasked() == 2 && !isPositionChanged(motionEvent)) {
            return false;
        }
        int m3513handleMotionEvent8iAsVTc = m3513handleMotionEvent8iAsVTc(motionEvent);
        if (ProcessResult.m3294getAnyMovementConsumedimpl(m3513handleMotionEvent8iAsVTc)) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return ProcessResult.m3295getDispatchedToAPointerInputModifierimpl(m3513handleMotionEvent8iAsVTc);
    }

    public final void drawAndroidView(@NotNull AndroidViewHolder view, @NotNull android.graphics.Canvas canvas) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        getAndroidViewsHandler$ui_release().drawView(view, canvas);
    }

    @Nullable
    public final View findViewByAccessibilityIdTraversal(int i10) {
        View view = null;
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(this, Integer.valueOf(i10));
                if (invoke instanceof View) {
                    view = (View) invoke;
                }
            } else {
                view = findViewByAccessibilityIdRootedAtCurrentView(i10, this);
            }
        } catch (NoSuchMethodException unused) {
        }
        return view;
    }

    @Override // androidx.compose.ui.node.Owner
    public void forceMeasureTheSubtree(@NotNull LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.measureAndLayoutDelegate.forceMeasureTheSubtree(layoutNode);
    }

    @NotNull
    public final AndroidViewsHandler getAndroidViewsHandler$ui_release() {
        if (this._androidViewsHandler == null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(context);
            this._androidViewsHandler = androidViewsHandler;
            addView(androidViewsHandler);
        }
        AndroidViewsHandler androidViewsHandler2 = this._androidViewsHandler;
        Intrinsics.checkNotNull(androidViewsHandler2);
        return androidViewsHandler2;
    }

    @Override // androidx.compose.ui.node.Owner
    @Nullable
    public Autofill getAutofill() {
        return this._autofill;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public AutofillTree getAutofillTree() {
        return this.autofillTree;
    }

    @NotNull
    public final Function1<Configuration, Unit> getConfigurationChangeObserver() {
        return this.configurationChangeObserver;
    }

    @Override // androidx.compose.ui.node.Owner, androidx.compose.ui.node.RootForTest
    @NotNull
    public Density getDensity() {
        return this.density;
    }

    @Override // androidx.compose.ui.node.Owner
    @Nullable
    /* renamed from: getFocusDirection-P8AzH3I */
    public FocusDirection mo3509getFocusDirectionP8AzH3I(@NotNull android.view.KeyEvent keyEvent) {
        boolean m2481equalsimpl0;
        boolean m2481equalsimpl02;
        int m1551getNextdhqQ8s;
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        long m3076getKeyZmokQxo = KeyEvent_androidKt.m3076getKeyZmokQxo(keyEvent);
        Key.Companion companion = Key.Companion;
        if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m3004getTabEK5gGoQ())) {
            if (KeyEvent_androidKt.m3082isShiftPressedZmokQxo(keyEvent)) {
                m1551getNextdhqQ8s = FocusDirection.Companion.m1553getPreviousdhqQ8s();
            } else {
                m1551getNextdhqQ8s = FocusDirection.Companion.m1551getNextdhqQ8s();
            }
            return FocusDirection.m1539boximpl(m1551getNextdhqQ8s);
        } else if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2845getDirectionRightEK5gGoQ())) {
            return FocusDirection.m1539boximpl(FocusDirection.Companion.m1554getRightdhqQ8s());
        } else {
            if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2844getDirectionLeftEK5gGoQ())) {
                return FocusDirection.m1539boximpl(FocusDirection.Companion.m1550getLeftdhqQ8s());
            }
            if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2846getDirectionUpEK5gGoQ())) {
                return FocusDirection.m1539boximpl(FocusDirection.Companion.m1555getUpdhqQ8s());
            }
            if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2841getDirectionDownEK5gGoQ())) {
                return FocusDirection.m1539boximpl(FocusDirection.Companion.m1548getDowndhqQ8s());
            }
            boolean z10 = true;
            if (Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2840getDirectionCenterEK5gGoQ())) {
                m2481equalsimpl0 = true;
            } else {
                m2481equalsimpl0 = Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2854getEnterEK5gGoQ());
            }
            if (m2481equalsimpl0) {
                m2481equalsimpl02 = true;
            } else {
                m2481equalsimpl02 = Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2946getNumPadEnterEK5gGoQ());
            }
            if (m2481equalsimpl02) {
                return FocusDirection.m1539boximpl(FocusDirection.Companion.m1549getIndhqQ8s());
            }
            if (!Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2783getBackEK5gGoQ())) {
                z10 = Key.m2481equalsimpl0(m3076getKeyZmokQxo, companion.m2857getEscapeEK5gGoQ());
            }
            if (z10) {
                return FocusDirection.m1539boximpl(FocusDirection.Companion.m1552getOutdhqQ8s());
            }
            return null;
        }
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public FocusManager getFocusManager() {
        return this._focusManager;
    }

    @Override // android.view.View
    public void getFocusedRect(@NotNull Rect rect) {
        Unit unit;
        androidx.compose.ui.geometry.Rect focusRect;
        Intrinsics.checkNotNullParameter(rect, "rect");
        FocusModifier activeFocusModifier$ui_release = this._focusManager.getActiveFocusModifier$ui_release();
        if (activeFocusModifier$ui_release != null && (focusRect = FocusTraversalKt.focusRect(activeFocusModifier$ui_release)) != null) {
            rect.left = bt.a.c(focusRect.getLeft());
            rect.top = bt.a.c(focusRect.getTop());
            rect.right = bt.a.c(focusRect.getRight());
            rect.bottom = bt.a.c(focusRect.getBottom());
            unit = Unit.f60915a;
        } else {
            unit = null;
        }
        if (unit == null) {
            super.getFocusedRect(rect);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public FontFamily.Resolver getFontFamilyResolver() {
        return (FontFamily.Resolver) this.fontFamilyResolver$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public Font.ResourceLoader getFontLoader() {
        return this.fontLoader;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public boolean getHasPendingMeasureOrLayout() {
        return this.measureAndLayoutDelegate.getHasPendingMeasureOrLayout();
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public InputModeManager getInputModeManager() {
        return this._inputModeManager;
    }

    public final long getLastMatrixRecalculationAnimationTime$ui_release() {
        return this.lastMatrixRecalculationAnimationTime;
    }

    @Override // android.view.View, android.view.ViewParent, androidx.compose.ui.node.Owner
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) this.layoutDirection$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public long getMeasureIteration() {
        return this.measureAndLayoutDelegate.getMeasureIteration();
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public PointerIconService getPointerIconService() {
        return this.pointerIconService;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public LayoutNode getRoot() {
        return this.root;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public RootForTest getRootForTest() {
        return this.rootForTest;
    }

    @Override // androidx.compose.ui.node.RootForTest
    @NotNull
    public SemanticsOwner getSemanticsOwner() {
        return this.semanticsOwner;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public LayoutNodeDrawScope getSharedDrawScope() {
        return this.sharedDrawScope;
    }

    @Override // androidx.compose.ui.node.Owner
    public boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.snapshotObserver;
    }

    @Override // androidx.compose.ui.node.Owner, androidx.compose.ui.node.RootForTest
    @NotNull
    public TextInputService getTextInputService() {
        return this.textInputService;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    @Nullable
    public final ViewTreeOwners getViewTreeOwners() {
        return (ViewTreeOwners) this.viewTreeOwners$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public WindowInfo getWindowInfo() {
        return this._windowInfo;
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public void invalidateDescendants() {
        invalidateLayers(getRoot());
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public boolean isLifecycleInResumedState() {
        Lifecycle.State state;
        LifecycleOwner lifecycleOwner;
        Lifecycle lifecycle;
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners != null && (lifecycleOwner = viewTreeOwners.getLifecycleOwner()) != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            state = lifecycle.getCurrentState();
        } else {
            state = null;
        }
        if (state == Lifecycle.State.RESUMED) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object keyboardVisibilityEventLoop(@NotNull rs.c<? super Unit> cVar) {
        Object textInputCommandEventLoop = this.textInputServiceAndroid.textInputCommandEventLoop(cVar);
        if (textInputCommandEventLoop == kotlin.coroutines.intrinsics.a.f()) {
            return textInputCommandEventLoop;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    /* renamed from: localToScreen-MK-Hz9U */
    public long mo3288localToScreenMKHz9U(long j10) {
        recalculateWindowPosition();
        long m2042mapMKHz9U = Matrix.m2042mapMKHz9U(this.viewToWindowMatrix, j10);
        return OffsetKt.Offset(Offset.m1606getXimpl(m2042mapMKHz9U) + Offset.m1606getXimpl(this.windowPosition), Offset.m1607getYimpl(m2042mapMKHz9U) + Offset.m1607getYimpl(this.windowPosition));
    }

    @Override // androidx.compose.ui.node.Owner
    public void measureAndLayout(boolean z10) {
        Function0<Unit> function0;
        Trace.beginSection("AndroidOwner:measureAndLayout");
        if (z10) {
            try {
                function0 = this.resendMotionEventOnLayout;
            } catch (Throwable th2) {
                Trace.endSection();
                throw th2;
            }
        } else {
            function0 = null;
        }
        if (this.measureAndLayoutDelegate.measureAndLayout(function0)) {
            requestLayout();
        }
        MeasureAndLayoutDelegate.dispatchOnPositionedCallbacks$default(this.measureAndLayoutDelegate, false, 1, null);
        Unit unit = Unit.f60915a;
        Trace.endSection();
    }

    @Override // androidx.compose.ui.node.Owner
    /* renamed from: measureAndLayout-0kLqBqw */
    public void mo3510measureAndLayout0kLqBqw(@NotNull LayoutNode layoutNode, long j10) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        Trace.beginSection("AndroidOwner:measureAndLayout");
        try {
            this.measureAndLayoutDelegate.m3496measureAndLayout0kLqBqw(layoutNode, j10);
            MeasureAndLayoutDelegate.dispatchOnPositionedCallbacks$default(this.measureAndLayoutDelegate, false, 1, null);
            Unit unit = Unit.f60915a;
        } finally {
            Trace.endSection();
        }
    }

    public final void notifyLayerIsDirty$ui_release(@NotNull OwnedLayer layer, boolean z10) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        if (!z10) {
            if (!this.isDrawingContent && !this.dirtyLayers.remove(layer)) {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else if (!this.isDrawingContent) {
            this.dirtyLayers.add(layer);
        } else {
            List list = this.postponedDirtyLayers;
            if (list == null) {
                list = new ArrayList();
                this.postponedDirtyLayers = list;
            }
            list.add(layer);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onAttach(@NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        LifecycleOwner lifecycleOwner;
        Lifecycle lifecycle;
        AndroidAutofill androidAutofill;
        super.onAttachedToWindow();
        invalidateLayoutNodeMeasurement(getRoot());
        invalidateLayers(getRoot());
        getSnapshotObserver().startObserving$ui_release();
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.register(androidAutofill);
        }
        LifecycleOwner lifecycleOwner2 = ViewTreeLifecycleOwner.get(this);
        SavedStateRegistryOwner savedStateRegistryOwner = ViewTreeSavedStateRegistryOwner.get(this);
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners == null || (lifecycleOwner2 != null && savedStateRegistryOwner != null && (lifecycleOwner2 != viewTreeOwners.getLifecycleOwner() || savedStateRegistryOwner != viewTreeOwners.getLifecycleOwner()))) {
            if (lifecycleOwner2 != null) {
                if (savedStateRegistryOwner != null) {
                    if (viewTreeOwners != null && (lifecycleOwner = viewTreeOwners.getLifecycleOwner()) != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
                        lifecycle.removeObserver(this);
                    }
                    lifecycleOwner2.getLifecycle().addObserver(this);
                    ViewTreeOwners viewTreeOwners2 = new ViewTreeOwners(lifecycleOwner2, savedStateRegistryOwner);
                    setViewTreeOwners(viewTreeOwners2);
                    Function1<? super ViewTreeOwners, Unit> function1 = this.onViewTreeOwnersAvailable;
                    if (function1 != null) {
                        function1.invoke(viewTreeOwners2);
                    }
                    this.onViewTreeOwnersAvailable = null;
                } else {
                    throw new IllegalStateException("Composed into the View which doesn't propagateViewTreeSavedStateRegistryOwner!");
                }
            } else {
                throw new IllegalStateException("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
            }
        }
        ViewTreeOwners viewTreeOwners3 = getViewTreeOwners();
        Intrinsics.checkNotNull(viewTreeOwners3);
        viewTreeOwners3.getLifecycleOwner().getLifecycle().addObserver(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().addOnScrollChangedListener(this.scrollChangedListener);
        getViewTreeObserver().addOnTouchModeChangeListener(this.touchModeChangeListener);
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return this.textInputServiceAndroid.isEditorFocused();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        this.density = AndroidDensity_androidKt.Density(context);
        if (getFontWeightAdjustmentCompat(newConfig) != this.currentFontWeightAdjustment) {
            this.currentFontWeightAdjustment = getFontWeightAdjustmentCompat(newConfig);
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            setFontFamilyResolver(FontFamilyResolver_androidKt.createFontFamilyResolver(context2));
        }
        this.configurationChangeObserver.invoke(newConfig);
    }

    @Override // android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NotNull EditorInfo outAttrs) {
        Intrinsics.checkNotNullParameter(outAttrs, "outAttrs");
        return this.textInputServiceAndroid.createInputConnection(outAttrs);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onDetach(@NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.measureAndLayoutDelegate.onNodeDetached(node);
        requestClearInvalidObservations();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        AndroidAutofill androidAutofill;
        LifecycleOwner lifecycleOwner;
        Lifecycle lifecycle;
        super.onDetachedFromWindow();
        getSnapshotObserver().stopObserving$ui_release();
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners != null && (lifecycleOwner = viewTreeOwners.getLifecycleOwner()) != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.removeObserver(this);
        }
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.unregister(androidAutofill);
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangedListener);
        getViewTreeObserver().removeOnTouchModeChangeListener(this.touchModeChangeListener);
    }

    @Override // android.view.View
    protected void onDraw(@NotNull android.graphics.Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
    }

    @Override // androidx.compose.ui.node.Owner
    public void onEndApplyChanges() {
        if (this.observationClearRequested) {
            getSnapshotObserver().clearInvalidObservations$ui_release();
            this.observationClearRequested = false;
        }
        AndroidViewsHandler androidViewsHandler = this._androidViewsHandler;
        if (androidViewsHandler != null) {
            clearChildInvalidObservations(androidViewsHandler);
        }
        while (this.endApplyChangesListeners.isNotEmpty()) {
            int size = this.endApplyChangesListeners.getSize();
            for (int i10 = 0; i10 < size; i10++) {
                Function0<Unit> function0 = this.endApplyChangesListeners.getContent()[i10];
                this.endApplyChangesListeners.set(i10, null);
                if (function0 != null) {
                    function0.invoke();
                }
            }
            this.endApplyChangesListeners.removeRange(0, size);
        }
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i10, @Nullable Rect rect) {
        super.onFocusChanged(z10, i10, rect);
        Log.d(FocusTag, "Owner FocusChanged(" + z10 + ')');
        FocusManagerImpl focusManagerImpl = this._focusManager;
        if (z10) {
            focusManagerImpl.takeFocus();
        } else {
            focusManagerImpl.releaseFocus();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.onMeasureConstraints = null;
        updatePositionCacheAndDispatch();
        if (this._androidViewsHandler != null) {
            getAndroidViewsHandler$ui_release().layout(0, 0, i12 - i10, i13 - i11);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onLayoutChange(@NotNull LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.accessibilityDelegate.onLayoutChange$ui_release(layoutNode);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!isAttachedToWindow()) {
                invalidateLayoutNodeMeasurement(getRoot());
            }
            Pair<Integer, Integer> convertMeasureSpec = convertMeasureSpec(i10);
            int intValue = convertMeasureSpec.b().intValue();
            int intValue2 = convertMeasureSpec.d().intValue();
            Pair<Integer, Integer> convertMeasureSpec2 = convertMeasureSpec(i11);
            long Constraints = ConstraintsKt.Constraints(intValue, intValue2, convertMeasureSpec2.b().intValue(), convertMeasureSpec2.d().intValue());
            Constraints constraints = this.onMeasureConstraints;
            boolean z10 = false;
            if (constraints == null) {
                this.onMeasureConstraints = Constraints.m3993boximpl(Constraints);
                this.wasMeasuredWithMultipleConstraints = false;
            } else {
                if (constraints != null) {
                    z10 = Constraints.m3998equalsimpl0(constraints.m4011unboximpl(), Constraints);
                }
                if (!z10) {
                    this.wasMeasuredWithMultipleConstraints = true;
                }
            }
            this.measureAndLayoutDelegate.m3497updateRootConstraintsBRTryo0(Constraints);
            this.measureAndLayoutDelegate.measureAndLayout(this.resendMotionEventOnLayout);
            setMeasuredDimension(getRoot().getWidth(), getRoot().getHeight());
            if (this._androidViewsHandler != null) {
                getAndroidViewsHandler$ui_release().measure(View.MeasureSpec.makeMeasureSpec(getRoot().getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getRoot().getHeight(), 1073741824));
            }
            Unit unit = Unit.f60915a;
            Trace.endSection();
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(@Nullable ViewStructure viewStructure, int i10) {
        AndroidAutofill androidAutofill;
        if (autofillSupported() && viewStructure != null && (androidAutofill = this._autofill) != null) {
            AndroidAutofill_androidKt.populateViewStructure(androidAutofill, viewStructure);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onRequestMeasure(@NotNull LayoutNode layoutNode, boolean z10) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        if (this.measureAndLayoutDelegate.requestRemeasure(layoutNode, z10)) {
            scheduleMeasureAndLayout(layoutNode);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onRequestRelayout(@NotNull LayoutNode layoutNode, boolean z10) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        if (this.measureAndLayoutDelegate.requestRelayout(layoutNode, z10)) {
            scheduleMeasureAndLayout$default(this, null, 1, null);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        setShowLayoutBounds(Companion.getIsShowingLayoutBounds());
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
        LayoutDirection layoutDirectionFromInt;
        if (this.superclassInitComplete) {
            layoutDirectionFromInt = AndroidComposeView_androidKt.layoutDirectionFromInt(i10);
            setLayoutDirection(layoutDirectionFromInt);
            this._focusManager.setLayoutDirection(layoutDirectionFromInt);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onSemanticsChange() {
        this.accessibilityDelegate.onSemanticsChange$ui_release();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        boolean isShowingLayoutBounds;
        this._windowInfo.setWindowFocused(z10);
        super.onWindowFocusChanged(z10);
        if (z10 && getShowLayoutBounds() != (isShowingLayoutBounds = Companion.getIsShowingLayoutBounds())) {
            setShowLayoutBounds(isShowingLayoutBounds);
            invalidateDescendants();
        }
    }

    public final boolean recycle$ui_release(@NotNull OwnedLayer layer) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        if (this.viewLayersContainer != null) {
            ViewLayer.Companion.getShouldUseDispatchDraw();
        }
        this.layerCache.push(layer);
        return true;
    }

    @Override // androidx.compose.ui.node.Owner
    public void registerOnEndApplyChangesListener(@NotNull Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (!this.endApplyChangesListeners.contains(listener)) {
            this.endApplyChangesListeners.add(listener);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void registerOnLayoutCompletedListener(@NotNull Owner.OnLayoutCompletedListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.measureAndLayoutDelegate.registerOnLayoutCompletedListener(listener);
        scheduleMeasureAndLayout$default(this, null, 1, null);
    }

    public final void removeAndroidView(@NotNull AndroidViewHolder view) {
        Intrinsics.checkNotNullParameter(view, "view");
        getAndroidViewsHandler$ui_release().removeView(view);
        HashMap<LayoutNode, AndroidViewHolder> layoutNodeToHolder = getAndroidViewsHandler$ui_release().getLayoutNodeToHolder();
        TypeIntrinsics.asMutableMap(layoutNodeToHolder).remove(getAndroidViewsHandler$ui_release().getHolderToLayoutNode().remove(view));
        ViewCompat.setImportantForAccessibility(view, 0);
    }

    public final void requestClearInvalidObservations() {
        this.observationClearRequested = true;
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    /* renamed from: screenToLocal-MK-Hz9U */
    public long mo3289screenToLocalMKHz9U(long j10) {
        recalculateWindowPosition();
        return Matrix.m2042mapMKHz9U(this.windowToViewMatrix, OffsetKt.Offset(Offset.m1606getXimpl(j10) - Offset.m1606getXimpl(this.windowPosition), Offset.m1607getYimpl(j10) - Offset.m1607getYimpl(this.windowPosition)));
    }

    @Override // androidx.compose.ui.node.RootForTest
    /* renamed from: sendKeyEvent-ZmokQxo */
    public boolean mo3511sendKeyEventZmokQxo(@NotNull android.view.KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        return this.keyInputModifier.m3083processKeyInputZmokQxo(keyEvent);
    }

    public final void setConfigurationChangeObserver(@NotNull Function1<? super Configuration, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.configurationChangeObserver = function1;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui_release(long j10) {
        this.lastMatrixRecalculationAnimationTime = j10;
    }

    public final void setOnViewTreeOwnersAvailable(@NotNull Function1<? super ViewTreeOwners, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners != null) {
            callback.invoke(viewTreeOwners);
        }
        if (!isAttachedToWindow()) {
            this.onViewTreeOwnersAvailable = callback;
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void setShowLayoutBounds(boolean z10) {
        this.showLayoutBounds = z10;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public AndroidAccessibilityManager getAccessibilityManager() {
        return this.accessibilityManager;
    }

    @Override // androidx.compose.ui.node.Owner
    @NotNull
    public AndroidClipboardManager getClipboardManager() {
        return this.clipboardManager;
    }

    @ms.c
    public static /* synthetic */ void getFontLoader$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui_release$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    public static /* synthetic */ void getTextInputService$annotations() {
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    @NotNull
    public View getView() {
        return this;
    }

    private final void recalculateWindowPosition(MotionEvent motionEvent) {
        this.lastMatrixRecalculationAnimationTime = AnimationUtils.currentAnimationTimeMillis();
        recalculateWindowViewTransforms();
        long m2042mapMKHz9U = Matrix.m2042mapMKHz9U(this.viewToWindowMatrix, OffsetKt.Offset(motionEvent.getX(), motionEvent.getY()));
        this.windowPosition = OffsetKt.Offset(motionEvent.getRawX() - Offset.m1606getXimpl(m2042mapMKHz9U), motionEvent.getRawY() - Offset.m1607getYimpl(m2042mapMKHz9U));
    }
}
