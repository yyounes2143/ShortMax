package androidx.compose.ui.text.font;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Font.kt */
@Metadata
/* loaded from: classes.dex */
public interface PlatformFontLoader {
    @Nullable
    Object awaitLoad(@NotNull Font font, @NotNull rs.c<Object> cVar);

    @Nullable
    Object getCacheKey();

    @Nullable
    Object loadBlocking(@NotNull Font font);
}
