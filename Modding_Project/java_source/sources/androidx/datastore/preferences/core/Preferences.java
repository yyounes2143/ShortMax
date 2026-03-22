package androidx.datastore.preferences.core;

import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Preferences.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class Preferences {

    /* compiled from: Preferences.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Key<T> {
        @NotNull
        private final String name;

        public Key(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Key) {
                return Intrinsics.areEqual(this.name, ((Key) obj).name);
            }
            return false;
        }

        @NotNull
        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return this.name.hashCode();
        }

        @NotNull
        public final Pair<T> to(T t10) {
            return new Pair<>(this, t10);
        }

        @NotNull
        public String toString() {
            return this.name;
        }
    }

    /* compiled from: Preferences.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Pair<T> {
        @NotNull
        private final Key<T> key;
        private final T value;

        public Pair(@NotNull Key<T> key, T t10) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.key = key;
            this.value = t10;
        }

        @NotNull
        public final Key<T> getKey$datastore_preferences_core_release() {
            return this.key;
        }

        public final T getValue$datastore_preferences_core_release() {
            return this.value;
        }
    }

    @NotNull
    public abstract Map<Key<?>, Object> asMap();

    public abstract <T> boolean contains(@NotNull Key<T> key);

    @Nullable
    public abstract <T> T get(@NotNull Key<T> key);

    @NotNull
    public final MutablePreferences toMutablePreferences() {
        return new MutablePreferences(p0.A(asMap()), false);
    }

    @NotNull
    public final Preferences toPreferences() {
        return new MutablePreferences(p0.A(asMap()), true);
    }
}
