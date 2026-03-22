package androidx.compose.ui.input.focus;

import androidx.compose.ui.input.focus.FocusAwareEvent;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusAwareInputModifier.kt */
@Metadata
/* loaded from: classes.dex */
public class FocusAwareInputModifier<T extends FocusAwareEvent> implements ModifierLocalConsumer, ModifierLocalProvider<FocusAwareInputModifier<T>> {
    @Nullable
    private FocusAwareInputModifier<T> focusAwareEventParent;
    @NotNull
    private final ProvidableModifierLocal<FocusAwareInputModifier<T>> key;
    @Nullable
    private final Function1<FocusAwareEvent, Boolean> onEvent;
    @Nullable
    private final Function1<FocusAwareEvent, Boolean> onPreEvent;

    /* JADX WARN: Multi-variable type inference failed */
    public FocusAwareInputModifier(@Nullable Function1<? super FocusAwareEvent, Boolean> function1, @Nullable Function1<? super FocusAwareEvent, Boolean> function12, @NotNull ProvidableModifierLocal<FocusAwareInputModifier<T>> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.onEvent = function1;
        this.onPreEvent = function12;
        this.key = key;
    }

    private final boolean propagateEvent(T t10) {
        Function1<FocusAwareEvent, Boolean> function1 = this.onEvent;
        if (function1 != null && function1.invoke(t10).booleanValue()) {
            return true;
        }
        FocusAwareInputModifier<T> focusAwareInputModifier = this.focusAwareEventParent;
        if (focusAwareInputModifier != null) {
            return focusAwareInputModifier.propagateEvent(t10);
        }
        return false;
    }

    private final boolean propagatePreEvent(T t10) {
        FocusAwareInputModifier<T> focusAwareInputModifier = this.focusAwareEventParent;
        if (focusAwareInputModifier != null && focusAwareInputModifier.propagatePreEvent(t10)) {
            return true;
        }
        Function1<FocusAwareEvent, Boolean> function1 = this.onPreEvent;
        if (function1 != null) {
            return function1.invoke(t10).booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<FocusAwareInputModifier<T>> getKey() {
        return this.key;
    }

    @Nullable
    public final Function1<FocusAwareEvent, Boolean> getOnEvent() {
        return this.onEvent;
    }

    @Nullable
    public final Function1<FocusAwareEvent, Boolean> getOnPreEvent() {
        return this.onPreEvent;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public FocusAwareInputModifier<T> getValue() {
        return this;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.focusAwareEventParent = (FocusAwareInputModifier) scope.getCurrent(getKey());
    }

    public final boolean propagateFocusAwareEvent(@NotNull T event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!propagatePreEvent(event) && !propagateEvent(event)) {
            return false;
        }
        return true;
    }
}
