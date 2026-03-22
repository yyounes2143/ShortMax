package androidx.compose.animation;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnterExitTransition.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TransitionData {
    @Nullable
    private final ChangeSize changeSize;
    @Nullable
    private final Fade fade;
    @Nullable
    private final Scale scale;
    @Nullable
    private final Slide slide;

    public TransitionData() {
        this(null, null, null, null, 15, null);
    }

    public static /* synthetic */ TransitionData copy$default(TransitionData transitionData, Fade fade, Slide slide, ChangeSize changeSize, Scale scale, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            fade = transitionData.fade;
        }
        if ((i10 & 2) != 0) {
            slide = transitionData.slide;
        }
        if ((i10 & 4) != 0) {
            changeSize = transitionData.changeSize;
        }
        if ((i10 & 8) != 0) {
            scale = transitionData.scale;
        }
        return transitionData.copy(fade, slide, changeSize, scale);
    }

    @Nullable
    public final Fade component1() {
        return this.fade;
    }

    @Nullable
    public final Slide component2() {
        return this.slide;
    }

    @Nullable
    public final ChangeSize component3() {
        return this.changeSize;
    }

    @Nullable
    public final Scale component4() {
        return this.scale;
    }

    @NotNull
    public final TransitionData copy(@Nullable Fade fade, @Nullable Slide slide, @Nullable ChangeSize changeSize, @Nullable Scale scale) {
        return new TransitionData(fade, slide, changeSize, scale);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionData)) {
            return false;
        }
        TransitionData transitionData = (TransitionData) obj;
        if (Intrinsics.areEqual(this.fade, transitionData.fade) && Intrinsics.areEqual(this.slide, transitionData.slide) && Intrinsics.areEqual(this.changeSize, transitionData.changeSize) && Intrinsics.areEqual(this.scale, transitionData.scale)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final ChangeSize getChangeSize() {
        return this.changeSize;
    }

    @Nullable
    public final Fade getFade() {
        return this.fade;
    }

    @Nullable
    public final Scale getScale() {
        return this.scale;
    }

    @Nullable
    public final Slide getSlide() {
        return this.slide;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        Fade fade = this.fade;
        int i10 = 0;
        if (fade == null) {
            hashCode = 0;
        } else {
            hashCode = fade.hashCode();
        }
        int i11 = hashCode * 31;
        Slide slide = this.slide;
        if (slide == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = slide.hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        ChangeSize changeSize = this.changeSize;
        if (changeSize == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = changeSize.hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        Scale scale = this.scale;
        if (scale != null) {
            i10 = scale.hashCode();
        }
        return i13 + i10;
    }

    @NotNull
    public String toString() {
        return "TransitionData(fade=" + this.fade + ", slide=" + this.slide + ", changeSize=" + this.changeSize + ", scale=" + this.scale + ')';
    }

    public TransitionData(@Nullable Fade fade, @Nullable Slide slide, @Nullable ChangeSize changeSize, @Nullable Scale scale) {
        this.fade = fade;
        this.slide = slide;
        this.changeSize = changeSize;
        this.scale = scale;
    }

    public /* synthetic */ TransitionData(Fade fade, Slide slide, ChangeSize changeSize, Scale scale, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : fade, (i10 & 2) != 0 ? null : slide, (i10 & 4) != 0 ? null : changeSize, (i10 & 8) != 0 ? null : scale);
    }
}
