package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
@d(c = "androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1", f = "Scrollable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ScrollableKt$mouseWheelScroll$1 extends SuspendLambda implements Function2<PointerInputScope, c<? super Unit>, Object> {
    final /* synthetic */ ScrollConfig $mouseWheelScrollConfig;
    final /* synthetic */ State<ScrollingLogic> $scrollingLogicState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Scrollable.kt */
    @Metadata
    @d(c = "androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1$1", f = "Scrollable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, c<? super Unit>, Object> {
        final /* synthetic */ ScrollConfig $mouseWheelScrollConfig;
        final /* synthetic */ State<ScrollingLogic> $scrollingLogicState;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ScrollConfig scrollConfig, State<ScrollingLogic> state, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$mouseWheelScrollConfig = scrollConfig;
            this.$scrollingLogicState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$mouseWheelScrollConfig, this.$scrollingLogicState, cVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, cVar)).invokeSuspend(Unit.f60915a);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:11:0x002d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x004c A[EDGE_INSN: B:25:0x004c->B:18:0x004c ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002b -> B:12:0x002e). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r8.label
                r2 = 1
                if (r1 == 0) goto L1b
                if (r1 != r2) goto L13
                java.lang.Object r1 = r8.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                kotlin.f.b(r9)
                goto L2e
            L13:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1b:
                kotlin.f.b(r9)
                java.lang.Object r9 = r8.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r9 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r9
                r1 = r9
            L23:
                r8.L$0 = r1
                r8.label = r2
                java.lang.Object r9 = androidx.compose.foundation.gestures.ScrollableKt.access$awaitScrollEvent(r1, r8)
                if (r9 != r0) goto L2e
                return r0
            L2e:
                androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
                java.util.List r3 = r9.getChanges()
                int r4 = r3.size()
                r5 = 0
                r6 = r5
            L3a:
                if (r6 >= r4) goto L4c
                java.lang.Object r7 = r3.get(r6)
                androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
                boolean r7 = r7.isConsumed()
                if (r7 == 0) goto L49
                goto L23
            L49:
                int r6 = r6 + 1
                goto L3a
            L4c:
                androidx.compose.foundation.gestures.ScrollConfig r3 = r8.$mouseWheelScrollConfig
                androidx.compose.runtime.State<androidx.compose.foundation.gestures.ScrollingLogic> r4 = r8.$scrollingLogicState
                long r6 = r1.mo3126getSizeYbymL2g()
                long r6 = r3.mo272calculateMouseWheelScroll8xgXZGE(r1, r9, r6)
                java.lang.Object r3 = r4.getValue()
                androidx.compose.foundation.gestures.ScrollingLogic r3 = (androidx.compose.foundation.gestures.ScrollingLogic) r3
                float r4 = r3.m354toFloatk4lQ0M(r6)
                float r4 = r3.reverseIfNeeded(r4)
                androidx.compose.foundation.gestures.ScrollableState r3 = r3.getScrollableState()
                float r3 = r3.dispatchRawDelta(r4)
                r4 = 0
                int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                if (r3 != 0) goto L74
                goto L23
            L74:
                java.util.List r9 = r9.getChanges()
                int r3 = r9.size()
            L7c:
                if (r5 >= r3) goto L23
                java.lang.Object r4 = r9.get(r5)
                androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
                r4.consume()
                int r5 = r5 + 1
                goto L7c
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$mouseWheelScroll$1(ScrollConfig scrollConfig, State<ScrollingLogic> state, c<? super ScrollableKt$mouseWheelScroll$1> cVar) {
        super(2, cVar);
        this.$mouseWheelScrollConfig = scrollConfig;
        this.$scrollingLogicState = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        ScrollableKt$mouseWheelScroll$1 scrollableKt$mouseWheelScroll$1 = new ScrollableKt$mouseWheelScroll$1(this.$mouseWheelScrollConfig, this.$scrollingLogicState, cVar);
        scrollableKt$mouseWheelScroll$1.L$0 = obj;
        return scrollableKt$mouseWheelScroll$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable c<? super Unit> cVar) {
        return ((ScrollableKt$mouseWheelScroll$1) create(pointerInputScope, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$mouseWheelScrollConfig, this.$scrollingLogicState, null);
            this.label = 1;
            if (((PointerInputScope) this.L$0).awaitPointerEventScope(anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
