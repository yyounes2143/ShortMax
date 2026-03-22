package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreationExtras.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class CreationExtras {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final Map<Key<?>, Object> extras = new LinkedHashMap();

    /* compiled from: CreationExtras.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ <T> Key<T> Key() {
            Intrinsics.needClassReification();
            return new Key<T>() { // from class: androidx.lifecycle.viewmodel.CreationExtras$Companion$Key$1
            };
        }

        private Companion() {
        }
    }

    /* compiled from: CreationExtras.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Empty extends CreationExtras {
        @NotNull
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override // androidx.lifecycle.viewmodel.CreationExtras
        @Nullable
        public <T> T get(@NotNull Key<T> key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return null;
        }
    }

    /* compiled from: CreationExtras.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface Key<T> {
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof CreationExtras) && Intrinsics.areEqual(this.extras, ((CreationExtras) obj).extras)) {
            return true;
        }
        return false;
    }

    @Nullable
    public abstract <T> T get(@NotNull Key<T> key);

    @NotNull
    public final Map<Key<?>, Object> getExtras$lifecycle_viewmodel_release() {
        return this.extras;
    }

    public int hashCode() {
        return this.extras.hashCode();
    }

    @NotNull
    public String toString() {
        return "CreationExtras(extras=" + this.extras + ')';
    }
}
