package androidx.compose.foundation.interaction;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PressInteraction.kt */
@Metadata
/* loaded from: classes.dex */
public interface PressInteraction extends Interaction {

    /* compiled from: PressInteraction.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Cancel implements PressInteraction {
        public static final int $stable = 0;
        @NotNull
        private final Press press;

        public Cancel(@NotNull Press press) {
            Intrinsics.checkNotNullParameter(press, "press");
            this.press = press;
        }

        @NotNull
        public final Press getPress() {
            return this.press;
        }
    }

    /* compiled from: PressInteraction.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Press implements PressInteraction {
        public static final int $stable = 0;
        private final long pressPosition;

        public /* synthetic */ Press(long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10);
        }

        /* renamed from: getPressPosition-F1C5BW0  reason: not valid java name */
        public final long m367getPressPositionF1C5BW0() {
            return this.pressPosition;
        }

        private Press(long j10) {
            this.pressPosition = j10;
        }
    }

    /* compiled from: PressInteraction.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class Release implements PressInteraction {
        public static final int $stable = 0;
        @NotNull
        private final Press press;

        public Release(@NotNull Press press) {
            Intrinsics.checkNotNullParameter(press, "press");
            this.press = press;
        }

        @NotNull
        public final Press getPress() {
            return this.press;
        }
    }
}
