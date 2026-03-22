package androidx.compose.ui.platform;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.SpannableString;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArraySet;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.R;
import androidx.compose.ui.TempListUtilsKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.node.HitTestResult;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AccessibilityIterators;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.accessibility.CollectionInfoKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsEntity;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidAccessibilitySpannableString_androidKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat extends AccessibilityDelegateCompat {
    public static final int AccessibilityCursorPositionUndefined = -1;
    public static final int AccessibilitySliderStepsCount = 20;
    @NotNull
    public static final String ClassName = "android.view.View";
    @NotNull
    public static final String ExtraDataTestTagKey = "androidx.compose.ui.semantics.testTag";
    public static final int InvalidId = Integer.MIN_VALUE;
    @NotNull
    public static final String LogTag = "AccessibilityDelegate";
    public static final int ParcelSafeTextLength = 100000;
    public static final long SendRecurringAccessibilityEventsIntervalMillis = 100;
    public static final long TextTraversedEventTimeoutMillis = 1000;
    private int accessibilityCursorPosition;
    private boolean accessibilityForceEnabledForTesting;
    @NotNull
    private final android.view.accessibility.AccessibilityManager accessibilityManager;
    @NotNull
    private SparseArrayCompat<SparseArrayCompat<CharSequence>> actionIdToLabel;
    @NotNull
    private final jt.d<Unit> boundsUpdateChannel;
    private boolean checkingForSemanticsChanges;
    @NotNull
    private Map<Integer, SemanticsNodeWithAdjustedBounds> currentSemanticsNodes;
    private boolean currentSemanticsNodesInvalidated;
    private int focusedVirtualViewId;
    @NotNull
    private final Handler handler;
    private int hoveredVirtualViewId;
    @NotNull
    private SparseArrayCompat<Map<CharSequence, Integer>> labelToActionId;
    @NotNull
    private AccessibilityNodeProviderCompat nodeProvider;
    @NotNull
    private ArraySet<Integer> paneDisplayed;
    @Nullable
    private PendingTextTraversedEvent pendingTextTraversedEvent;
    @NotNull
    private Map<Integer, SemanticsNodeCopy> previousSemanticsNodes;
    @NotNull
    private SemanticsNodeCopy previousSemanticsRoot;
    @Nullable
    private Integer previousTraversedNode;
    @NotNull
    private final List<ScrollObservationScope> scrollObservationScopes;
    @NotNull
    private final Runnable semanticsChangeChecker;
    @NotNull
    private final Function1<ScrollObservationScope, Unit> sendScrollEventIfNeededLambda;
    @NotNull
    private final ArraySet<LayoutNode> subtreeChangedLayoutNodes;
    @NotNull
    private final AndroidComposeView view;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final int[] AccessibilityActionsResourceIds = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
    @RequiresApi(24)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api24Impl {
        @NotNull
        public static final Api24Impl INSTANCE = new Api24Impl();

        private Api24Impl() {
        }

        @DoNotInline
        public static final void addSetProgressAction(@NotNull AccessibilityNodeInfoCompat info, @NotNull SemanticsNode semanticsNode) {
            boolean enabled;
            AccessibilityAction accessibilityAction;
            Intrinsics.checkNotNullParameter(info, "info");
            Intrinsics.checkNotNullParameter(semanticsNode, "semanticsNode");
            enabled = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
            if (enabled && (accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), SemanticsActions.INSTANCE.getSetProgress())) != null) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16908349, accessibilityAction.getLabel()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
    @RequiresApi(28)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        @NotNull
        public static final Api28Impl INSTANCE = new Api28Impl();

        private Api28Impl() {
        }

        @DoNotInline
        public static final void setScrollEventDelta(@NotNull AccessibilityEvent event, int i10, int i11) {
            Intrinsics.checkNotNullParameter(event, "event");
            event.setScrollDeltaX(i10);
            event.setScrollDeltaY(i11);
        }
    }

    /* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public final class MyNodeProvider extends AccessibilityNodeProvider {
        public MyNodeProvider() {
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public void addExtraDataToAccessibilityNodeInfo(int i10, @NotNull AccessibilityNodeInfo info, @NotNull String extraDataKey, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(info, "info");
            Intrinsics.checkNotNullParameter(extraDataKey, "extraDataKey");
            AndroidComposeViewAccessibilityDelegateCompat.this.addExtraDataToAccessibilityNodeInfoHelper(i10, info, extraDataKey, bundle);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        @Nullable
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
            return AndroidComposeViewAccessibilityDelegateCompat.this.createNodeInfo(i10);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i10, int i11, @Nullable Bundle bundle) {
            return AndroidComposeViewAccessibilityDelegateCompat.this.performActionHelper(i10, i11, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class PendingTextTraversedEvent {
        private final int action;
        private final int fromIndex;
        private final int granularity;
        @NotNull
        private final SemanticsNode node;
        private final int toIndex;
        private final long traverseTime;

        public PendingTextTraversedEvent(@NotNull SemanticsNode node, int i10, int i11, int i12, int i13, long j10) {
            Intrinsics.checkNotNullParameter(node, "node");
            this.node = node;
            this.action = i10;
            this.granularity = i11;
            this.fromIndex = i12;
            this.toIndex = i13;
            this.traverseTime = j10;
        }

        public final int getAction() {
            return this.action;
        }

        public final int getFromIndex() {
            return this.fromIndex;
        }

        public final int getGranularity() {
            return this.granularity;
        }

        @NotNull
        public final SemanticsNode getNode() {
            return this.node;
        }

        public final int getToIndex() {
            return this.toIndex;
        }

        public final long getTraverseTime() {
            return this.traverseTime;
        }
    }

    /* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
    @Metadata
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class SemanticsNodeCopy {
        @NotNull
        private final Set<Integer> children;
        @NotNull
        private final SemanticsConfiguration unmergedConfig;

        public SemanticsNodeCopy(@NotNull SemanticsNode semanticsNode, @NotNull Map<Integer, SemanticsNodeWithAdjustedBounds> currentSemanticsNodes) {
            Intrinsics.checkNotNullParameter(semanticsNode, "semanticsNode");
            Intrinsics.checkNotNullParameter(currentSemanticsNodes, "currentSemanticsNodes");
            this.unmergedConfig = semanticsNode.getUnmergedConfig$ui_release();
            this.children = new LinkedHashSet();
            List<SemanticsNode> replacedChildren$ui_release = semanticsNode.getReplacedChildren$ui_release();
            int size = replacedChildren$ui_release.size();
            for (int i10 = 0; i10 < size; i10++) {
                SemanticsNode semanticsNode2 = replacedChildren$ui_release.get(i10);
                if (currentSemanticsNodes.containsKey(Integer.valueOf(semanticsNode2.getId()))) {
                    this.children.add(Integer.valueOf(semanticsNode2.getId()));
                }
            }
        }

        @NotNull
        public final Set<Integer> getChildren() {
            return this.children;
        }

        @NotNull
        public final SemanticsConfiguration getUnmergedConfig() {
            return this.unmergedConfig;
        }

        public final boolean hasPaneTitle() {
            return this.unmergedConfig.contains(SemanticsProperties.INSTANCE.getPaneTitle());
        }
    }

    /* compiled from: AndroidComposeViewAccessibilityDelegateCompat.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            iArr[ToggleableState.On.ordinal()] = 1;
            iArr[ToggleableState.Off.ordinal()] = 2;
            iArr[ToggleableState.Indeterminate.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AndroidComposeViewAccessibilityDelegateCompat(@NotNull AndroidComposeView view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
        this.hoveredVirtualViewId = Integer.MIN_VALUE;
        Object systemService = view.getContext().getSystemService("accessibility");
        if (systemService != null) {
            this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
            this.handler = new Handler(Looper.getMainLooper());
            this.nodeProvider = new AccessibilityNodeProviderCompat(new MyNodeProvider());
            this.focusedVirtualViewId = Integer.MIN_VALUE;
            this.actionIdToLabel = new SparseArrayCompat<>();
            this.labelToActionId = new SparseArrayCompat<>();
            this.accessibilityCursorPosition = -1;
            this.subtreeChangedLayoutNodes = new ArraySet<>();
            this.boundsUpdateChannel = jt.g.b(-1, null, null, 6, null);
            this.currentSemanticsNodesInvalidated = true;
            this.currentSemanticsNodes = kotlin.collections.p0.i();
            this.paneDisplayed = new ArraySet<>();
            this.previousSemanticsNodes = new LinkedHashMap();
            this.previousSemanticsRoot = new SemanticsNodeCopy(view.getSemanticsOwner().getUnmergedRootSemanticsNode(), kotlin.collections.p0.i());
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull View view2) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull View view2) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                    AndroidComposeViewAccessibilityDelegateCompat.this.handler.removeCallbacks(AndroidComposeViewAccessibilityDelegateCompat.this.semanticsChangeChecker);
                }
            });
            this.semanticsChangeChecker = new Runnable() { // from class: androidx.compose.ui.platform.h
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidComposeViewAccessibilityDelegateCompat.m3521semanticsChangeChecker$lambda26(AndroidComposeViewAccessibilityDelegateCompat.this);
                }
            };
            this.scrollObservationScopes = new ArrayList();
            this.sendScrollEventIfNeededLambda = new Function1<ScrollObservationScope, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeededLambda$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ScrollObservationScope scrollObservationScope) {
                    invoke2(scrollObservationScope);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull ScrollObservationScope it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    AndroidComposeViewAccessibilityDelegateCompat.this.sendScrollEventIfNeeded(it);
                }
            };
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addExtraDataToAccessibilityNodeInfoHelper(int i10, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        SemanticsNode semanticsNode;
        String str2;
        int i11;
        Boolean bool;
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(Integer.valueOf(i10));
        if (semanticsNodeWithAdjustedBounds != null && (semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode()) != null) {
            String iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode);
            SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
            SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
            if (unmergedConfig$ui_release.contains(semanticsActions.getGetTextLayoutResult()) && bundle != null && Intrinsics.areEqual(str, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY")) {
                int i12 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX", -1);
                int i13 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH", -1);
                if (i13 > 0 && i12 >= 0) {
                    if (iterableTextForAccessibility != null) {
                        i11 = iterableTextForAccessibility.length();
                    } else {
                        i11 = Integer.MAX_VALUE;
                    }
                    if (i12 < i11) {
                        ArrayList arrayList = new ArrayList();
                        Function1 function1 = (Function1) ((AccessibilityAction) semanticsNode.getUnmergedConfig$ui_release().get(semanticsActions.getGetTextLayoutResult())).getAction();
                        if (function1 != null) {
                            bool = (Boolean) function1.invoke(arrayList);
                        } else {
                            bool = null;
                        }
                        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                            TextLayoutResult textLayoutResult = (TextLayoutResult) arrayList.get(0);
                            ArrayList arrayList2 = new ArrayList();
                            for (int i14 = 0; i14 < i13; i14++) {
                                int i15 = i12 + i14;
                                if (i15 >= textLayoutResult.getLayoutInput().getText().length()) {
                                    arrayList2.add(null);
                                } else {
                                    arrayList2.add(toScreenCoords(semanticsNode, textLayoutResult.getBoundingBox(i15)));
                                }
                            }
                            Bundle extras = accessibilityNodeInfo.getExtras();
                            Object[] array = arrayList2.toArray(new RectF[0]);
                            if (array != null) {
                                extras.putParcelableArray(str, (Parcelable[]) array);
                                return;
                            }
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        }
                        return;
                    }
                }
                Log.e(LogTag, "Invalid arguments for accessibility character locations");
                return;
            }
            SemanticsConfiguration unmergedConfig$ui_release2 = semanticsNode.getUnmergedConfig$ui_release();
            SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
            if (unmergedConfig$ui_release2.contains(semanticsProperties.getTestTag()) && bundle != null && Intrinsics.areEqual(str, ExtraDataTestTagKey) && (str2 = (String) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties.getTestTag())) != null) {
                accessibilityNodeInfo.getExtras().putCharSequence(str, str2);
            }
        }
    }

    private final void checkForSemanticsChanges() {
        sendSemanticsStructureChangeEvents(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), this.previousSemanticsRoot);
        sendSemanticsPropertyChangeEvents$ui_release(getCurrentSemanticsNodes());
        updateSemanticsNodesCopyAndPanes();
    }

    private final boolean clearAccessibilityFocus(int i10) {
        if (isAccessibilityFocused(i10)) {
            this.focusedVirtualViewId = Integer.MIN_VALUE;
            this.view.invalidate();
            sendEventForVirtualView$default(this, i10, 65536, null, null, 12, null);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AccessibilityNodeInfo createNodeInfo(int i10) {
        Lifecycle.State state;
        LifecycleOwner lifecycleOwner;
        Lifecycle lifecycle;
        AndroidComposeView.ViewTreeOwners viewTreeOwners = this.view.getViewTreeOwners();
        View view = null;
        if (viewTreeOwners != null && (lifecycleOwner = viewTreeOwners.getLifecycleOwner()) != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            state = lifecycle.getCurrentState();
        } else {
            state = null;
        }
        if (state == Lifecycle.State.DESTROYED) {
            return null;
        }
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(Integer.valueOf(i10));
        if (semanticsNodeWithAdjustedBounds == null) {
            obtain.recycle();
            return null;
        }
        SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode();
        int i11 = -1;
        if (i10 == -1) {
            ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(this.view);
            if (parentForAccessibility instanceof View) {
                view = (View) parentForAccessibility;
            }
            obtain.setParent(view);
        } else if (semanticsNode.getParent() != null) {
            SemanticsNode parent = semanticsNode.getParent();
            Intrinsics.checkNotNull(parent);
            int id2 = parent.getId();
            if (id2 != this.view.getSemanticsOwner().getUnmergedRootSemanticsNode().getId()) {
                i11 = id2;
            }
            obtain.setParent(this.view, i11);
        } else {
            throw new IllegalStateException("semanticsNode " + i10 + " has null parent");
        }
        obtain.setSource(this.view, i10);
        Rect adjustedBounds = semanticsNodeWithAdjustedBounds.getAdjustedBounds();
        long mo3288localToScreenMKHz9U = this.view.mo3288localToScreenMKHz9U(OffsetKt.Offset(adjustedBounds.left, adjustedBounds.top));
        long mo3288localToScreenMKHz9U2 = this.view.mo3288localToScreenMKHz9U(OffsetKt.Offset(adjustedBounds.right, adjustedBounds.bottom));
        obtain.setBoundsInScreen(new Rect((int) Math.floor(Offset.m1606getXimpl(mo3288localToScreenMKHz9U)), (int) Math.floor(Offset.m1607getYimpl(mo3288localToScreenMKHz9U)), (int) Math.ceil(Offset.m1606getXimpl(mo3288localToScreenMKHz9U2)), (int) Math.ceil(Offset.m1607getYimpl(mo3288localToScreenMKHz9U2))));
        populateAccessibilityNodeInfoProperties(i10, obtain, semanticsNode);
        return obtain.unwrap();
    }

    private final AccessibilityEvent createTextSelectionChangedEvent(int i10, Integer num, Integer num2, Integer num3, String str) {
        AccessibilityEvent createEvent$ui_release = createEvent$ui_release(i10, 8192);
        if (num != null) {
            createEvent$ui_release.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            createEvent$ui_release.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            createEvent$ui_release.setItemCount(num3.intValue());
        }
        if (str != null) {
            createEvent$ui_release.getText().add(str);
        }
        return createEvent$ui_release;
    }

    private final int getAccessibilitySelectionEnd(SemanticsNode semanticsNode) {
        SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (!unmergedConfig$ui_release.contains(semanticsProperties.getContentDescription()) && semanticsNode.getUnmergedConfig$ui_release().contains(semanticsProperties.getTextSelectionRange())) {
            return TextRange.m3692getEndimpl(((TextRange) semanticsNode.getUnmergedConfig$ui_release().get(semanticsProperties.getTextSelectionRange())).m3701unboximpl());
        }
        return this.accessibilityCursorPosition;
    }

    private final int getAccessibilitySelectionStart(SemanticsNode semanticsNode) {
        SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (!unmergedConfig$ui_release.contains(semanticsProperties.getContentDescription()) && semanticsNode.getUnmergedConfig$ui_release().contains(semanticsProperties.getTextSelectionRange())) {
            return TextRange.m3697getStartimpl(((TextRange) semanticsNode.getUnmergedConfig$ui_release().get(semanticsProperties.getTextSelectionRange())).m3701unboximpl());
        }
        return this.accessibilityCursorPosition;
    }

    private final Map<Integer, SemanticsNodeWithAdjustedBounds> getCurrentSemanticsNodes() {
        if (this.currentSemanticsNodesInvalidated) {
            this.currentSemanticsNodes = AndroidComposeViewAccessibilityDelegateCompat_androidKt.getAllUncoveredSemanticsNodesToMap(this.view.getSemanticsOwner());
            this.currentSemanticsNodesInvalidated = false;
        }
        return this.currentSemanticsNodes;
    }

    private final String getIterableTextForAccessibility(SemanticsNode semanticsNode) {
        boolean isTextField;
        AnnotatedString annotatedString;
        if (semanticsNode == null) {
            return null;
        }
        SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (!unmergedConfig$ui_release.contains(semanticsProperties.getContentDescription())) {
            isTextField = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isTextField(semanticsNode);
            if (isTextField) {
                AnnotatedString textForTextField = getTextForTextField(semanticsNode.getUnmergedConfig$ui_release());
                if (textForTextField == null) {
                    return null;
                }
                return textForTextField.getText();
            }
            List list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties.getText());
            if (list == null || (annotatedString = (AnnotatedString) CollectionsKt.firstOrNull(list)) == null) {
                return null;
            }
            return annotatedString.getText();
        }
        return TempListUtilsKt.fastJoinToString$default((List) semanticsNode.getUnmergedConfig$ui_release().get(semanticsProperties.getContentDescription()), ",", null, null, 0, null, null, 62, null);
    }

    private final AccessibilityIterators.TextSegmentIterator getIteratorForGranularity(SemanticsNode semanticsNode, int i10) {
        String iterableTextForAccessibility;
        Boolean bool;
        if (semanticsNode == null || (iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode)) == null || iterableTextForAccessibility.length() == 0) {
            return null;
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 != 8) {
                        if (i10 != 16) {
                            return null;
                        }
                    } else {
                        AccessibilityIterators.ParagraphTextSegmentIterator companion = AccessibilityIterators.ParagraphTextSegmentIterator.Companion.getInstance();
                        companion.initialize(iterableTextForAccessibility);
                        return companion;
                    }
                }
                SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
                SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
                if (!unmergedConfig$ui_release.contains(semanticsActions.getGetTextLayoutResult())) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                Function1 function1 = (Function1) ((AccessibilityAction) semanticsNode.getUnmergedConfig$ui_release().get(semanticsActions.getGetTextLayoutResult())).getAction();
                if (function1 != null) {
                    bool = (Boolean) function1.invoke(arrayList);
                } else {
                    bool = null;
                }
                if (!Intrinsics.areEqual(bool, Boolean.TRUE)) {
                    return null;
                }
                TextLayoutResult textLayoutResult = (TextLayoutResult) arrayList.get(0);
                if (i10 == 4) {
                    AccessibilityIterators.LineTextSegmentIterator companion2 = AccessibilityIterators.LineTextSegmentIterator.Companion.getInstance();
                    companion2.initialize(iterableTextForAccessibility, textLayoutResult);
                    return companion2;
                }
                AccessibilityIterators.PageTextSegmentIterator companion3 = AccessibilityIterators.PageTextSegmentIterator.Companion.getInstance();
                companion3.initialize(iterableTextForAccessibility, textLayoutResult, semanticsNode);
                return companion3;
            }
            AccessibilityIterators.WordTextSegmentIterator.Companion companion4 = AccessibilityIterators.WordTextSegmentIterator.Companion;
            Locale locale = this.view.getContext().getResources().getConfiguration().locale;
            Intrinsics.checkNotNullExpressionValue(locale, "view.context.resources.configuration.locale");
            AccessibilityIterators.WordTextSegmentIterator companion5 = companion4.getInstance(locale);
            companion5.initialize(iterableTextForAccessibility);
            return companion5;
        }
        AccessibilityIterators.CharacterTextSegmentIterator.Companion companion6 = AccessibilityIterators.CharacterTextSegmentIterator.Companion;
        Locale locale2 = this.view.getContext().getResources().getConfiguration().locale;
        Intrinsics.checkNotNullExpressionValue(locale2, "view.context.resources.configuration.locale");
        AccessibilityIterators.CharacterTextSegmentIterator companion7 = companion6.getInstance(locale2);
        companion7.initialize(iterableTextForAccessibility);
        return companion7;
    }

    private final AnnotatedString getTextForTextField(SemanticsConfiguration semanticsConfiguration) {
        return (AnnotatedString) SemanticsConfigurationKt.getOrNull(semanticsConfiguration, SemanticsProperties.INSTANCE.getEditableText());
    }

    private final boolean isAccessibilityEnabled() {
        if (!this.accessibilityForceEnabledForTesting && (!this.accessibilityManager.isEnabled() || !this.accessibilityManager.isTouchExplorationEnabled())) {
            return false;
        }
        return true;
    }

    private final boolean isAccessibilityFocused(int i10) {
        if (this.focusedVirtualViewId == i10) {
            return true;
        }
        return false;
    }

    private final boolean isAccessibilitySelectionExtendable(SemanticsNode semanticsNode) {
        SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (!unmergedConfig$ui_release.contains(semanticsProperties.getContentDescription()) && semanticsNode.getUnmergedConfig$ui_release().contains(semanticsProperties.getEditableText())) {
            return true;
        }
        return false;
    }

    private final void notifySubtreeAccessibilityStateChangedIfNeeded(LayoutNode layoutNode) {
        if (this.subtreeChangedLayoutNodes.add(layoutNode)) {
            this.boundsUpdateChannel.h(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0107 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0108  */
    /* JADX WARN: Type inference failed for: r13v37 */
    /* JADX WARN: Type inference failed for: r13v38 */
    /* JADX WARN: Type inference failed for: r13v61 */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v43 */
    /* JADX WARN: Type inference failed for: r14v44 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x00e6 -> B:59:0x00e7). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean performActionHelper(int r13, int r14, android.os.Bundle r15) {
        /*
            Method dump skipped, instructions count: 1436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.performActionHelper(int, int, android.os.Bundle):boolean");
    }

    private static final boolean performActionHelper$canScroll(ScrollAxisRange scrollAxisRange, float f10) {
        if ((f10 < 0.0f && scrollAxisRange.getValue().invoke().floatValue() > 0.0f) || (f10 > 0.0f && scrollAxisRange.getValue().invoke().floatValue() < scrollAxisRange.getMaxValue().invoke().floatValue())) {
            return true;
        }
        return false;
    }

    private static final float performActionHelper$scrollDelta(float f10, float f11) {
        if (Math.signum(f10) == Math.signum(f11)) {
            if (Math.abs(f10) >= Math.abs(f11)) {
                return f11;
            }
            return f10;
        }
        return 0.0f;
    }

    private static final boolean populateAccessibilityNodeInfoProperties$canScrollBackward(ScrollAxisRange scrollAxisRange) {
        if ((scrollAxisRange.getValue().invoke().floatValue() > 0.0f && !scrollAxisRange.getReverseScrolling()) || (scrollAxisRange.getValue().invoke().floatValue() < scrollAxisRange.getMaxValue().invoke().floatValue() && scrollAxisRange.getReverseScrolling())) {
            return true;
        }
        return false;
    }

    private static final boolean populateAccessibilityNodeInfoProperties$canScrollForward(ScrollAxisRange scrollAxisRange) {
        if ((scrollAxisRange.getValue().invoke().floatValue() < scrollAxisRange.getMaxValue().invoke().floatValue() && !scrollAxisRange.getReverseScrolling()) || (scrollAxisRange.getValue().invoke().floatValue() > 0.0f && scrollAxisRange.getReverseScrolling())) {
            return true;
        }
        return false;
    }

    private final boolean registerScrollingId(int i10, List<ScrollObservationScope> list) {
        boolean z10;
        ScrollObservationScope findById = AndroidComposeViewAccessibilityDelegateCompat_androidKt.findById(list, i10);
        if (findById != null) {
            z10 = false;
        } else {
            findById = new ScrollObservationScope(i10, this.scrollObservationScopes, null, null, null, null);
            z10 = true;
        }
        this.scrollObservationScopes.add(findById);
        return z10;
    }

    private final boolean requestAccessibilityFocus(int i10) {
        if (!isAccessibilityEnabled() || isAccessibilityFocused(i10)) {
            return false;
        }
        int i11 = this.focusedVirtualViewId;
        if (i11 != Integer.MIN_VALUE) {
            sendEventForVirtualView$default(this, i11, 65536, null, null, 12, null);
        }
        this.focusedVirtualViewId = i10;
        this.view.invalidate();
        sendEventForVirtualView$default(this, i10, 32768, null, null, 12, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: semanticsChangeChecker$lambda-26  reason: not valid java name */
    public static final void m3521semanticsChangeChecker$lambda26(AndroidComposeViewAccessibilityDelegateCompat this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Owner.measureAndLayout$default(this$0.view, false, 1, null);
        this$0.checkForSemanticsChanges();
        this$0.checkingForSemanticsChanges = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int semanticsNodeIdToAccessibilityVirtualNodeId(int i10) {
        if (i10 == this.view.getSemanticsOwner().getUnmergedRootSemanticsNode().getId()) {
            return -1;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean sendEvent(AccessibilityEvent accessibilityEvent) {
        if (!isAccessibilityEnabled()) {
            return false;
        }
        return this.view.getParent().requestSendAccessibilityEvent(this.view, accessibilityEvent);
    }

    private final boolean sendEventForVirtualView(int i10, int i11, Integer num, List<String> list) {
        if (i10 != Integer.MIN_VALUE && isAccessibilityEnabled()) {
            AccessibilityEvent createEvent$ui_release = createEvent$ui_release(i10, i11);
            if (num != null) {
                createEvent$ui_release.setContentChangeTypes(num.intValue());
            }
            if (list != null) {
                createEvent$ui_release.setContentDescription(TempListUtilsKt.fastJoinToString$default(list, ",", null, null, 0, null, null, 62, null));
            }
            return sendEvent(createEvent$ui_release);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean sendEventForVirtualView$default(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i10, int i11, Integer num, List list, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            num = null;
        }
        if ((i12 & 8) != 0) {
            list = null;
        }
        return androidComposeViewAccessibilityDelegateCompat.sendEventForVirtualView(i10, i11, num, list);
    }

    private final void sendPaneChangeEvents(int i10, int i11, String str) {
        AccessibilityEvent createEvent$ui_release = createEvent$ui_release(semanticsNodeIdToAccessibilityVirtualNodeId(i10), 32);
        createEvent$ui_release.setContentChangeTypes(i11);
        if (str != null) {
            createEvent$ui_release.getText().add(str);
        }
        sendEvent(createEvent$ui_release);
    }

    private final void sendPendingTextTraversedAtGranularityEvent(int i10) {
        PendingTextTraversedEvent pendingTextTraversedEvent = this.pendingTextTraversedEvent;
        if (pendingTextTraversedEvent != null) {
            if (i10 != pendingTextTraversedEvent.getNode().getId()) {
                return;
            }
            if (SystemClock.uptimeMillis() - pendingTextTraversedEvent.getTraverseTime() <= 1000) {
                AccessibilityEvent createEvent$ui_release = createEvent$ui_release(semanticsNodeIdToAccessibilityVirtualNodeId(pendingTextTraversedEvent.getNode().getId()), 131072);
                createEvent$ui_release.setFromIndex(pendingTextTraversedEvent.getFromIndex());
                createEvent$ui_release.setToIndex(pendingTextTraversedEvent.getToIndex());
                createEvent$ui_release.setAction(pendingTextTraversedEvent.getAction());
                createEvent$ui_release.setMovementGranularity(pendingTextTraversedEvent.getGranularity());
                createEvent$ui_release.getText().add(getIterableTextForAccessibility(pendingTextTraversedEvent.getNode()));
                sendEvent(createEvent$ui_release);
            }
        }
        this.pendingTextTraversedEvent = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendScrollEventIfNeeded(final ScrollObservationScope scrollObservationScope) {
        if (!scrollObservationScope.isValid()) {
            return;
        }
        this.view.getSnapshotObserver().observeReads$ui_release(scrollObservationScope, this.sendScrollEventIfNeededLambda, new Function0<Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeeded$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                int semanticsNodeIdToAccessibilityVirtualNodeId;
                ScrollAxisRange horizontalScrollAxisRange = ScrollObservationScope.this.getHorizontalScrollAxisRange();
                ScrollAxisRange verticalScrollAxisRange = ScrollObservationScope.this.getVerticalScrollAxisRange();
                Float oldXValue = ScrollObservationScope.this.getOldXValue();
                Float oldYValue = ScrollObservationScope.this.getOldYValue();
                float floatValue = (horizontalScrollAxisRange == null || oldXValue == null) ? 0.0f : horizontalScrollAxisRange.getValue().invoke().floatValue() - oldXValue.floatValue();
                float floatValue2 = (verticalScrollAxisRange == null || oldYValue == null) ? 0.0f : verticalScrollAxisRange.getValue().invoke().floatValue() - oldYValue.floatValue();
                if (floatValue != 0.0f || floatValue2 != 0.0f) {
                    semanticsNodeIdToAccessibilityVirtualNodeId = this.semanticsNodeIdToAccessibilityVirtualNodeId(ScrollObservationScope.this.getSemanticsNodeId());
                    AndroidComposeViewAccessibilityDelegateCompat.sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId, 2048, 1, null, 8, null);
                    AccessibilityEvent createEvent$ui_release = this.createEvent$ui_release(semanticsNodeIdToAccessibilityVirtualNodeId, 4096);
                    if (horizontalScrollAxisRange != null) {
                        createEvent$ui_release.setScrollX((int) horizontalScrollAxisRange.getValue().invoke().floatValue());
                        createEvent$ui_release.setMaxScrollX((int) horizontalScrollAxisRange.getMaxValue().invoke().floatValue());
                    }
                    if (verticalScrollAxisRange != null) {
                        createEvent$ui_release.setScrollY((int) verticalScrollAxisRange.getValue().invoke().floatValue());
                        createEvent$ui_release.setMaxScrollY((int) verticalScrollAxisRange.getMaxValue().invoke().floatValue());
                    }
                    if (Build.VERSION.SDK_INT >= 28) {
                        AndroidComposeViewAccessibilityDelegateCompat.Api28Impl.setScrollEventDelta(createEvent$ui_release, (int) floatValue, (int) floatValue2);
                    }
                    this.sendEvent(createEvent$ui_release);
                }
                if (horizontalScrollAxisRange != null) {
                    ScrollObservationScope.this.setOldXValue(horizontalScrollAxisRange.getValue().invoke());
                }
                if (verticalScrollAxisRange != null) {
                    ScrollObservationScope.this.setOldYValue(verticalScrollAxisRange.getValue().invoke());
                }
            }
        });
    }

    private final void sendSemanticsStructureChangeEvents(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<SemanticsNode> replacedChildren$ui_release = semanticsNode.getReplacedChildren$ui_release();
        int size = replacedChildren$ui_release.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode2 = replacedChildren$ui_release.get(i10);
            if (getCurrentSemanticsNodes().containsKey(Integer.valueOf(semanticsNode2.getId()))) {
                if (!semanticsNodeCopy.getChildren().contains(Integer.valueOf(semanticsNode2.getId()))) {
                    notifySubtreeAccessibilityStateChangedIfNeeded(semanticsNode.getLayoutNode$ui_release());
                    return;
                }
                linkedHashSet.add(Integer.valueOf(semanticsNode2.getId()));
            }
        }
        for (Integer num : semanticsNodeCopy.getChildren()) {
            if (!linkedHashSet.contains(Integer.valueOf(num.intValue()))) {
                notifySubtreeAccessibilityStateChangedIfNeeded(semanticsNode.getLayoutNode$ui_release());
                return;
            }
        }
        List<SemanticsNode> replacedChildren$ui_release2 = semanticsNode.getReplacedChildren$ui_release();
        int size2 = replacedChildren$ui_release2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            SemanticsNode semanticsNode3 = replacedChildren$ui_release2.get(i11);
            if (getCurrentSemanticsNodes().containsKey(Integer.valueOf(semanticsNode3.getId()))) {
                SemanticsNodeCopy semanticsNodeCopy2 = this.previousSemanticsNodes.get(Integer.valueOf(semanticsNode3.getId()));
                Intrinsics.checkNotNull(semanticsNodeCopy2);
                sendSemanticsStructureChangeEvents(semanticsNode3, semanticsNodeCopy2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        r8 = androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt.findClosestParentNode(r8, androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.INSTANCE);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void sendSubtreeChangeAccessibilityEvents(androidx.compose.ui.node.LayoutNode r8, androidx.collection.ArraySet<java.lang.Integer> r9) {
        /*
            r7 = this;
            boolean r0 = r8.isAttached()
            if (r0 != 0) goto L7
            return
        L7:
            androidx.compose.ui.platform.AndroidComposeView r0 = r7.view
            androidx.compose.ui.platform.AndroidViewsHandler r0 = r0.getAndroidViewsHandler$ui_release()
            java.util.HashMap r0 = r0.getLayoutNodeToHolder()
            boolean r0 = r0.containsKey(r8)
            if (r0 == 0) goto L18
            return
        L18:
            androidx.compose.ui.semantics.SemanticsEntity r0 = androidx.compose.ui.semantics.SemanticsNodeKt.getOuterSemantics(r8)
            if (r0 != 0) goto L2f
            androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1 r0 = new kotlin.jvm.functions.Function1<androidx.compose.ui.node.LayoutNode, java.lang.Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1
                static {
                    /*
                        androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1 r0 = new androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  
  (r0 I:androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1)
 androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1.INSTANCE androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                @org.jetbrains.annotations.NotNull
                public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull androidx.compose.ui.node.LayoutNode r2) {
                    /*
                        r1 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                        androidx.compose.ui.semantics.SemanticsEntity r2 = androidx.compose.ui.semantics.SemanticsNodeKt.getOuterSemantics(r2)
                        if (r2 == 0) goto Ld
                        r2 = 1
                        goto Le
                    Ld:
                        r2 = 0
                    Le:
                        java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1.invoke(androidx.compose.ui.node.LayoutNode):java.lang.Boolean");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ java.lang.Boolean invoke(androidx.compose.ui.node.LayoutNode r1) {
                    /*
                        r0 = this;
                        androidx.compose.ui.node.LayoutNode r1 = (androidx.compose.ui.node.LayoutNode) r1
                        java.lang.Boolean r1 = r0.invoke(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$semanticsWrapper$1.invoke(java.lang.Object):java.lang.Object");
                }
            }
            androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt.access$findClosestParentNode(r8, r0)
            if (r0 == 0) goto L2b
            androidx.compose.ui.semantics.SemanticsEntity r0 = androidx.compose.ui.semantics.SemanticsNodeKt.getOuterSemantics(r0)
            goto L2c
        L2b:
            r0 = 0
        L2c:
            if (r0 != 0) goto L2f
            return
        L2f:
            androidx.compose.ui.semantics.SemanticsConfiguration r1 = r0.collapsedSemanticsConfiguration()
            boolean r1 = r1.isMergingSemanticsOfDescendants()
            if (r1 != 0) goto L48
            androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1 r1 = new kotlin.jvm.functions.Function1<androidx.compose.ui.node.LayoutNode, java.lang.Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1
                static {
                    /*
                        androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1 r0 = new androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  
  (r0 I:androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1)
 androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.INSTANCE androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 1
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ java.lang.Boolean invoke(androidx.compose.ui.node.LayoutNode r1) {
                    /*
                        r0 = this;
                        androidx.compose.ui.node.LayoutNode r1 = (androidx.compose.ui.node.LayoutNode) r1
                        java.lang.Boolean r1 = r0.invoke(r1)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.invoke(java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function1
                @org.jetbrains.annotations.NotNull
                public final java.lang.Boolean invoke(@org.jetbrains.annotations.NotNull androidx.compose.ui.node.LayoutNode r3) {
                    /*
                        r2 = this;
                        java.lang.String r0 = "it"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                        androidx.compose.ui.semantics.SemanticsEntity r3 = androidx.compose.ui.semantics.SemanticsNodeKt.getOuterSemantics(r3)
                        r0 = 0
                        if (r3 == 0) goto L1a
                        androidx.compose.ui.semantics.SemanticsConfiguration r3 = r3.collapsedSemanticsConfiguration()
                        if (r3 == 0) goto L1a
                        boolean r3 = r3.isMergingSemanticsOfDescendants()
                        r1 = 1
                        if (r3 != r1) goto L1a
                        r0 = r1
                    L1a:
                        java.lang.Boolean r3 = java.lang.Boolean.valueOf(r0)
                        return r3
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$sendSubtreeChangeAccessibilityEvents$1.invoke(androidx.compose.ui.node.LayoutNode):java.lang.Boolean");
                }
            }
            androidx.compose.ui.node.LayoutNode r8 = androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt.access$findClosestParentNode(r8, r1)
            if (r8 == 0) goto L48
            androidx.compose.ui.semantics.SemanticsEntity r8 = androidx.compose.ui.semantics.SemanticsNodeKt.getOuterSemantics(r8)
            if (r8 == 0) goto L48
            r0 = r8
        L48:
            androidx.compose.ui.Modifier r8 = r0.getModifier()
            androidx.compose.ui.semantics.SemanticsModifier r8 = (androidx.compose.ui.semantics.SemanticsModifier) r8
            int r8 = r8.getId()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r8)
            boolean r9 = r9.add(r0)
            if (r9 != 0) goto L5d
            return
        L5d:
            int r1 = r7.semanticsNodeIdToAccessibilityVirtualNodeId(r8)
            r8 = 1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r8)
            r5 = 8
            r6 = 0
            r2 = 2048(0x800, float:2.87E-42)
            r4 = 0
            r0 = r7
            sendEventForVirtualView$default(r0, r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.sendSubtreeChangeAccessibilityEvents(androidx.compose.ui.node.LayoutNode, androidx.collection.ArraySet):void");
    }

    private final boolean setAccessibilitySelection(SemanticsNode semanticsNode, int i10, int i11, boolean z10) {
        String iterableTextForAccessibility;
        Integer num;
        Integer num2;
        boolean enabled;
        SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        boolean z11 = false;
        if (unmergedConfig$ui_release.contains(semanticsActions.getSetSelection())) {
            enabled = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
            if (enabled) {
                at.n nVar = (at.n) ((AccessibilityAction) semanticsNode.getUnmergedConfig$ui_release().get(semanticsActions.getSetSelection())).getAction();
                if (nVar == null) {
                    return false;
                }
                return ((Boolean) nVar.invoke(Integer.valueOf(i10), Integer.valueOf(i11), Boolean.valueOf(z10))).booleanValue();
            }
        }
        if ((i10 == i11 && i11 == this.accessibilityCursorPosition) || (iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode)) == null) {
            return false;
        }
        this.accessibilityCursorPosition = (i10 < 0 || i10 != i11 || i11 > iterableTextForAccessibility.length()) ? -1 : -1;
        if (iterableTextForAccessibility.length() > 0) {
            z11 = true;
        }
        int semanticsNodeIdToAccessibilityVirtualNodeId = semanticsNodeIdToAccessibilityVirtualNodeId(semanticsNode.getId());
        Integer num3 = null;
        if (z11) {
            num = Integer.valueOf(this.accessibilityCursorPosition);
        } else {
            num = null;
        }
        if (z11) {
            num2 = Integer.valueOf(this.accessibilityCursorPosition);
        } else {
            num2 = null;
        }
        if (z11) {
            num3 = Integer.valueOf(iterableTextForAccessibility.length());
        }
        sendEvent(createTextSelectionChangedEvent(semanticsNodeIdToAccessibilityVirtualNodeId, num, num2, num3, iterableTextForAccessibility));
        sendPendingTextTraversedAtGranularityEvent(semanticsNode.getId());
        return true;
    }

    private final void setContentInvalid(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        if (unmergedConfig$ui_release.contains(semanticsProperties.getError())) {
            accessibilityNodeInfoCompat.setContentInvalid(true);
            accessibilityNodeInfoCompat.setError((CharSequence) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties.getError()));
        }
    }

    private final void setText(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        SpannableString spannableString;
        AnnotatedString annotatedString;
        FontFamily.Resolver fontFamilyResolver = this.view.getFontFamilyResolver();
        AnnotatedString textForTextField = getTextForTextField(semanticsNode.getUnmergedConfig$ui_release());
        SpannableString spannableString2 = null;
        if (textForTextField != null) {
            spannableString = AndroidAccessibilitySpannableString_androidKt.toAccessibilitySpannableString(textForTextField, this.view.getDensity(), fontFamilyResolver);
        } else {
            spannableString = null;
        }
        SpannableString spannableString3 = (SpannableString) trimToSize(spannableString, 100000);
        List list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), SemanticsProperties.INSTANCE.getText());
        if (list != null && (annotatedString = (AnnotatedString) CollectionsKt.firstOrNull(list)) != null) {
            spannableString2 = AndroidAccessibilitySpannableString_androidKt.toAccessibilitySpannableString(annotatedString, this.view.getDensity(), fontFamilyResolver);
        }
        SpannableString spannableString4 = (SpannableString) trimToSize(spannableString2, 100000);
        if (spannableString3 == null) {
            spannableString3 = spannableString4;
        }
        accessibilityNodeInfoCompat.setText(spannableString3);
    }

    private final RectF toScreenCoords(SemanticsNode semanticsNode, androidx.compose.ui.geometry.Rect rect) {
        androidx.compose.ui.geometry.Rect rect2;
        if (semanticsNode == null) {
            return null;
        }
        androidx.compose.ui.geometry.Rect m1643translatek4lQ0M = rect.m1643translatek4lQ0M(semanticsNode.m3602getPositionInRootF1C5BW0());
        androidx.compose.ui.geometry.Rect boundsInRoot = semanticsNode.getBoundsInRoot();
        if (m1643translatek4lQ0M.overlaps(boundsInRoot)) {
            rect2 = m1643translatek4lQ0M.intersect(boundsInRoot);
        } else {
            rect2 = null;
        }
        if (rect2 == null) {
            return null;
        }
        long mo3288localToScreenMKHz9U = this.view.mo3288localToScreenMKHz9U(OffsetKt.Offset(rect2.getLeft(), rect2.getTop()));
        long mo3288localToScreenMKHz9U2 = this.view.mo3288localToScreenMKHz9U(OffsetKt.Offset(rect2.getRight(), rect2.getBottom()));
        return new RectF(Offset.m1606getXimpl(mo3288localToScreenMKHz9U), Offset.m1607getYimpl(mo3288localToScreenMKHz9U), Offset.m1606getXimpl(mo3288localToScreenMKHz9U2), Offset.m1607getYimpl(mo3288localToScreenMKHz9U2));
    }

    private final boolean traverseAtGranularity(SemanticsNode semanticsNode, int i10, boolean z10, boolean z11) {
        int[] preceding;
        int i11;
        int i12;
        int i13;
        int id2 = semanticsNode.getId();
        Integer num = this.previousTraversedNode;
        if (num == null || id2 != num.intValue()) {
            this.accessibilityCursorPosition = -1;
            this.previousTraversedNode = Integer.valueOf(semanticsNode.getId());
        }
        String iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode);
        boolean z12 = false;
        if (iterableTextForAccessibility != null && iterableTextForAccessibility.length() != 0) {
            AccessibilityIterators.TextSegmentIterator iteratorForGranularity = getIteratorForGranularity(semanticsNode, i10);
            if (iteratorForGranularity == null) {
                return false;
            }
            int accessibilitySelectionEnd = getAccessibilitySelectionEnd(semanticsNode);
            if (accessibilitySelectionEnd == -1) {
                if (z10) {
                    accessibilitySelectionEnd = 0;
                } else {
                    accessibilitySelectionEnd = iterableTextForAccessibility.length();
                }
            }
            if (z10) {
                preceding = iteratorForGranularity.following(accessibilitySelectionEnd);
            } else {
                preceding = iteratorForGranularity.preceding(accessibilitySelectionEnd);
            }
            if (preceding == null) {
                return false;
            }
            int i14 = preceding[0];
            z12 = true;
            int i15 = preceding[1];
            if (z11 && isAccessibilitySelectionExtendable(semanticsNode)) {
                i11 = getAccessibilitySelectionStart(semanticsNode);
                if (i11 == -1) {
                    if (z10) {
                        i11 = i14;
                    } else {
                        i11 = i15;
                    }
                }
                if (z10) {
                    i12 = i15;
                } else {
                    i12 = i14;
                }
            } else {
                if (z10) {
                    i11 = i15;
                } else {
                    i11 = i14;
                }
                i12 = i11;
            }
            if (z10) {
                i13 = 256;
            } else {
                i13 = 512;
            }
            this.pendingTextTraversedEvent = new PendingTextTraversedEvent(semanticsNode, i13, i10, i14, i15, SystemClock.uptimeMillis());
            setAccessibilitySelection(semanticsNode, i11, i12, true);
        }
        return z12;
    }

    private final <T extends CharSequence> T trimToSize(T t10, @IntRange(from = 1) int i10) {
        if (i10 > 0) {
            if (t10 != null && t10.length() != 0 && t10.length() > i10) {
                int i11 = i10 - 1;
                if (Character.isHighSurrogate(t10.charAt(i11)) && Character.isLowSurrogate(t10.charAt(i10))) {
                    i10 = i11;
                }
                return (T) t10.subSequence(0, i10);
            }
            return t10;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    private final void updateHoveredVirtualView(int i10) {
        int i11 = this.hoveredVirtualViewId;
        if (i11 == i10) {
            return;
        }
        this.hoveredVirtualViewId = i10;
        sendEventForVirtualView$default(this, i10, 128, null, null, 12, null);
        sendEventForVirtualView$default(this, i11, 256, null, null, 12, null);
    }

    private final void updateSemanticsNodesCopyAndPanes() {
        boolean hasPaneTitle;
        SemanticsNode semanticsNode;
        SemanticsConfiguration unmergedConfig;
        boolean hasPaneTitle2;
        Iterator<Integer> it = this.paneDisplayed.iterator();
        while (it.hasNext()) {
            Integer id2 = it.next();
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(id2);
            String str = null;
            if (semanticsNodeWithAdjustedBounds != null) {
                semanticsNode = semanticsNodeWithAdjustedBounds.getSemanticsNode();
            } else {
                semanticsNode = null;
            }
            if (semanticsNode != null) {
                hasPaneTitle2 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.hasPaneTitle(semanticsNode);
                if (!hasPaneTitle2) {
                }
            }
            this.paneDisplayed.remove(id2);
            Intrinsics.checkNotNullExpressionValue(id2, "id");
            int intValue = id2.intValue();
            SemanticsNodeCopy semanticsNodeCopy = this.previousSemanticsNodes.get(id2);
            if (semanticsNodeCopy != null && (unmergedConfig = semanticsNodeCopy.getUnmergedConfig()) != null) {
                str = (String) SemanticsConfigurationKt.getOrNull(unmergedConfig, SemanticsProperties.INSTANCE.getPaneTitle());
            }
            sendPaneChangeEvents(intValue, 32, str);
        }
        this.previousSemanticsNodes.clear();
        for (Map.Entry<Integer, SemanticsNodeWithAdjustedBounds> entry : getCurrentSemanticsNodes().entrySet()) {
            hasPaneTitle = AndroidComposeViewAccessibilityDelegateCompat_androidKt.hasPaneTitle(entry.getValue().getSemanticsNode());
            if (hasPaneTitle && this.paneDisplayed.add(entry.getKey())) {
                sendPaneChangeEvents(entry.getKey().intValue(), 16, (String) entry.getValue().getSemanticsNode().getUnmergedConfig$ui_release().get(SemanticsProperties.INSTANCE.getPaneTitle()));
            }
            this.previousSemanticsNodes.put(entry.getKey(), new SemanticsNodeCopy(entry.getValue().getSemanticsNode(), getCurrentSemanticsNodes()));
        }
        this.previousSemanticsRoot = new SemanticsNodeCopy(this.view.getSemanticsOwner().getUnmergedRootSemanticsNode(), getCurrentSemanticsNodes());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d A[Catch: all -> 0x0039, TryCatch #0 {all -> 0x0039, blocks: (B:13:0x0034, B:25:0x0063, B:29:0x0075, B:31:0x007d, B:33:0x0086, B:35:0x008f, B:36:0x00a0, B:38:0x00a7, B:39:0x00b0, B:20:0x0050), top: B:48:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00c3 -> B:14:0x0037). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object boundsUpdatesEventLoop(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r11) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.boundsUpdatesEventLoop(rs.c):java.lang.Object");
    }

    /* renamed from: canScroll-0AR0LA0$ui_release  reason: not valid java name */
    public final boolean m3522canScroll0AR0LA0$ui_release(boolean z10, int i10, long j10) {
        return m3523canScrollmoWRBKg$ui_release(getCurrentSemanticsNodes().values(), z10, i10, j10);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00b6 A[SYNTHETIC] */
    @androidx.annotation.VisibleForTesting(otherwise = 2)
    /* renamed from: canScroll-moWRBKg$ui_release  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3523canScrollmoWRBKg$ui_release(@org.jetbrains.annotations.NotNull java.util.Collection<androidx.compose.ui.platform.SemanticsNodeWithAdjustedBounds> r6, boolean r7, int r8, long r9) {
        /*
            r5 = this;
            java.lang.String r0 = "currentSemanticsNodes"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            androidx.compose.ui.geometry.Offset$Companion r0 = androidx.compose.ui.geometry.Offset.Companion
            long r0 = r0.m1621getUnspecifiedF1C5BW0()
            boolean r0 = androidx.compose.ui.geometry.Offset.m1603equalsimpl0(r9, r0)
            r1 = 0
            if (r0 != 0) goto Lbe
            boolean r0 = androidx.compose.ui.geometry.Offset.m1609isValidimpl(r9)
            if (r0 != 0) goto L1a
            goto Lbe
        L1a:
            r0 = 1
            if (r7 != r0) goto L24
            androidx.compose.ui.semantics.SemanticsProperties r7 = androidx.compose.ui.semantics.SemanticsProperties.INSTANCE
            androidx.compose.ui.semantics.SemanticsPropertyKey r7 = r7.getVerticalScrollAxisRange()
            goto L2c
        L24:
            if (r7 != 0) goto Lb8
            androidx.compose.ui.semantics.SemanticsProperties r7 = androidx.compose.ui.semantics.SemanticsProperties.INSTANCE
            androidx.compose.ui.semantics.SemanticsPropertyKey r7 = r7.getHorizontalScrollAxisRange()
        L2c:
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            r2 = r6
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L39
            goto Lb7
        L39:
            java.util.Iterator r6 = r6.iterator()
        L3d:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto Lb7
            java.lang.Object r2 = r6.next()
            androidx.compose.ui.platform.SemanticsNodeWithAdjustedBounds r2 = (androidx.compose.ui.platform.SemanticsNodeWithAdjustedBounds) r2
            android.graphics.Rect r3 = r2.getAdjustedBounds()
            androidx.compose.ui.geometry.Rect r3 = androidx.compose.ui.graphics.RectHelper_androidKt.toComposeRect(r3)
            boolean r3 = r3.m1632containsk4lQ0M(r9)
            if (r3 != 0) goto L59
        L57:
            r2 = r1
            goto Lb4
        L59:
            androidx.compose.ui.semantics.SemanticsNode r2 = r2.getSemanticsNode()
            androidx.compose.ui.semantics.SemanticsConfiguration r2 = r2.getConfig()
            java.lang.Object r2 = androidx.compose.ui.semantics.SemanticsConfigurationKt.getOrNull(r2, r7)
            androidx.compose.ui.semantics.ScrollAxisRange r2 = (androidx.compose.ui.semantics.ScrollAxisRange) r2
            if (r2 != 0) goto L6a
            goto L57
        L6a:
            boolean r3 = r2.getReverseScrolling()
            if (r3 == 0) goto L72
            int r3 = -r8
            goto L73
        L72:
            r3 = r8
        L73:
            if (r8 != 0) goto L7c
            boolean r4 = r2.getReverseScrolling()
            if (r4 == 0) goto L7c
            r3 = -1
        L7c:
            if (r3 >= 0) goto L93
            kotlin.jvm.functions.Function0 r2 = r2.getValue()
            java.lang.Object r2 = r2.invoke()
            java.lang.Number r2 = (java.lang.Number) r2
            float r2 = r2.floatValue()
            r3 = 0
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 <= 0) goto L57
        L91:
            r2 = r0
            goto Lb4
        L93:
            kotlin.jvm.functions.Function0 r3 = r2.getValue()
            java.lang.Object r3 = r3.invoke()
            java.lang.Number r3 = (java.lang.Number) r3
            float r3 = r3.floatValue()
            kotlin.jvm.functions.Function0 r2 = r2.getMaxValue()
            java.lang.Object r2 = r2.invoke()
            java.lang.Number r2 = (java.lang.Number) r2
            float r2 = r2.floatValue()
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 >= 0) goto L57
            goto L91
        Lb4:
            if (r2 == 0) goto L3d
            r1 = r0
        Lb7:
            return r1
        Lb8:
            kotlin.NoWhenBranchMatchedException r6 = new kotlin.NoWhenBranchMatchedException
            r6.<init>()
            throw r6
        Lbe:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat.m3523canScrollmoWRBKg$ui_release(java.util.Collection, boolean, int, long):boolean");
    }

    @VisibleForTesting
    @NotNull
    public final AccessibilityEvent createEvent$ui_release(int i10, int i11) {
        boolean isPassword;
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i11);
        Intrinsics.checkNotNullExpressionValue(obtain, "obtain(eventType)");
        obtain.setEnabled(true);
        obtain.setClassName(ClassName);
        obtain.setPackageName(this.view.getContext().getPackageName());
        obtain.setSource(this.view, i10);
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = getCurrentSemanticsNodes().get(Integer.valueOf(i10));
        if (semanticsNodeWithAdjustedBounds != null) {
            isPassword = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isPassword(semanticsNodeWithAdjustedBounds.getSemanticsNode());
            obtain.setPassword(isPassword);
        }
        return obtain;
    }

    public final boolean dispatchHoverEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!isAccessibilityEnabled()) {
            return false;
        }
        int action = event.getAction();
        if (action != 7 && action != 9) {
            if (action != 10) {
                return false;
            }
            if (this.hoveredVirtualViewId != Integer.MIN_VALUE) {
                updateHoveredVirtualView(Integer.MIN_VALUE);
                return true;
            }
            return this.view.getAndroidViewsHandler$ui_release().dispatchGenericMotionEvent(event);
        }
        int hitTestSemanticsAt$ui_release = hitTestSemanticsAt$ui_release(event.getX(), event.getY());
        boolean dispatchGenericMotionEvent = this.view.getAndroidViewsHandler$ui_release().dispatchGenericMotionEvent(event);
        updateHoveredVirtualView(hitTestSemanticsAt$ui_release);
        if (hitTestSemanticsAt$ui_release != Integer.MIN_VALUE) {
            return true;
        }
        return dispatchGenericMotionEvent;
    }

    public final boolean getAccessibilityForceEnabledForTesting$ui_release() {
        return this.accessibilityForceEnabledForTesting;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    @NotNull
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NotNull View host) {
        Intrinsics.checkNotNullParameter(host, "host");
        return this.nodeProvider;
    }

    public final int getHoveredVirtualViewId$ui_release() {
        return this.hoveredVirtualViewId;
    }

    @NotNull
    public final Map<Integer, SemanticsNodeCopy> getPreviousSemanticsNodes$ui_release() {
        return this.previousSemanticsNodes;
    }

    @NotNull
    public final AndroidComposeView getView() {
        return this.view;
    }

    @VisibleForTesting
    public final int hitTestSemanticsAt$ui_release(float f10, float f11) {
        LayoutNode layoutNode;
        SemanticsEntity semanticsEntity = null;
        Owner.measureAndLayout$default(this.view, false, 1, null);
        HitTestResult hitTestResult = new HitTestResult();
        LayoutNode.m3458hitTestSemanticsM_7yMNQ$ui_release$default(this.view.getRoot(), OffsetKt.Offset(f10, f11), hitTestResult, false, false, 12, null);
        SemanticsEntity semanticsEntity2 = (SemanticsEntity) CollectionsKt.D0(hitTestResult);
        if (semanticsEntity2 != null && (layoutNode = semanticsEntity2.getLayoutNode()) != null) {
            semanticsEntity = SemanticsNodeKt.getOuterSemantics(layoutNode);
        }
        if (semanticsEntity != null) {
            SemanticsNode semanticsNode = new SemanticsNode(semanticsEntity, false);
            LayoutNodeWrapper findWrapperToGetBounds$ui_release = semanticsNode.findWrapperToGetBounds$ui_release();
            if (!semanticsNode.getUnmergedConfig$ui_release().contains(SemanticsProperties.INSTANCE.getInvisibleToUser()) && !findWrapperToGetBounds$ui_release.isTransparent() && this.view.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().get(semanticsEntity.getLayoutNode()) == null) {
                return semanticsNodeIdToAccessibilityVirtualNodeId(semanticsEntity.getModifier().getId());
            }
        }
        return Integer.MIN_VALUE;
    }

    public final void onLayoutChange$ui_release(@NotNull LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.currentSemanticsNodesInvalidated = true;
        if (!isAccessibilityEnabled()) {
            return;
        }
        notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
    }

    public final void onSemanticsChange$ui_release() {
        this.currentSemanticsNodesInvalidated = true;
        if (isAccessibilityEnabled() && !this.checkingForSemanticsChanges) {
            this.checkingForSemanticsChanges = true;
            this.handler.post(this.semanticsChangeChecker);
        }
    }

    @VisibleForTesting
    public final void populateAccessibilityNodeInfoProperties(int i10, @NotNull AccessibilityNodeInfoCompat info, @NotNull SemanticsNode semanticsNode) {
        boolean isTextField;
        boolean isPassword;
        boolean isTextField2;
        boolean enabled;
        LayoutNodeWrapper findWrapperToGetBounds$ui_release;
        boolean enabled2;
        boolean enabled3;
        boolean enabled4;
        boolean enabled5;
        boolean isRtl;
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat;
        boolean isRtl2;
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat2;
        boolean enabled6;
        int i11;
        boolean excludeLineAndPageGranularities;
        boolean enabled7;
        boolean enabled8;
        boolean z10;
        String string;
        String str;
        LayoutNode findClosestParentNode;
        Intrinsics.checkNotNullParameter(info, "info");
        Intrinsics.checkNotNullParameter(semanticsNode, "semanticsNode");
        info.setClassName(ClassName);
        SemanticsConfiguration unmergedConfig$ui_release = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
        Role role = (Role) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui_release, semanticsProperties.getRole());
        if (role != null) {
            int m3594unboximpl = role.m3594unboximpl();
            if (semanticsNode.isFake$ui_release() || semanticsNode.getReplacedChildren$ui_release().isEmpty()) {
                Role.Companion companion = Role.Companion;
                if (Role.m3591equalsimpl0(role.m3594unboximpl(), companion.m3600getTabo7Vup1c())) {
                    info.setRoleDescription(this.view.getContext().getResources().getString(R.string.tab));
                } else {
                    if (Role.m3591equalsimpl0(m3594unboximpl, companion.m3595getButtono7Vup1c())) {
                        str = "android.widget.Button";
                    } else if (Role.m3591equalsimpl0(m3594unboximpl, companion.m3596getCheckboxo7Vup1c())) {
                        str = "android.widget.CheckBox";
                    } else if (Role.m3591equalsimpl0(m3594unboximpl, companion.m3599getSwitcho7Vup1c())) {
                        str = "android.widget.Switch";
                    } else if (Role.m3591equalsimpl0(m3594unboximpl, companion.m3598getRadioButtono7Vup1c())) {
                        str = "android.widget.RadioButton";
                    } else {
                        str = Role.m3591equalsimpl0(m3594unboximpl, companion.m3597getImageo7Vup1c()) ? "android.widget.ImageView" : null;
                    }
                    if (Role.m3591equalsimpl0(role.m3594unboximpl(), companion.m3597getImageo7Vup1c())) {
                        findClosestParentNode = AndroidComposeViewAccessibilityDelegateCompat_androidKt.findClosestParentNode(semanticsNode.getLayoutNode$ui_release(), new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat$populateAccessibilityNodeInfoProperties$1$ancestor$1
                            @Override // kotlin.jvm.functions.Function1
                            @NotNull
                            public final Boolean invoke(@NotNull LayoutNode parent) {
                                SemanticsConfiguration collapsedSemanticsConfiguration;
                                Intrinsics.checkNotNullParameter(parent, "parent");
                                SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(parent);
                                boolean z11 = false;
                                if (outerSemantics != null && (collapsedSemanticsConfiguration = outerSemantics.collapsedSemanticsConfiguration()) != null && collapsedSemanticsConfiguration.isMergingSemanticsOfDescendants()) {
                                    z11 = true;
                                }
                                return Boolean.valueOf(z11);
                            }
                        });
                        if (findClosestParentNode == null || semanticsNode.getUnmergedConfig$ui_release().isMergingSemanticsOfDescendants()) {
                            info.setClassName(str);
                        }
                    } else {
                        info.setClassName(str);
                    }
                }
            }
            Unit unit = Unit.f60915a;
        }
        isTextField = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isTextField(semanticsNode);
        if (isTextField) {
            info.setClassName("android.widget.EditText");
        }
        if (semanticsNode.getConfig().contains(semanticsProperties.getText())) {
            info.setClassName("android.widget.TextView");
        }
        info.setPackageName(this.view.getContext().getPackageName());
        List<SemanticsNode> replacedChildrenSortedByBounds$ui_release = semanticsNode.getReplacedChildrenSortedByBounds$ui_release();
        int size = replacedChildrenSortedByBounds$ui_release.size();
        for (int i12 = 0; i12 < size; i12++) {
            SemanticsNode semanticsNode2 = replacedChildrenSortedByBounds$ui_release.get(i12);
            if (getCurrentSemanticsNodes().containsKey(Integer.valueOf(semanticsNode2.getId()))) {
                AndroidViewHolder androidViewHolder = this.view.getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().get(semanticsNode2.getLayoutNode$ui_release());
                if (androidViewHolder != null) {
                    info.addChild(androidViewHolder);
                } else {
                    info.addChild(this.view, semanticsNode2.getId());
                }
            }
        }
        if (this.focusedVirtualViewId == i10) {
            info.setAccessibilityFocused(true);
            info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        } else {
            info.setAccessibilityFocused(false);
            info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_ACCESSIBILITY_FOCUS);
        }
        setText(semanticsNode, info);
        setContentInvalid(semanticsNode, info);
        SemanticsConfiguration unmergedConfig$ui_release2 = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties2 = SemanticsProperties.INSTANCE;
        info.setStateDescription((CharSequence) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui_release2, semanticsProperties2.getStateDescription()));
        ToggleableState toggleableState = (ToggleableState) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties2.getToggleableState());
        if (toggleableState != null) {
            info.setCheckable(true);
            int i13 = WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
            if (i13 == 1) {
                info.setChecked(true);
                if ((role == null ? false : Role.m3591equalsimpl0(role.m3594unboximpl(), Role.Companion.m3599getSwitcho7Vup1c())) && info.getStateDescription() == null) {
                    info.setStateDescription(this.view.getContext().getResources().getString(R.string.f1239on));
                }
            } else if (i13 != 2) {
                if (i13 == 3 && info.getStateDescription() == null) {
                    info.setStateDescription(this.view.getContext().getResources().getString(R.string.indeterminate));
                }
            } else {
                info.setChecked(false);
                if ((role == null ? false : Role.m3591equalsimpl0(role.m3594unboximpl(), Role.Companion.m3599getSwitcho7Vup1c())) && info.getStateDescription() == null) {
                    info.setStateDescription(this.view.getContext().getResources().getString(R.string.off));
                }
            }
            Unit unit2 = Unit.f60915a;
        }
        Boolean bool = (Boolean) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties2.getSelected());
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            if (role == null ? false : Role.m3591equalsimpl0(role.m3594unboximpl(), Role.Companion.m3600getTabo7Vup1c())) {
                info.setSelected(booleanValue);
            } else {
                info.setCheckable(true);
                info.setChecked(booleanValue);
                if (info.getStateDescription() == null) {
                    if (booleanValue) {
                        string = this.view.getContext().getResources().getString(R.string.selected);
                    } else {
                        string = this.view.getContext().getResources().getString(R.string.not_selected);
                    }
                    info.setStateDescription(string);
                }
            }
            Unit unit3 = Unit.f60915a;
        }
        if (!semanticsNode.getUnmergedConfig$ui_release().isMergingSemanticsOfDescendants() || semanticsNode.getReplacedChildren$ui_release().isEmpty()) {
            List list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties2.getContentDescription());
            info.setContentDescription(list != null ? (String) CollectionsKt.firstOrNull(list) : null);
        }
        if (semanticsNode.getUnmergedConfig$ui_release().isMergingSemanticsOfDescendants()) {
            info.setScreenReaderFocusable(true);
        }
        String str2 = (String) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties2.getTestTag());
        if (str2 != null) {
            SemanticsNode semanticsNode3 = semanticsNode;
            while (true) {
                if (semanticsNode3 == null) {
                    z10 = false;
                    break;
                }
                SemanticsConfiguration unmergedConfig$ui_release3 = semanticsNode3.getUnmergedConfig$ui_release();
                SemanticsPropertiesAndroid semanticsPropertiesAndroid = SemanticsPropertiesAndroid.INSTANCE;
                if (unmergedConfig$ui_release3.contains(semanticsPropertiesAndroid.getTestTagsAsResourceId())) {
                    z10 = ((Boolean) semanticsNode3.getUnmergedConfig$ui_release().get(semanticsPropertiesAndroid.getTestTagsAsResourceId())).booleanValue();
                    break;
                }
                semanticsNode3 = semanticsNode3.getParent();
            }
            if (z10) {
                info.setViewIdResourceName(str2);
            }
        }
        SemanticsConfiguration unmergedConfig$ui_release4 = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsProperties semanticsProperties3 = SemanticsProperties.INSTANCE;
        if (((Unit) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui_release4, semanticsProperties3.getHeading())) != null) {
            info.setHeading(true);
            Unit unit4 = Unit.f60915a;
        }
        isPassword = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isPassword(semanticsNode);
        info.setPassword(isPassword);
        isTextField2 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isTextField(semanticsNode);
        info.setEditable(isTextField2);
        enabled = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
        info.setEnabled(enabled);
        info.setFocusable(semanticsNode.getUnmergedConfig$ui_release().contains(semanticsProperties3.getFocused()));
        if (info.isFocusable()) {
            info.setFocused(((Boolean) semanticsNode.getUnmergedConfig$ui_release().get(semanticsProperties3.getFocused())).booleanValue());
            if (info.isFocused()) {
                info.addAction(2);
            } else {
                info.addAction(1);
            }
        }
        if (semanticsNode.isFake$ui_release()) {
            SemanticsNode parent = semanticsNode.getParent();
            findWrapperToGetBounds$ui_release = parent != null ? parent.findWrapperToGetBounds$ui_release() : null;
        } else {
            findWrapperToGetBounds$ui_release = semanticsNode.findWrapperToGetBounds$ui_release();
        }
        info.setVisibleToUser(!(findWrapperToGetBounds$ui_release != null ? findWrapperToGetBounds$ui_release.isTransparent() : false) && SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getInvisibleToUser()) == null);
        LiveRegionMode liveRegionMode = (LiveRegionMode) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getLiveRegion());
        if (liveRegionMode != null) {
            int m3585unboximpl = liveRegionMode.m3585unboximpl();
            LiveRegionMode.Companion companion2 = LiveRegionMode.Companion;
            info.setLiveRegion((LiveRegionMode.m3582equalsimpl0(m3585unboximpl, companion2.m3587getPolite0phEisY()) || !LiveRegionMode.m3582equalsimpl0(m3585unboximpl, companion2.m3586getAssertive0phEisY())) ? 1 : 2);
            Unit unit5 = Unit.f60915a;
        }
        info.setClickable(false);
        SemanticsConfiguration unmergedConfig$ui_release5 = semanticsNode.getUnmergedConfig$ui_release();
        SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
        AccessibilityAction accessibilityAction = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(unmergedConfig$ui_release5, semanticsActions.getOnClick());
        if (accessibilityAction != null) {
            boolean areEqual = Intrinsics.areEqual(SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getSelected()), Boolean.TRUE);
            info.setClickable(!areEqual);
            enabled8 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
            if (enabled8 && !areEqual) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.getLabel()));
            }
            Unit unit6 = Unit.f60915a;
        }
        info.setLongClickable(false);
        AccessibilityAction accessibilityAction2 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getOnLongClick());
        if (accessibilityAction2 != null) {
            info.setLongClickable(true);
            enabled7 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
            if (enabled7) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, accessibilityAction2.getLabel()));
            }
            Unit unit7 = Unit.f60915a;
        }
        AccessibilityAction accessibilityAction3 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getCopyText());
        if (accessibilityAction3 != null) {
            info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, accessibilityAction3.getLabel()));
            Unit unit8 = Unit.f60915a;
        }
        enabled2 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
        if (enabled2) {
            AccessibilityAction accessibilityAction4 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getSetText());
            if (accessibilityAction4 != null) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(2097152, accessibilityAction4.getLabel()));
                Unit unit9 = Unit.f60915a;
            }
            AccessibilityAction accessibilityAction5 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getCutText());
            if (accessibilityAction5 != null) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, accessibilityAction5.getLabel()));
                Unit unit10 = Unit.f60915a;
            }
            AccessibilityAction accessibilityAction6 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getPasteText());
            if (accessibilityAction6 != null) {
                if (info.isFocused() && this.view.getClipboardManager().hasText()) {
                    info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, accessibilityAction6.getLabel()));
                }
                Unit unit11 = Unit.f60915a;
            }
        }
        String iterableTextForAccessibility = getIterableTextForAccessibility(semanticsNode);
        if (!(iterableTextForAccessibility == null || iterableTextForAccessibility.length() == 0)) {
            info.setTextSelection(getAccessibilitySelectionStart(semanticsNode), getAccessibilitySelectionEnd(semanticsNode));
            AccessibilityAction accessibilityAction7 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getSetSelection());
            info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(131072, accessibilityAction7 != null ? accessibilityAction7.getLabel() : null));
            info.addAction(256);
            info.addAction(512);
            info.setMovementGranularities(11);
            List list2 = (List) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getContentDescription());
            if ((list2 == null || list2.isEmpty()) && semanticsNode.getUnmergedConfig$ui_release().contains(semanticsActions.getGetTextLayoutResult())) {
                excludeLineAndPageGranularities = AndroidComposeViewAccessibilityDelegateCompat_androidKt.excludeLineAndPageGranularities(semanticsNode);
                if (!excludeLineAndPageGranularities) {
                    info.setMovementGranularities(info.getMovementGranularities() | 20);
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            ArrayList arrayList = new ArrayList();
            CharSequence text = info.getText();
            if (!(text == null || text.length() == 0) && semanticsNode.getUnmergedConfig$ui_release().contains(semanticsActions.getGetTextLayoutResult())) {
                arrayList.add("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY");
            }
            if (semanticsNode.getUnmergedConfig$ui_release().contains(semanticsProperties3.getTestTag())) {
                arrayList.add(ExtraDataTestTagKey);
            }
            if (!arrayList.isEmpty()) {
                AccessibilityNodeInfoVerificationHelperMethods accessibilityNodeInfoVerificationHelperMethods = AccessibilityNodeInfoVerificationHelperMethods.INSTANCE;
                AccessibilityNodeInfo unwrap = info.unwrap();
                Intrinsics.checkNotNullExpressionValue(unwrap, "info.unwrap()");
                accessibilityNodeInfoVerificationHelperMethods.setAvailableExtraData(unwrap, arrayList);
            }
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getProgressBarRangeInfo());
        if (progressBarRangeInfo != null) {
            if (semanticsNode.getUnmergedConfig$ui_release().contains(semanticsActions.getSetProgress())) {
                info.setClassName("android.widget.SeekBar");
            } else {
                info.setClassName("android.widget.ProgressBar");
            }
            if (progressBarRangeInfo != ProgressBarRangeInfo.Companion.getIndeterminate()) {
                info.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, progressBarRangeInfo.getRange().getStart().floatValue(), progressBarRangeInfo.getRange().getEndInclusive().floatValue(), progressBarRangeInfo.getCurrent()));
                if (info.getStateDescription() == null) {
                    dt.b<Float> range = progressBarRangeInfo.getRange();
                    float m10 = kotlin.ranges.e.m(((range.getEndInclusive().floatValue() - range.getStart().floatValue()) > 0.0f ? 1 : ((range.getEndInclusive().floatValue() - range.getStart().floatValue()) == 0.0f ? 0 : -1)) == 0 ? 0.0f : (progressBarRangeInfo.getCurrent() - range.getStart().floatValue()) / (range.getEndInclusive().floatValue() - range.getStart().floatValue()), 0.0f, 1.0f);
                    if (m10 == 0.0f) {
                        i11 = 0;
                    } else {
                        i11 = 100;
                        if (!(m10 == 1.0f)) {
                            i11 = kotlin.ranges.e.n(bt.a.c(m10 * 100), 1, 99);
                        }
                    }
                    info.setStateDescription(this.view.getContext().getResources().getString(R.string.template_percent, Integer.valueOf(i11)));
                }
            } else if (info.getStateDescription() == null) {
                info.setStateDescription(this.view.getContext().getResources().getString(R.string.in_progress));
            }
            if (semanticsNode.getUnmergedConfig$ui_release().contains(semanticsActions.getSetProgress())) {
                enabled6 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
                if (enabled6) {
                    if (progressBarRangeInfo.getCurrent() < kotlin.ranges.e.d(progressBarRangeInfo.getRange().getEndInclusive().floatValue(), progressBarRangeInfo.getRange().getStart().floatValue())) {
                        info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    }
                    if (progressBarRangeInfo.getCurrent() > kotlin.ranges.e.i(progressBarRangeInfo.getRange().getStart().floatValue(), progressBarRangeInfo.getRange().getEndInclusive().floatValue())) {
                        info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    }
                }
            }
        }
        Api24Impl.addSetProgressAction(info, semanticsNode);
        CollectionInfoKt.setCollectionInfo(semanticsNode, info);
        CollectionInfoKt.setCollectionItemInfo(semanticsNode, info);
        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getHorizontalScrollAxisRange());
        AccessibilityAction accessibilityAction8 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getScrollBy());
        if (scrollAxisRange != null && accessibilityAction8 != null) {
            if (!CollectionInfoKt.hasCollectionInfo(semanticsNode)) {
                info.setClassName("android.widget.HorizontalScrollView");
            }
            if (scrollAxisRange.getMaxValue().invoke().floatValue() > 0.0f) {
                info.setScrollable(true);
            }
            enabled5 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
            if (enabled5) {
                if (populateAccessibilityNodeInfoProperties$canScrollForward(scrollAxisRange)) {
                    info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    isRtl2 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isRtl(semanticsNode);
                    if (!isRtl2) {
                        accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT;
                    } else {
                        accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT;
                    }
                    info.addAction(accessibilityActionCompat2);
                }
                if (populateAccessibilityNodeInfoProperties$canScrollBackward(scrollAxisRange)) {
                    info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    isRtl = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isRtl(semanticsNode);
                    if (!isRtl) {
                        accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_LEFT;
                    } else {
                        accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_RIGHT;
                    }
                    info.addAction(accessibilityActionCompat);
                }
            }
        }
        ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getVerticalScrollAxisRange());
        if (scrollAxisRange2 != null && accessibilityAction8 != null) {
            if (!CollectionInfoKt.hasCollectionInfo(semanticsNode)) {
                info.setClassName("android.widget.ScrollView");
            }
            if (scrollAxisRange2.getMaxValue().invoke().floatValue() > 0.0f) {
                info.setScrollable(true);
            }
            enabled4 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
            if (enabled4) {
                if (populateAccessibilityNodeInfoProperties$canScrollForward(scrollAxisRange2)) {
                    info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                    info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
                }
                if (populateAccessibilityNodeInfoProperties$canScrollBackward(scrollAxisRange2)) {
                    info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                    info.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
                }
            }
        }
        info.setPaneTitle((CharSequence) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties3.getPaneTitle()));
        enabled3 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.enabled(semanticsNode);
        if (enabled3) {
            AccessibilityAction accessibilityAction9 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getExpand());
            if (accessibilityAction9 != null) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, accessibilityAction9.getLabel()));
                Unit unit12 = Unit.f60915a;
            }
            AccessibilityAction accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getCollapse());
            if (accessibilityAction10 != null) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, accessibilityAction10.getLabel()));
                Unit unit13 = Unit.f60915a;
            }
            AccessibilityAction accessibilityAction11 = (AccessibilityAction) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsActions.getDismiss());
            if (accessibilityAction11 != null) {
                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, accessibilityAction11.getLabel()));
                Unit unit14 = Unit.f60915a;
            }
            if (semanticsNode.getUnmergedConfig$ui_release().contains(semanticsActions.getCustomActions())) {
                List list3 = (List) semanticsNode.getUnmergedConfig$ui_release().get(semanticsActions.getCustomActions());
                int size2 = list3.size();
                int[] iArr = AccessibilityActionsResourceIds;
                if (size2 < iArr.length) {
                    SparseArrayCompat<CharSequence> sparseArrayCompat = new SparseArrayCompat<>();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    if (this.labelToActionId.containsKey(i10)) {
                        Map<CharSequence, Integer> map = this.labelToActionId.get(i10);
                        List<Integer> C1 = kotlin.collections.n.C1(iArr);
                        ArrayList arrayList2 = new ArrayList();
                        int size3 = list3.size();
                        for (int i14 = 0; i14 < size3; i14++) {
                            CustomAccessibilityAction customAccessibilityAction = (CustomAccessibilityAction) list3.get(i14);
                            Intrinsics.checkNotNull(map);
                            if (map.containsKey(customAccessibilityAction.getLabel())) {
                                Integer num = map.get(customAccessibilityAction.getLabel());
                                Intrinsics.checkNotNull(num);
                                sparseArrayCompat.put(num.intValue(), customAccessibilityAction.getLabel());
                                linkedHashMap.put(customAccessibilityAction.getLabel(), num);
                                C1.remove(num);
                                info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(num.intValue(), customAccessibilityAction.getLabel()));
                            } else {
                                arrayList2.add(customAccessibilityAction);
                            }
                        }
                        int size4 = arrayList2.size();
                        for (int i15 = 0; i15 < size4; i15++) {
                            CustomAccessibilityAction customAccessibilityAction2 = (CustomAccessibilityAction) arrayList2.get(i15);
                            int intValue = C1.get(i15).intValue();
                            sparseArrayCompat.put(intValue, customAccessibilityAction2.getLabel());
                            linkedHashMap.put(customAccessibilityAction2.getLabel(), Integer.valueOf(intValue));
                            info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(intValue, customAccessibilityAction2.getLabel()));
                        }
                    } else {
                        int size5 = list3.size();
                        for (int i16 = 0; i16 < size5; i16++) {
                            CustomAccessibilityAction customAccessibilityAction3 = (CustomAccessibilityAction) list3.get(i16);
                            int i17 = AccessibilityActionsResourceIds[i16];
                            sparseArrayCompat.put(i17, customAccessibilityAction3.getLabel());
                            linkedHashMap.put(customAccessibilityAction3.getLabel(), Integer.valueOf(i17));
                            info.addAction(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i17, customAccessibilityAction3.getLabel()));
                        }
                    }
                    this.actionIdToLabel.put(i10, sparseArrayCompat);
                    this.labelToActionId.put(i10, linkedHashMap);
                    return;
                }
                throw new IllegalStateException("Can't have more than " + iArr.length + " custom actions for one widget");
            }
        }
    }

    @VisibleForTesting
    public final void sendSemanticsPropertyChangeEvents$ui_release(@NotNull Map<Integer, SemanticsNodeWithAdjustedBounds> newSemanticsNodes) {
        String str;
        boolean isTextField;
        String text;
        boolean accessibilityEquals;
        boolean z10 = true;
        Intrinsics.checkNotNullParameter(newSemanticsNodes, "newSemanticsNodes");
        ArrayList arrayList = new ArrayList(this.scrollObservationScopes);
        this.scrollObservationScopes.clear();
        for (Integer num : newSemanticsNodes.keySet()) {
            int intValue = num.intValue();
            SemanticsNodeCopy semanticsNodeCopy = this.previousSemanticsNodes.get(Integer.valueOf(intValue));
            if (semanticsNodeCopy != null) {
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = newSemanticsNodes.get(Integer.valueOf(intValue));
                SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds != null ? semanticsNodeWithAdjustedBounds.getSemanticsNode() : null;
                Intrinsics.checkNotNull(semanticsNode);
                Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> it = semanticsNode.getUnmergedConfig$ui_release().iterator();
                boolean z11 = false;
                while (it.hasNext()) {
                    Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object> next = it.next();
                    SemanticsPropertyKey<?> key = next.getKey();
                    SemanticsProperties semanticsProperties = SemanticsProperties.INSTANCE;
                    if (((Intrinsics.areEqual(key, semanticsProperties.getHorizontalScrollAxisRange()) || Intrinsics.areEqual(next.getKey(), semanticsProperties.getVerticalScrollAxisRange())) ? registerScrollingId(intValue, arrayList) : false) || !Intrinsics.areEqual(next.getValue(), SemanticsConfigurationKt.getOrNull(semanticsNodeCopy.getUnmergedConfig(), next.getKey()))) {
                        SemanticsPropertyKey<?> key2 = next.getKey();
                        if (Intrinsics.areEqual(key2, semanticsProperties.getPaneTitle())) {
                            Object value = next.getValue();
                            if (value != null) {
                                String str2 = (String) value;
                                if (semanticsNodeCopy.hasPaneTitle()) {
                                    sendPaneChangeEvents(intValue, 8, str2);
                                }
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                            }
                        } else if (Intrinsics.areEqual(key2, semanticsProperties.getStateDescription()) ? z10 ? 1 : 0 : Intrinsics.areEqual(key2, semanticsProperties.getToggleableState())) {
                            sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 64, null, 8, null);
                            sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 0, null, 8, null);
                        } else if (Intrinsics.areEqual(key2, semanticsProperties.getProgressBarRangeInfo())) {
                            sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 64, null, 8, null);
                            sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 0, null, 8, null);
                        } else if (Intrinsics.areEqual(key2, semanticsProperties.getSelected())) {
                            Role role = (Role) SemanticsConfigurationKt.getOrNull(semanticsNode.getConfig(), semanticsProperties.getRole());
                            if (role == null ? false : Role.m3591equalsimpl0(role.m3594unboximpl(), Role.Companion.m3600getTabo7Vup1c())) {
                                if (Intrinsics.areEqual(SemanticsConfigurationKt.getOrNull(semanticsNode.getConfig(), semanticsProperties.getSelected()), Boolean.TRUE)) {
                                    AccessibilityEvent createEvent$ui_release = createEvent$ui_release(semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 4);
                                    SemanticsNode semanticsNode2 = new SemanticsNode(semanticsNode.getOuterSemanticsEntity$ui_release(), z10);
                                    List list = (List) SemanticsConfigurationKt.getOrNull(semanticsNode2.getConfig(), semanticsProperties.getContentDescription());
                                    String fastJoinToString$default = list != null ? TempListUtilsKt.fastJoinToString$default(list, ",", null, null, 0, null, null, 62, null) : null;
                                    List list2 = (List) SemanticsConfigurationKt.getOrNull(semanticsNode2.getConfig(), semanticsProperties.getText());
                                    String fastJoinToString$default2 = list2 != null ? TempListUtilsKt.fastJoinToString$default(list2, ",", null, null, 0, null, null, 62, null) : null;
                                    if (fastJoinToString$default != null) {
                                        createEvent$ui_release.setContentDescription(fastJoinToString$default);
                                        Unit unit = Unit.f60915a;
                                    }
                                    if (fastJoinToString$default2 != null) {
                                        createEvent$ui_release.getText().add(fastJoinToString$default2);
                                    }
                                    sendEvent(createEvent$ui_release);
                                } else {
                                    sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 0, null, 8, null);
                                }
                            } else {
                                sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 64, null, 8, null);
                                sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 0, null, 8, null);
                            }
                        } else if (Intrinsics.areEqual(key2, semanticsProperties.getContentDescription())) {
                            int semanticsNodeIdToAccessibilityVirtualNodeId = semanticsNodeIdToAccessibilityVirtualNodeId(intValue);
                            Object value2 = next.getValue();
                            if (value2 != null) {
                                sendEventForVirtualView(semanticsNodeIdToAccessibilityVirtualNodeId, 2048, 4, (List) value2);
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
                            }
                        } else {
                            str = "";
                            if (Intrinsics.areEqual(key2, semanticsProperties.getEditableText())) {
                                isTextField = AndroidComposeViewAccessibilityDelegateCompat_androidKt.isTextField(semanticsNode);
                                if (isTextField) {
                                    AnnotatedString textForTextField = getTextForTextField(semanticsNodeCopy.getUnmergedConfig());
                                    if (textForTextField == null) {
                                        textForTextField = "";
                                    }
                                    AnnotatedString textForTextField2 = getTextForTextField(semanticsNode.getUnmergedConfig$ui_release());
                                    str = textForTextField2 != null ? textForTextField2 : "";
                                    int length = textForTextField.length();
                                    int length2 = str.length();
                                    int j10 = kotlin.ranges.e.j(length, length2);
                                    int i10 = 0;
                                    while (i10 < j10 && textForTextField.charAt(i10) == str.charAt(i10)) {
                                        i10 += z10 ? 1 : 0;
                                    }
                                    int i11 = 0;
                                    while (i11 < j10 - i10 && textForTextField.charAt((length - 1) - i11) == str.charAt((length2 - 1) - i11)) {
                                        i11++;
                                    }
                                    AccessibilityEvent createEvent$ui_release2 = createEvent$ui_release(semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 16);
                                    createEvent$ui_release2.setFromIndex(i10);
                                    createEvent$ui_release2.setRemovedCount((length - i11) - i10);
                                    createEvent$ui_release2.setAddedCount((length2 - i11) - i10);
                                    createEvent$ui_release2.setBeforeText(textForTextField);
                                    createEvent$ui_release2.getText().add(trimToSize(str, 100000));
                                    sendEvent(createEvent$ui_release2);
                                } else {
                                    sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 2, null, 8, null);
                                }
                            } else if (Intrinsics.areEqual(key2, semanticsProperties.getTextSelectionRange())) {
                                AnnotatedString textForTextField3 = getTextForTextField(semanticsNode.getUnmergedConfig$ui_release());
                                if (textForTextField3 != null && (text = textForTextField3.getText()) != null) {
                                    str = text;
                                }
                                long m3701unboximpl = ((TextRange) semanticsNode.getUnmergedConfig$ui_release().get(semanticsProperties.getTextSelectionRange())).m3701unboximpl();
                                sendEvent(createTextSelectionChangedEvent(semanticsNodeIdToAccessibilityVirtualNodeId(intValue), Integer.valueOf(TextRange.m3697getStartimpl(m3701unboximpl)), Integer.valueOf(TextRange.m3692getEndimpl(m3701unboximpl)), Integer.valueOf(str.length()), (String) trimToSize(str, 100000)));
                                sendPendingTextTraversedAtGranularityEvent(semanticsNode.getId());
                            } else if (Intrinsics.areEqual(key2, semanticsProperties.getHorizontalScrollAxisRange()) ? true : Intrinsics.areEqual(key2, semanticsProperties.getVerticalScrollAxisRange())) {
                                notifySubtreeAccessibilityStateChangedIfNeeded(semanticsNode.getLayoutNode$ui_release());
                                ScrollObservationScope findById = AndroidComposeViewAccessibilityDelegateCompat_androidKt.findById(this.scrollObservationScopes, intValue);
                                Intrinsics.checkNotNull(findById);
                                findById.setHorizontalScrollAxisRange((ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties.getHorizontalScrollAxisRange()));
                                findById.setVerticalScrollAxisRange((ScrollAxisRange) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig$ui_release(), semanticsProperties.getVerticalScrollAxisRange()));
                                sendScrollEventIfNeeded(findById);
                            } else if (Intrinsics.areEqual(key2, semanticsProperties.getFocused())) {
                                Object value3 = next.getValue();
                                if (value3 != null) {
                                    if (((Boolean) value3).booleanValue()) {
                                        sendEvent(createEvent$ui_release(semanticsNodeIdToAccessibilityVirtualNodeId(semanticsNode.getId()), 8));
                                    }
                                    sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(semanticsNode.getId()), 2048, 0, null, 8, null);
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                                }
                            } else {
                                SemanticsActions semanticsActions = SemanticsActions.INSTANCE;
                                if (Intrinsics.areEqual(key2, semanticsActions.getCustomActions())) {
                                    List list3 = (List) semanticsNode.getUnmergedConfig$ui_release().get(semanticsActions.getCustomActions());
                                    List list4 = (List) SemanticsConfigurationKt.getOrNull(semanticsNodeCopy.getUnmergedConfig(), semanticsActions.getCustomActions());
                                    if (list4 != null) {
                                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                                        int size = list3.size();
                                        for (int i12 = 0; i12 < size; i12++) {
                                            linkedHashSet.add(((CustomAccessibilityAction) list3.get(i12)).getLabel());
                                        }
                                        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                                        int size2 = list4.size();
                                        for (int i13 = 0; i13 < size2; i13++) {
                                            linkedHashSet2.add(((CustomAccessibilityAction) list4.get(i13)).getLabel());
                                        }
                                        z11 = (linkedHashSet.containsAll(linkedHashSet2) && linkedHashSet2.containsAll(linkedHashSet)) ? false : true;
                                    } else if (!list3.isEmpty()) {
                                        z10 = true;
                                        z11 = true;
                                    }
                                } else if (next.getValue() instanceof AccessibilityAction) {
                                    Object value4 = next.getValue();
                                    if (value4 != null) {
                                        accessibilityEquals = AndroidComposeViewAccessibilityDelegateCompat_androidKt.accessibilityEquals((AccessibilityAction) value4, SemanticsConfigurationKt.getOrNull(semanticsNodeCopy.getUnmergedConfig(), next.getKey()));
                                        z10 = true;
                                        z11 = !accessibilityEquals;
                                    } else {
                                        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>");
                                    }
                                } else {
                                    z10 = true;
                                    z11 = true;
                                }
                            }
                        }
                    }
                    z10 = true;
                }
                if (!z11) {
                    z11 = AndroidComposeViewAccessibilityDelegateCompat_androidKt.propertiesDeleted(semanticsNode, semanticsNodeCopy);
                }
                if (z11) {
                    sendEventForVirtualView$default(this, semanticsNodeIdToAccessibilityVirtualNodeId(intValue), 2048, 0, null, 8, null);
                }
            }
        }
    }

    public final void setAccessibilityForceEnabledForTesting$ui_release(boolean z10) {
        this.accessibilityForceEnabledForTesting = z10;
    }

    public final void setHoveredVirtualViewId$ui_release(int i10) {
        this.hoveredVirtualViewId = i10;
    }

    public final void setPreviousSemanticsNodes$ui_release(@NotNull Map<Integer, SemanticsNodeCopy> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.previousSemanticsNodes = map;
    }

    @VisibleForTesting
    public static /* synthetic */ void getPreviousSemanticsNodes$ui_release$annotations() {
    }
}
