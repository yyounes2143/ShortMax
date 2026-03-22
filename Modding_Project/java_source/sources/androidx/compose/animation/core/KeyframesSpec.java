package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationSpec.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class KeyframesSpec<T> implements DurationBasedAnimationSpec<T> {
    @NotNull
    private final KeyframesSpecConfig<T> config;

    /* compiled from: AnimationSpec.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class KeyframesSpecConfig<T> {
        public static final int $stable = 8;
        private int delayMillis;
        private int durationMillis = 300;
        @NotNull
        private final Map<Integer, KeyframeEntity<T>> keyframes = new LinkedHashMap();

        @NotNull
        public final KeyframeEntity<T> at(T t10, int i10) {
            KeyframeEntity<T> keyframeEntity = new KeyframeEntity<>(t10, null, 2, null);
            this.keyframes.put(Integer.valueOf(i10), keyframeEntity);
            return keyframeEntity;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof KeyframesSpecConfig) {
                KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpecConfig) obj;
                if (this.delayMillis == keyframesSpecConfig.delayMillis && this.durationMillis == keyframesSpecConfig.durationMillis && Intrinsics.areEqual(this.keyframes, keyframesSpecConfig.keyframes)) {
                    return true;
                }
            }
            return false;
        }

        public final int getDelayMillis() {
            return this.delayMillis;
        }

        public final int getDurationMillis() {
            return this.durationMillis;
        }

        @NotNull
        public final Map<Integer, KeyframeEntity<T>> getKeyframes$animation_core_release() {
            return this.keyframes;
        }

        public int hashCode() {
            return (((this.durationMillis * 31) + this.delayMillis) * 31) + this.keyframes.hashCode();
        }

        public final void setDelayMillis(int i10) {
            this.delayMillis = i10;
        }

        public final void setDurationMillis(int i10) {
            this.durationMillis = i10;
        }

        public final void with(@NotNull KeyframeEntity<T> keyframeEntity, @NotNull Easing easing) {
            Intrinsics.checkNotNullParameter(keyframeEntity, "<this>");
            Intrinsics.checkNotNullParameter(easing, "easing");
            keyframeEntity.setEasing$animation_core_release(easing);
        }
    }

    public KeyframesSpec(@NotNull KeyframesSpecConfig<T> config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof KeyframesSpec) && Intrinsics.areEqual(this.config, ((KeyframesSpec) obj).config)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final KeyframesSpecConfig<T> getConfig() {
        return this.config;
    }

    public int hashCode() {
        return this.config.hashCode();
    }

    /* compiled from: AnimationSpec.kt */
    @StabilityInferred(parameters = 0)
    @Metadata
    /* loaded from: classes.dex */
    public static final class KeyframeEntity<T> {
        public static final int $stable = 8;
        @NotNull
        private Easing easing;
        private final T value;

        public KeyframeEntity(T t10, @NotNull Easing easing) {
            Intrinsics.checkNotNullParameter(easing, "easing");
            this.value = t10;
            this.easing = easing;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof KeyframeEntity) {
                KeyframeEntity keyframeEntity = (KeyframeEntity) obj;
                if (Intrinsics.areEqual(keyframeEntity.value, this.value) && Intrinsics.areEqual(keyframeEntity.easing, this.easing)) {
                    return true;
                }
            }
            return false;
        }

        @NotNull
        public final Easing getEasing$animation_core_release() {
            return this.easing;
        }

        public final T getValue$animation_core_release() {
            return this.value;
        }

        public int hashCode() {
            int i10;
            T t10 = this.value;
            if (t10 != null) {
                i10 = t10.hashCode();
            } else {
                i10 = 0;
            }
            return (i10 * 31) + this.easing.hashCode();
        }

        public final void setEasing$animation_core_release(@NotNull Easing easing) {
            Intrinsics.checkNotNullParameter(easing, "<set-?>");
            this.easing = easing;
        }

        @NotNull
        public final <V extends AnimationVector> Pair<V, Easing> toPair$animation_core_release(@NotNull Function1<? super T, ? extends V> convertToVector) {
            Intrinsics.checkNotNullParameter(convertToVector, "convertToVector");
            return k.a(convertToVector.invoke((T) this.value), this.easing);
        }

        public /* synthetic */ KeyframeEntity(Object obj, Easing easing, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, (i10 & 2) != 0 ? EasingKt.getLinearEasing() : easing);
        }
    }

    @Override // androidx.compose.animation.core.FiniteAnimationSpec, androidx.compose.animation.core.AnimationSpec
    @NotNull
    public <V extends AnimationVector> VectorizedKeyframesSpec<V> vectorize(@NotNull TwoWayConverter<T, V> converter) {
        Intrinsics.checkNotNullParameter(converter, "converter");
        Map<Integer, KeyframeEntity<T>> keyframes$animation_core_release = this.config.getKeyframes$animation_core_release();
        LinkedHashMap linkedHashMap = new LinkedHashMap(p0.e(keyframes$animation_core_release.size()));
        Iterator<T> it = keyframes$animation_core_release.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), ((KeyframeEntity) entry.getValue()).toPair$animation_core_release(converter.getConvertToVector()));
        }
        return new VectorizedKeyframesSpec<>(linkedHashMap, this.config.getDurationMillis(), this.config.getDelayMillis());
    }
}
