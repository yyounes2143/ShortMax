package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Checkbox.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class CheckboxDefaults {
    public static final int $stable = 0;
    @NotNull
    public static final CheckboxDefaults INSTANCE = new CheckboxDefaults();

    private CheckboxDefaults() {
    }

    @Composable
    @NotNull
    /* renamed from: colors-zjMxDiM  reason: not valid java name */
    public final CheckboxColors m968colorszjMxDiM(long j10, long j11, long j12, long j13, long j14, @Nullable Composer composer, int i10, int i11) {
        long j15;
        long j16;
        long j17;
        long j18;
        long j19;
        composer.startReplaceableGroup(469524104);
        if ((i11 & 1) != 0) {
            j15 = MaterialTheme.INSTANCE.getColors(composer, 6).m1005getSecondary0d7_KjU();
        } else {
            j15 = j10;
        }
        if ((i11 & 2) != 0) {
            j16 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j16 = j11;
        }
        if ((i11 & 4) != 0) {
            j17 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j17 = j12;
        }
        if ((i11 & 8) != 0) {
            j18 = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j18 = j13;
        }
        if ((i11 & 16) != 0) {
            j19 = Color.m1841copywmQWz5c$default(j15, ContentAlpha.INSTANCE.getDisabled(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            j19 = j14;
        }
        Object[] objArr = {Color.m1832boximpl(j15), Color.m1832boximpl(j16), Color.m1832boximpl(j17), Color.m1832boximpl(j18), Color.m1832boximpl(j19)};
        composer.startReplaceableGroup(-568225417);
        boolean z10 = false;
        for (int i12 = 0; i12 < 5; i12++) {
            z10 |= composer.changed(objArr[i12]);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z10 || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DefaultCheckboxColors(j17, Color.m1841copywmQWz5c$default(j17, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), j15, Color.m1841copywmQWz5c$default(j15, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), j18, Color.m1841copywmQWz5c$default(j18, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), j19, j15, j16, j18, j19, null);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        DefaultCheckboxColors defaultCheckboxColors = (DefaultCheckboxColors) rememberedValue;
        composer.endReplaceableGroup();
        return defaultCheckboxColors;
    }
}
