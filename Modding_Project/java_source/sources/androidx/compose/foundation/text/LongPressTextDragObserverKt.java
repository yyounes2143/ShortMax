package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LongPressTextDragObserver.kt */
@Metadata
/* loaded from: classes.dex */
public final class LongPressTextDragObserverKt {
    @Nullable
    public static final Object detectDownAndDragGesturesWithObserver(@NotNull PointerInputScope pointerInputScope, @NotNull TextDragObserver textDragObserver, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2(pointerInputScope, textDragObserver, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }

    @Nullable
    public static final Object detectDragGesturesAfterLongPressWithObserver(@NotNull PointerInputScope pointerInputScope, @NotNull final TextDragObserver textDragObserver, @NotNull c<? super Unit> cVar) {
        Object detectDragGesturesAfterLongPress = DragGestureDetectorKt.detectDragGesturesAfterLongPress(pointerInputScope, new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                m731invokek4lQ0M(offset.m1616unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
            public final void m731invokek4lQ0M(long j10) {
                TextDragObserver.this.mo762onStartk4lQ0M(j10);
            }
        }, new Function0<Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$3
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
                TextDragObserver.this.onStop();
            }
        }, new Function0<Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$4
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
                TextDragObserver.this.onCancel();
            }
        }, new Function2<PointerInputChange, Offset, Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PointerInputChange pointerInputChange, Offset offset) {
                m732invokeUv8p0NA(pointerInputChange, offset.m1616unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-Uv8p0NA  reason: not valid java name */
            public final void m732invokeUv8p0NA(@NotNull PointerInputChange pointerInputChange, long j10) {
                Intrinsics.checkNotNullParameter(pointerInputChange, "<anonymous parameter 0>");
                TextDragObserver.this.mo761onDragk4lQ0M(j10);
            }
        }, cVar);
        if (detectDragGesturesAfterLongPress == a.f()) {
            return detectDragGesturesAfterLongPress;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object detectDragGesturesWithObserver(PointerInputScope pointerInputScope, final TextDragObserver textDragObserver, c<? super Unit> cVar) {
        Object detectDragGestures = DragGestureDetectorKt.detectDragGestures(pointerInputScope, new Function1<Offset, Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesWithObserver$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                m733invokek4lQ0M(offset.m1616unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
            public final void m733invokek4lQ0M(long j10) {
                TextDragObserver.this.mo762onStartk4lQ0M(j10);
            }
        }, new Function0<Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesWithObserver$3
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
                TextDragObserver.this.onStop();
            }
        }, new Function0<Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesWithObserver$4
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
                TextDragObserver.this.onCancel();
            }
        }, new Function2<PointerInputChange, Offset, Unit>() { // from class: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectDragGesturesWithObserver$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PointerInputChange pointerInputChange, Offset offset) {
                m734invokeUv8p0NA(pointerInputChange, offset.m1616unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-Uv8p0NA  reason: not valid java name */
            public final void m734invokeUv8p0NA(@NotNull PointerInputChange pointerInputChange, long j10) {
                Intrinsics.checkNotNullParameter(pointerInputChange, "<anonymous parameter 0>");
                TextDragObserver.this.mo761onDragk4lQ0M(j10);
            }
        }, cVar);
        if (detectDragGestures == a.f()) {
            return detectDragGestures;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object detectPreDragGesturesWithObserver(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(textDragObserver, null), cVar);
        if (forEachGesture == a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }
}
