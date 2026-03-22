package androidx.core.app;

import android.content.Intent;
import androidx.core.util.Consumer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnNewIntentProvider.kt */
@Metadata
/* loaded from: classes.dex */
public interface OnNewIntentProvider {
    void addOnNewIntentListener(@NotNull Consumer<Intent> consumer);

    void removeOnNewIntentListener(@NotNull Consumer<Intent> consumer);
}
