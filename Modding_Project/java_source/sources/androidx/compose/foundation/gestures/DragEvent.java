package androidx.compose.foundation.gestures;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Draggable.kt */
@Metadata
/* loaded from: classes.dex */
abstract class DragEvent {

    /* compiled from: Draggable.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DragCancelled extends DragEvent {
        public static final int $stable = 0;
        @NotNull
        public static final DragCancelled INSTANCE = new DragCancelled();

        private DragCancelled() {
            super(null);
        }
    }

    /* compiled from: Draggable.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DragDelta extends DragEvent {
        public static final int $stable = 0;
        private final float delta;
        private final long pointerPosition;

        public /* synthetic */ DragDelta(float f10, long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(f10, j10);
        }

        public final float getDelta() {
            return this.delta;
        }

        /* renamed from: getPointerPosition-F1C5BW0  reason: not valid java name */
        public final long m277getPointerPositionF1C5BW0() {
            return this.pointerPosition;
        }

        private DragDelta(float f10, long j10) {
            super(null);
            this.delta = f10;
            this.pointerPosition = j10;
        }
    }

    /* compiled from: Draggable.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DragStarted extends DragEvent {
        public static final int $stable = 0;
        private final long startPoint;

        public /* synthetic */ DragStarted(long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10);
        }

        /* renamed from: getStartPoint-F1C5BW0  reason: not valid java name */
        public final long m278getStartPointF1C5BW0() {
            return this.startPoint;
        }

        private DragStarted(long j10) {
            super(null);
            this.startPoint = j10;
        }
    }

    /* compiled from: Draggable.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class DragStopped extends DragEvent {
        public static final int $stable = 0;
        private final float velocity;

        public DragStopped(float f10) {
            super(null);
            this.velocity = f10;
        }

        public final float getVelocity() {
            return this.velocity;
        }
    }

    public /* synthetic */ DragEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private DragEvent() {
    }
}
