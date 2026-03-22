package androidx.compose.runtime.tooling;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionData.kt */
@Metadata
/* loaded from: classes.dex */
public interface CompositionGroup extends CompositionData {

    /* compiled from: CompositionData.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        @Nullable
        public static CompositionGroup find(@NotNull CompositionGroup compositionGroup, @NotNull Object obj) {
            return CompositionGroup.super.find(obj);
        }

        @Deprecated
        public static int getGroupSize(@NotNull CompositionGroup compositionGroup) {
            return CompositionGroup.super.getGroupSize();
        }

        @Deprecated
        @Nullable
        public static Object getIdentity(@NotNull CompositionGroup compositionGroup) {
            return CompositionGroup.super.getIdentity();
        }

        @Deprecated
        public static int getSlotsSize(@NotNull CompositionGroup compositionGroup) {
            return CompositionGroup.super.getSlotsSize();
        }
    }

    @NotNull
    Iterable<Object> getData();

    default int getGroupSize() {
        return 0;
    }

    @Nullable
    default Object getIdentity() {
        return null;
    }

    @NotNull
    Object getKey();

    @Nullable
    Object getNode();

    default int getSlotsSize() {
        return 0;
    }

    @Nullable
    String getSourceInfo();
}
