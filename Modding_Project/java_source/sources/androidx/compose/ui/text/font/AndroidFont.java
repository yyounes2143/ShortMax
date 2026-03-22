package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidFont.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class AndroidFont implements Font {
    private final int loadingStrategy;
    @NotNull
    private final TypefaceLoader typefaceLoader;

    /* compiled from: AndroidFont.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface TypefaceLoader {
        @Nullable
        Object awaitLoad(@NotNull Context context, @NotNull AndroidFont androidFont, @NotNull rs.c<? super android.graphics.Typeface> cVar);

        @Nullable
        android.graphics.Typeface loadBlocking(@NotNull Context context, @NotNull AndroidFont androidFont);
    }

    public /* synthetic */ AndroidFont(int i10, TypefaceLoader typefaceLoader, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, typefaceLoader);
    }

    @Override // androidx.compose.ui.text.font.Font
    /* renamed from: getLoadingStrategy-PKNRLFQ  reason: not valid java name */
    public final int mo3724getLoadingStrategyPKNRLFQ() {
        return this.loadingStrategy;
    }

    @NotNull
    public final TypefaceLoader getTypefaceLoader() {
        return this.typefaceLoader;
    }

    private AndroidFont(int i10, TypefaceLoader typefaceLoader) {
        this.loadingStrategy = i10;
        this.typefaceLoader = typefaceLoader;
    }
}
