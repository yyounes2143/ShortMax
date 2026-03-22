package androidx.lifecycle;

import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: HasDefaultViewModelProviderFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public interface HasDefaultViewModelProviderFactory {
    @NotNull
    default CreationExtras getDefaultViewModelCreationExtras() {
        return CreationExtras.Empty.INSTANCE;
    }

    @NotNull
    ViewModelProvider.Factory getDefaultViewModelProviderFactory();
}
