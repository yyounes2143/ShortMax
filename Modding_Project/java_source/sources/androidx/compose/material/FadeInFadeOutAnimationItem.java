package androidx.compose.material;

import androidx.compose.runtime.Composer;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnackbarHost.kt */
@Metadata
/* loaded from: classes.dex */
final class FadeInFadeOutAnimationItem<T> {
    private final T key;
    @NotNull
    private final n<Function2<? super Composer, ? super Integer, Unit>, Composer, Integer, Unit> transition;

    /* JADX WARN: Multi-variable type inference failed */
    public FadeInFadeOutAnimationItem(T t10, @NotNull n<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> transition) {
        Intrinsics.checkNotNullParameter(transition, "transition");
        this.key = t10;
        this.transition = transition;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FadeInFadeOutAnimationItem copy$default(FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem, Object obj, n nVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = fadeInFadeOutAnimationItem.key;
        }
        if ((i10 & 2) != 0) {
            nVar = fadeInFadeOutAnimationItem.transition;
        }
        return fadeInFadeOutAnimationItem.copy(obj, nVar);
    }

    public final T component1() {
        return this.key;
    }

    @NotNull
    public final n<Function2<? super Composer, ? super Integer, Unit>, Composer, Integer, Unit> component2() {
        return this.transition;
    }

    @NotNull
    public final FadeInFadeOutAnimationItem<T> copy(T t10, @NotNull n<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> transition) {
        Intrinsics.checkNotNullParameter(transition, "transition");
        return new FadeInFadeOutAnimationItem<>(t10, transition);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FadeInFadeOutAnimationItem)) {
            return false;
        }
        FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) obj;
        if (Intrinsics.areEqual(this.key, fadeInFadeOutAnimationItem.key) && Intrinsics.areEqual(this.transition, fadeInFadeOutAnimationItem.transition)) {
            return true;
        }
        return false;
    }

    public final T getKey() {
        return this.key;
    }

    @NotNull
    public final n<Function2<? super Composer, ? super Integer, Unit>, Composer, Integer, Unit> getTransition() {
        return this.transition;
    }

    public int hashCode() {
        int hashCode;
        T t10 = this.key;
        if (t10 == null) {
            hashCode = 0;
        } else {
            hashCode = t10.hashCode();
        }
        return (hashCode * 31) + this.transition.hashCode();
    }

    @NotNull
    public String toString() {
        return "FadeInFadeOutAnimationItem(key=" + this.key + ", transition=" + this.transition + ')';
    }
}
