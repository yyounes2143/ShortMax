package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Outline.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class Outline {

    /* compiled from: Outline.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Generic extends Outline {
        @NotNull
        private final Path path;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Generic(@NotNull Path path) {
            super(null);
            Intrinsics.checkNotNullParameter(path, "path");
            this.path = path;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Generic) && Intrinsics.areEqual(this.path, ((Generic) obj).path)) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.ui.graphics.Outline
        @NotNull
        public Rect getBounds() {
            return this.path.getBounds();
        }

        @NotNull
        public final Path getPath() {
            return this.path;
        }

        public int hashCode() {
            return this.path.hashCode();
        }
    }

    /* compiled from: Outline.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class Rectangle extends Outline {
        @NotNull
        private final Rect rect;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Rectangle(@NotNull Rect rect) {
            super(null);
            Intrinsics.checkNotNullParameter(rect, "rect");
            this.rect = rect;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Rectangle) && Intrinsics.areEqual(this.rect, ((Rectangle) obj).rect)) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.ui.graphics.Outline
        @NotNull
        public Rect getBounds() {
            return this.rect;
        }

        @NotNull
        public final Rect getRect() {
            return this.rect;
        }

        public int hashCode() {
            return this.rect.hashCode();
        }
    }

    /* compiled from: Outline.kt */
    @Immutable
    @Metadata
    /* loaded from: classes.dex */
    public static final class Rounded extends Outline {
        @NotNull
        private final RoundRect roundRect;
        @Nullable
        private final Path roundRectPath;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Rounded(@NotNull RoundRect roundRect) {
            super(null);
            Intrinsics.checkNotNullParameter(roundRect, "roundRect");
            Path path = null;
            this.roundRect = roundRect;
            if (!OutlineKt.access$hasSameCornerRadius(roundRect)) {
                path = AndroidPath_androidKt.Path();
                path.addRoundRect(roundRect);
            }
            this.roundRectPath = path;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Rounded) && Intrinsics.areEqual(this.roundRect, ((Rounded) obj).roundRect)) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.ui.graphics.Outline
        @NotNull
        public Rect getBounds() {
            return RoundRectKt.getBoundingRect(this.roundRect);
        }

        @NotNull
        public final RoundRect getRoundRect() {
            return this.roundRect;
        }

        @Nullable
        public final Path getRoundRectPath$ui_graphics_release() {
            return this.roundRectPath;
        }

        public int hashCode() {
            return this.roundRect.hashCode();
        }
    }

    public /* synthetic */ Outline(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract Rect getBounds();

    private Outline() {
    }
}
