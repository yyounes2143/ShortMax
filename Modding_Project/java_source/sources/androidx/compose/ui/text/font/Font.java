package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.ExperimentalTextApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Font.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public interface Font {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final long MaximumAsyncTimeout = 15000;

    /* compiled from: Font.kt */
    @ms.c
    @Metadata
    /* loaded from: classes.dex */
    public interface ResourceLoader {
        @ms.c
        @NotNull
        Object load(@NotNull Font font);
    }

    @ExperimentalTextApi
    /* renamed from: getLoadingStrategy-PKNRLFQ */
    int mo3724getLoadingStrategyPKNRLFQ();

    /* renamed from: getStyle-_-LCdwA */
    int mo3723getStyle_LCdwA();

    @NotNull
    FontWeight getWeight();

    /* compiled from: Font.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final long MaximumAsyncTimeout = 15000;

        private Companion() {
        }

        @ExperimentalTextApi
        public static /* synthetic */ void getMaximumAsyncTimeout$ui_text_release$annotations() {
        }
    }

    @ExperimentalTextApi
    /* renamed from: getLoadingStrategy-PKNRLFQ$annotations  reason: not valid java name */
    static /* synthetic */ void m3752getLoadingStrategyPKNRLFQ$annotations() {
    }
}
