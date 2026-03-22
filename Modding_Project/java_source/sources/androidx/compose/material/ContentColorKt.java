package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContentColor.kt */
@Metadata
/* loaded from: classes.dex */
public final class ContentColorKt {
    @NotNull
    private static final ProvidableCompositionLocal<Color> LocalContentColor = CompositionLocalKt.compositionLocalOf$default(null, new Function0<Color>() { // from class: androidx.compose.material.ContentColorKt$LocalContentColor$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Color invoke() {
            return Color.m1832boximpl(m1036invoke0d7_KjU());
        }

        /* renamed from: invoke-0d7_KjU  reason: not valid java name */
        public final long m1036invoke0d7_KjU() {
            return Color.Companion.m1868getBlack0d7_KjU();
        }
    }, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<Color> getLocalContentColor() {
        return LocalContentColor;
    }
}
