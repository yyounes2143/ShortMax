package androidx.compose.ui.graphics;

import android.graphics.Shader;
import android.os.Build;
import androidx.compose.ui.graphics.TileMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidTileMode.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidTileMode_androidKt {

    /* compiled from: AndroidTileMode.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Shader.TileMode.values().length];
            iArr[Shader.TileMode.CLAMP.ordinal()] = 1;
            iArr[Shader.TileMode.MIRROR.ordinal()] = 2;
            iArr[Shader.TileMode.REPEAT.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: isSupported-0vamqd0  reason: not valid java name */
    public static final boolean m1748isSupported0vamqd0(int i10) {
        if (Build.VERSION.SDK_INT < 31 && TileMode.m2162equalsimpl0(i10, TileMode.Companion.m2167getDecal3opZhB0())) {
            return false;
        }
        return true;
    }

    @NotNull
    /* renamed from: toAndroidTileMode-0vamqd0  reason: not valid java name */
    public static final Shader.TileMode m1749toAndroidTileMode0vamqd0(int i10) {
        TileMode.Companion companion = TileMode.Companion;
        if (TileMode.m2162equalsimpl0(i10, companion.m2166getClamp3opZhB0())) {
            return Shader.TileMode.CLAMP;
        }
        if (TileMode.m2162equalsimpl0(i10, companion.m2169getRepeated3opZhB0())) {
            return Shader.TileMode.REPEAT;
        }
        if (TileMode.m2162equalsimpl0(i10, companion.m2168getMirror3opZhB0())) {
            return Shader.TileMode.MIRROR;
        }
        if (TileMode.m2162equalsimpl0(i10, companion.m2167getDecal3opZhB0())) {
            if (Build.VERSION.SDK_INT >= 31) {
                return TileModeVerificationHelper.INSTANCE.getFrameworkTileModeDecal();
            }
            return Shader.TileMode.CLAMP;
        }
        return Shader.TileMode.CLAMP;
    }

    public static final int toComposeTileMode(@NotNull Shader.TileMode tileMode) {
        Shader.TileMode tileMode2;
        Intrinsics.checkNotNullParameter(tileMode, "<this>");
        int i10 = WhenMappings.$EnumSwitchMapping$0[tileMode.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        tileMode2 = Shader.TileMode.DECAL;
                        if (tileMode == tileMode2) {
                            return TileModeVerificationHelper.INSTANCE.m2170getComposeTileModeDecal3opZhB0();
                        }
                    }
                    return TileMode.Companion.m2166getClamp3opZhB0();
                }
                return TileMode.Companion.m2169getRepeated3opZhB0();
            }
            return TileMode.Companion.m2168getMirror3opZhB0();
        }
        return TileMode.Companion.m2166getClamp3opZhB0();
    }
}
