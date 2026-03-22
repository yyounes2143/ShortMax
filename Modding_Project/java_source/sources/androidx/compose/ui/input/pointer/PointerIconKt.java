package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: PointerIcon.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerIconKt {
    @Stable
    @NotNull
    public static final Modifier pointerHoverIcon(@NotNull Modifier modifier, @NotNull final PointerIcon icon, final boolean z10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(icon, "icon");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("pointerHoverIcon");
                    inspectorInfo.getProperties().set("icon", PointerIcon.this);
                    inspectorInfo.getProperties().set("overrideDescendants", Boolean.valueOf(z10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: PointerIcon.kt */
            @Metadata
            @d(c = "androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1", f = "PointerIcon.kt", l = {74}, m = "invokeSuspend")
            /* renamed from: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1  reason: invalid class name */
            /* loaded from: classes.dex */
            public static final class AnonymousClass1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
                final /* synthetic */ PointerIcon $icon;
                final /* synthetic */ boolean $overrideDescendants;
                final /* synthetic */ PointerIconService $pointerIconService;
                private /* synthetic */ Object L$0;
                int label;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: PointerIcon.kt */
                @Metadata
                @d(c = "androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1$1", f = "PointerIcon.kt", l = {80}, m = "invokeSuspend")
                /* renamed from: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2$1$1  reason: invalid class name and collision with other inner class name */
                /* loaded from: classes.dex */
                public static final class C00551 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
                    final /* synthetic */ PointerIcon $icon;
                    final /* synthetic */ boolean $overrideDescendants;
                    final /* synthetic */ PointerIconService $pointerIconService;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    C00551(boolean z10, PointerIconService pointerIconService, PointerIcon pointerIcon, c<? super C00551> cVar) {
                        super(2, cVar);
                        this.$overrideDescendants = z10;
                        this.$pointerIconService = pointerIconService;
                        this.$icon = pointerIcon;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @NotNull
                    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                        C00551 c00551 = new C00551(this.$overrideDescendants, this.$pointerIconService, this.$icon, cVar);
                        c00551.L$0 = obj;
                        return c00551;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @Nullable
                    public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
                        return ((C00551) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
                    }

                    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
                        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
                        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
                        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
                        */
                    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
                    /* JADX WARN: Removed duplicated region for block: B:12:0x002a  */
                    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[RETURN] */
                    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
                    /* JADX WARN: Removed duplicated region for block: B:23:0x0073 A[ADDED_TO_REGION] */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0034 -> B:16:0x0037). Please submit an issue!!! */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @org.jetbrains.annotations.Nullable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
                        /*
                            r10 = this;
                            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                            int r1 = r10.label
                            r2 = 1
                            if (r1 == 0) goto L1b
                            if (r1 != r2) goto L13
                            java.lang.Object r1 = r10.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                            kotlin.f.b(r11)
                            goto L37
                        L13:
                            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r11.<init>(r0)
                            throw r11
                        L1b:
                            kotlin.f.b(r11)
                            java.lang.Object r11 = r10.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r11 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r11
                            r1 = r11
                        L23:
                            boolean r11 = r10.$overrideDescendants
                            if (r11 == 0) goto L2a
                            androidx.compose.ui.input.pointer.PointerEventPass r11 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                            goto L2c
                        L2a:
                            androidx.compose.ui.input.pointer.PointerEventPass r11 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                        L2c:
                            r10.L$0 = r1
                            r10.label = r2
                            java.lang.Object r11 = r1.awaitPointerEvent(r11, r10)
                            if (r11 != r0) goto L37
                            return r0
                        L37:
                            androidx.compose.ui.input.pointer.PointerEvent r11 = (androidx.compose.ui.input.pointer.PointerEvent) r11
                            int r3 = r11.m3155getType7fucELk()
                            androidx.compose.ui.input.pointer.PointerEventType$Companion r4 = androidx.compose.ui.input.pointer.PointerEventType.Companion
                            int r5 = r4.m3170getRelease7fucELk()
                            boolean r3 = androidx.compose.ui.input.pointer.PointerEventType.m3162equalsimpl0(r3, r5)
                            r5 = 0
                            if (r3 == 0) goto L65
                            java.util.List r3 = r11.getChanges()
                            java.lang.Object r3 = r3.get(r5)
                            androidx.compose.ui.input.pointer.PointerInputChange r3 = (androidx.compose.ui.input.pointer.PointerInputChange) r3
                            long r6 = r1.mo3126getSizeYbymL2g()
                            androidx.compose.ui.geometry.Size$Companion r8 = androidx.compose.ui.geometry.Size.Companion
                            long r8 = r8.m1684getZeroNHjbRc()
                            boolean r3 = androidx.compose.ui.input.pointer.PointerEventKt.m3158isOutOfBoundsjwHxaWs(r3, r6, r8)
                            if (r3 == 0) goto L65
                            r5 = r2
                        L65:
                            int r11 = r11.m3155getType7fucELk()
                            int r3 = r4.m3167getExit7fucELk()
                            boolean r11 = androidx.compose.ui.input.pointer.PointerEventType.m3162equalsimpl0(r11, r3)
                            if (r11 != 0) goto L23
                            if (r5 != 0) goto L23
                            androidx.compose.ui.input.pointer.PointerIconService r11 = r10.$pointerIconService
                            androidx.compose.ui.input.pointer.PointerIcon r3 = r10.$icon
                            r11.setCurrent(r3)
                            goto L23
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerIconKt$pointerHoverIcon$2.AnonymousClass1.C00551.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(boolean z10, PointerIconService pointerIconService, PointerIcon pointerIcon, c<? super AnonymousClass1> cVar) {
                    super(2, cVar);
                    this.$overrideDescendants = z10;
                    this.$pointerIconService = pointerIconService;
                    this.$icon = pointerIcon;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$overrideDescendants, this.$pointerIconService, this.$icon, cVar);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
                    return ((AnonymousClass1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object f10 = kotlin.coroutines.intrinsics.a.f();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            f.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        f.b(obj);
                        C00551 c00551 = new C00551(this.$overrideDescendants, this.$pointerIconService, this.$icon, null);
                        this.label = 1;
                        if (((PointerInputScope) this.L$0).awaitPointerEventScope(c00551, this) == f10) {
                            return f10;
                        }
                    }
                    return Unit.f60915a;
                }
            }

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
                Modifier pointerInput;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(811087536);
                PointerIconService pointerIconService = (PointerIconService) composer.consume(CompositionLocalsKt.getLocalPointerIconService());
                if (pointerIconService == null) {
                    pointerInput = Modifier.Companion;
                } else {
                    pointerInput = SuspendingPointerInputFilterKt.pointerInput(composed, PointerIcon.this, Boolean.valueOf(z10), new AnonymousClass1(z10, pointerIconService, PointerIcon.this, null));
                }
                composer.endReplaceableGroup();
                return pointerInput;
            }
        });
    }

    public static /* synthetic */ Modifier pointerHoverIcon$default(Modifier modifier, PointerIcon pointerIcon, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return pointerHoverIcon(modifier, pointerIcon, z10);
    }
}
