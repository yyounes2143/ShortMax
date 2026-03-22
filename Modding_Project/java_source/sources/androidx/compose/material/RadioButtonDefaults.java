package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RadioButton.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class RadioButtonDefaults {
    public static final int $stable = 0;
    @NotNull
    public static final RadioButtonDefaults INSTANCE = new RadioButtonDefaults();

    private RadioButtonDefaults() {
    }

    @Composable
    @NotNull
    /* renamed from: colors-RGew2ao  reason: not valid java name */
    public final RadioButtonColors m1169colorsRGew2ao(long j10, long j11, long j12, @Nullable Composer composer, int i10, int i11) {
        long j13;
        long j14;
        long j15;
        composer.startReplaceableGroup(1370708026);
        if ((i11 & 1) != 0) {
            j13 = MaterialTheme.INSTANCE.getColors(composer, 6).m1005getSecondary0d7_KjU();
        } else {
            j13 = j10;
        }
        if ((i11 & 2) != 0) {
            j14 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j14 = j11;
        }
        if ((i11 & 4) != 0) {
            j15 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j15 = j12;
        }
        Color m1832boximpl = Color.m1832boximpl(j13);
        Color m1832boximpl2 = Color.m1832boximpl(j14);
        Color m1832boximpl3 = Color.m1832boximpl(j15);
        composer.startReplaceableGroup(1618982084);
        boolean changed = composer.changed(m1832boximpl) | composer.changed(m1832boximpl2) | composer.changed(m1832boximpl3);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DefaultRadioButtonColors(j13, j14, j15, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DefaultRadioButtonColors defaultRadioButtonColors = (DefaultRadioButtonColors) rememberedValue;
        composer.endReplaceableGroup();
        return defaultRadioButtonColors;
    }
}
