package androidx.core.app;

import androidx.core.util.Consumer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnPictureInPictureModeChangedProvider.kt */
@Metadata
/* loaded from: classes.dex */
public interface OnPictureInPictureModeChangedProvider {
    void addOnPictureInPictureModeChangedListener(@NotNull Consumer<PictureInPictureModeChangedInfo> consumer);

    void removeOnPictureInPictureModeChangedListener(@NotNull Consumer<PictureInPictureModeChangedInfo> consumer);
}
