package androidx.compose.ui.graphics;

import android.graphics.BlendModeColorFilter;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidColorFilter.android.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
public final class BlendModeColorFilterHelper {
    @NotNull
    public static final BlendModeColorFilterHelper INSTANCE = new BlendModeColorFilterHelper();

    private BlendModeColorFilterHelper() {
    }

    @DoNotInline
    @NotNull
    /* renamed from: BlendModeColorFilter-xETnrds  reason: not valid java name */
    public final BlendModeColorFilter m1788BlendModeColorFilterxETnrds(long j10, int i10) {
        b1.a();
        return a1.a(ColorKt.m1897toArgb8_81llA(j10), AndroidBlendMode_androidKt.m1698toAndroidBlendModes9anfk8(i10));
    }
}
