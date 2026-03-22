package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
@SourceDebugExtension({"SMAP\nTap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tap.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/TapKt\n*L\n1#1,155:1\n146#1:156\n138#1,10:157\n152#1:167\n138#1,5:168\n153#1:173\n152#1:174\n138#1,5:175\n153#1:180\n138#1,5:181\n138#1,5:186\n*S KotlinDebug\n*F\n+ 1 Tap.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/TapKt\n*L\n63#1:156\n63#1:157,10\n66#1:167\n66#1:168,5\n66#1:173\n78#1:174\n78#1:175,5\n78#1:180\n146#1:181,5\n152#1:186,5\n*E\n"})
/* loaded from: classes6.dex */
public final class b {

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.TapKt$detectTapUnconsumed$2", f = "Tap.kt", l = {42}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36105h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36106i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a f36107j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Function2<Offset, Offset, Unit> f36108k;

        @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.TapKt$detectTapUnconsumed$2$1", f = "Tap.kt", l = {44}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0580a extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f36109h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a f36110i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ PointerInputScope f36111j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ Function2<Offset, Offset, Unit> f36112k;

            @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.TapKt$detectTapUnconsumed$2$1$1", f = "Tap.kt", l = {45, 48}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0581a extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f36113h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ Object f36114i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a f36115j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ Function2<Offset, Offset, Unit> f36116k;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C0581a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a aVar, Function2<? super Offset, ? super Offset, Unit> function2, c<? super C0581a> cVar) {
                    super(2, cVar);
                    this.f36115j = aVar;
                    this.f36116k = function2;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final c<Unit> create(Object obj, c<?> cVar) {
                    C0581a c0581a = new C0581a(this.f36115j, this.f36116k, cVar);
                    c0581a.f36114i = obj;
                    return c0581a;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: i */
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, c<? super Unit> cVar) {
                    return ((C0581a) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
                }

                /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r6) {
                    /*
                        r5 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                        int r1 = r5.f36113h
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L26
                        if (r1 == r3) goto L1e
                        if (r1 != r2) goto L16
                        java.lang.Object r0 = r5.f36114i
                        androidx.compose.ui.input.pointer.PointerInputChange r0 = (androidx.compose.ui.input.pointer.PointerInputChange) r0
                        kotlin.f.b(r6)
                        goto L56
                    L16:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r0)
                        throw r6
                    L1e:
                        java.lang.Object r1 = r5.f36114i
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        kotlin.f.b(r6)
                        goto L3a
                    L26:
                        kotlin.f.b(r6)
                        java.lang.Object r6 = r5.f36114i
                        r1 = r6
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        r5.f36114i = r1
                        r5.f36113h = r3
                        r6 = 0
                        java.lang.Object r6 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(r1, r6, r5)
                        if (r6 != r0) goto L3a
                        return r0
                    L3a:
                        androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
                        boolean r3 = r6.getPressed()
                        boolean r4 = r6.getPreviousPressed()
                        if (r3 == r4) goto L49
                        r6.consume()
                    L49:
                        r5.f36114i = r6
                        r5.f36113h = r2
                        java.lang.Object r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.a(r1, r5)
                        if (r1 != r0) goto L54
                        return r0
                    L54:
                        r0 = r6
                        r6 = r1
                    L56:
                        androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
                        if (r6 != 0) goto L60
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a r6 = r5.f36115j
                        r6.a()
                        goto L7a
                    L60:
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a r1 = r5.f36115j
                        r1.b()
                        kotlin.jvm.functions.Function2<androidx.compose.ui.geometry.Offset, androidx.compose.ui.geometry.Offset, kotlin.Unit> r1 = r5.f36116k
                        long r2 = r0.m3208getPositionF1C5BW0()
                        androidx.compose.ui.geometry.Offset r0 = androidx.compose.ui.geometry.Offset.m1595boximpl(r2)
                        long r2 = r6.m3208getPositionF1C5BW0()
                        androidx.compose.ui.geometry.Offset r6 = androidx.compose.ui.geometry.Offset.m1595boximpl(r2)
                        r1.invoke(r0, r6)
                    L7a:
                        kotlin.Unit r6 = kotlin.Unit.f60915a
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.a.C0580a.C0581a.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0580a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a aVar, PointerInputScope pointerInputScope, Function2<? super Offset, ? super Offset, Unit> function2, c<? super C0580a> cVar) {
                super(2, cVar);
                this.f36110i = aVar;
                this.f36111j = pointerInputScope;
                this.f36112k = function2;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
                return ((C0580a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final c<Unit> create(Object obj, c<?> cVar) {
                return new C0580a(this.f36110i, this.f36111j, this.f36112k, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f36109h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    this.f36110i.c();
                    PointerInputScope pointerInputScope = this.f36111j;
                    C0581a c0581a = new C0581a(this.f36110i, this.f36112k, null);
                    this.f36109h = 1;
                    if (pointerInputScope.awaitPointerEventScope(c0581a, this) == f10) {
                        return f10;
                    }
                }
                return Unit.f60915a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a aVar, Function2<? super Offset, ? super Offset, Unit> function2, c<? super a> cVar) {
            super(2, cVar);
            this.f36107j = aVar;
            this.f36108k = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            a aVar = new a(this.f36107j, this.f36108k, cVar);
            aVar.f36106i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(PointerInputScope pointerInputScope, c<? super Unit> cVar) {
            return ((a) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36105h;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                C0580a c0580a = new C0580a(this.f36107j, (PointerInputScope) this.f36106i, this.f36108k, null);
                this.f36105h = 1;
                if (i.f(c0580a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.TapKt", f = "Tap.kt", l = {62, 77}, m = "waitForUpOrCancellationInitial")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0582b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f36117h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f36118i;

        /* renamed from: j  reason: collision with root package name */
        public int f36119j;

        public C0582b(c<? super C0582b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36118i = obj;
            this.f36119j |= Integer.MIN_VALUE;
            return b.c(null, this);
        }
    }

