package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Effects.kt */
@Metadata
/* loaded from: classes.dex */
public final class DisposableEffectImpl implements RememberObserver {
    @NotNull
    private final Function1<DisposableEffectScope, DisposableEffectResult> effect;
    @Nullable
    private DisposableEffectResult onDispose;

    /* JADX WARN: Multi-variable type inference failed */
    public DisposableEffectImpl(@NotNull Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> function1) {
        this.effect = function1;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        DisposableEffectResult disposableEffectResult = this.onDispose;
        if (disposableEffectResult != null) {
            disposableEffectResult.dispose();
        }
        this.onDispose = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        DisposableEffectScope disposableEffectScope;
        Function1<DisposableEffectScope, DisposableEffectResult> function1 = this.effect;
        disposableEffectScope = EffectsKt.InternalDisposableEffectScope;
        this.onDispose = function1.invoke(disposableEffectScope);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }
}
