package androidx.compose.ui.modifier;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ModifierLocal.kt */
@Metadata
/* loaded from: classes.dex */
public interface ModifierLocalReadScope {
    <T> T getCurrent(@NotNull ModifierLocal<T> modifierLocal);
}