    @Nullable
    public static final Object b(@NotNull PointerInputScope pointerInputScope, @NotNull Function2<? super Offset, ? super Offset, Unit> function2, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new a(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.a(pointerInputScope), function2, null), cVar);
        if (forEachGesture == kotlin.coroutines.intrinsics.a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0095, code lost:
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00a0 -> B:36:0x00a3). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(androidx.compose.ui.input.pointer.AwaitPointerEventScope r13, rs.c<? super androidx.compose.ui.input.pointer.PointerInputChange> r14) {
        /*
            boolean r0 = r14 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.C0582b
            if (r0 == 0) goto L13
            r0 = r14
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b$b r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.C0582b) r0
            int r1 = r0.f36119j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f36119j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b$b r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b$b
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.f36118i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f36119j
            r3 = 0
            r4 = 2
            r5 = 0
            r6 = 1
            if (r2 == 0) goto L43
            if (r2 == r6) goto L3b
            if (r2 != r4) goto L33
            java.lang.Object r13 = r0.f36117h
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r13 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r13
            kotlin.f.b(r14)
            goto La3
        L33:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L3b:
            java.lang.Object r13 = r0.f36117h
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r13 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r13
            kotlin.f.b(r14)
            goto L53
        L43:
            kotlin.f.b(r14)
        L46:
            androidx.compose.ui.input.pointer.PointerEventPass r14 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
            r0.f36117h = r13
            r0.f36119j = r6
            java.lang.Object r14 = r13.awaitPointerEvent(r14, r0)
            if (r14 != r1) goto L53
            return r1
        L53:
            androidx.compose.ui.input.pointer.PointerEvent r14 = (androidx.compose.ui.input.pointer.PointerEvent) r14
            java.util.List r2 = r14.getChanges()
            int r7 = r2.size()
            r8 = r5
        L5e:
            if (r8 >= r7) goto Lc3
            java.lang.Object r9 = r2.get(r8)
            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
            boolean r9 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUp(r9)
            if (r9 != 0) goto Lc0
            java.util.List r14 = r14.getChanges()
            int r2 = r14.size()
            r7 = r5
        L75:
            if (r7 >= r2) goto L96
            java.lang.Object r8 = r14.get(r7)
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            boolean r9 = r8.isConsumed()
            if (r9 != 0) goto L95
            long r9 = r13.mo3126getSizeYbymL2g()
            long r11 = r13.mo3125getExtendedTouchPaddingNHjbRc()
            boolean r8 = androidx.compose.ui.input.pointer.PointerEventKt.m3158isOutOfBoundsjwHxaWs(r8, r9, r11)
            if (r8 == 0) goto L92
            goto L95
        L92:
            int r7 = r7 + 1
            goto L75
        L95:
            return r3
        L96:
            androidx.compose.ui.input.pointer.PointerEventPass r14 = androidx.compose.ui.input.pointer.PointerEventPass.Final
            r0.f36117h = r13
            r0.f36119j = r4
            java.lang.Object r14 = r13.awaitPointerEvent(r14, r0)
            if (r14 != r1) goto La3
            return r1
        La3:
            androidx.compose.ui.input.pointer.PointerEvent r14 = (androidx.compose.ui.input.pointer.PointerEvent) r14
            java.util.List r14 = r14.getChanges()
            int r2 = r14.size()
            r7 = r5
        Lae:
            if (r7 >= r2) goto L46
            java.lang.Object r8 = r14.get(r7)
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            boolean r8 = r8.isConsumed()
            if (r8 == 0) goto Lbd
            return r3
        Lbd:
            int r7 = r7 + 1
            goto Lae
        Lc0:
            int r8 = r8 + 1
            goto L5e
        Lc3:
            java.util.List r13 = r14.getChanges()
            java.lang.Object r13 = r13.get(r5)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.touch.b.c(androidx.compose.ui.input.pointer.AwaitPointerEventScope, rs.c):java.lang.Object");
    }
}
