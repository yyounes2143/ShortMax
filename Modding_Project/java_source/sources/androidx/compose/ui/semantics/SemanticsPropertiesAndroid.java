package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SemanticsProperties.android.kt */
@StabilityInferred(parameters = 0)
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public final class SemanticsPropertiesAndroid {
    public static final int $stable = 0;
    @NotNull
    public static final SemanticsPropertiesAndroid INSTANCE = new SemanticsPropertiesAndroid();
    @NotNull
    private static final SemanticsPropertyKey<Boolean> TestTagsAsResourceId = new SemanticsPropertyKey<>("TestTagsAsResourceId", new Function2<Boolean, Boolean, Boolean>() { // from class: androidx.compose.ui.semantics.SemanticsPropertiesAndroid$TestTagsAsResourceId$1
        @Nullable
        public final Boolean invoke(@Nullable Boolean bool, boolean z10) {
            return bool;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool, Boolean bool2) {
            return invoke(bool, bool2.booleanValue());
        }
    });

    private SemanticsPropertiesAndroid() {
    }

    @ExperimentalComposeUiApi
    @NotNull
    public final SemanticsPropertyKey<Boolean> getTestTagsAsResourceId() {
        return TestTagsAsResourceId;
    }

    @ExperimentalComposeUiApi
    public static /* synthetic */ void getTestTagsAsResourceId$annotations() {
    }
}
