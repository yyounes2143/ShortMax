package androidx.compose.foundation;

import android.annotation.SuppressLint;
import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Magnifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class MagnifierKt {
    @NotNull
    private static final SemanticsPropertyKey<Function0<Offset>> MagnifierPositionInRoot = new SemanticsPropertyKey<>("MagnifierPositionInRoot", null, 2, null);

    @NotNull
    public static final SemanticsPropertyKey<Function0<Offset>> getMagnifierPositionInRoot() {
        return MagnifierPositionInRoot;
    }

    @ChecksSdkIntAtLeast(api = 28)
    public static final boolean isPlatformMagnifierSupported(int i10) {
        if (i10 >= 28) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean isPlatformMagnifierSupported$default(int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = Build.VERSION.SDK_INT;
        }
        return isPlatformMagnifierSupported(i10);
    }

    @RequiresApi(28)
    @SuppressLint({"ModifierInspectorInfo"})
    @NotNull
    public static final Modifier magnifier(@NotNull Modifier modifier, @NotNull Function1<? super Density, Offset> sourceCenter, @NotNull Function1<? super Density, Offset> magnifierCenter, float f10, @NotNull MagnifierStyle style, @Nullable Function1<? super DpSize, Unit> function1, @NotNull PlatformMagnifierFactory platformMagnifierFactory) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(sourceCenter, "sourceCenter");
        Intrinsics.checkNotNullParameter(magnifierCenter, "magnifierCenter");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(platformMagnifierFactory, "platformMagnifierFactory");
        return ComposedModifierKt.composed$default(modifier, null, new MagnifierKt$magnifier$4(sourceCenter, magnifierCenter, f10, function1, platformMagnifierFactory, style), 1, null);
    }

    public static /* synthetic */ Modifier magnifier$default(Modifier modifier, Function1 function1, Function1 function12, float f10, MagnifierStyle magnifierStyle, Function1 function13, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function12 = new Function1<Density, Offset>() { // from class: androidx.compose.foundation.MagnifierKt$magnifier$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Offset invoke(Density density) {
                    return Offset.m1595boximpl(m247invoketuRUvjQ(density));
                }

                /* renamed from: invoke-tuRUvjQ  reason: not valid java name */
                public final long m247invoketuRUvjQ(@NotNull Density density) {
                    Intrinsics.checkNotNullParameter(density, "$this$null");
                    return Offset.Companion.m1621getUnspecifiedF1C5BW0();
                }
            };
        }
        Function1 function14 = function12;
        if ((i10 & 4) != 0) {
            f10 = Float.NaN;
        }
        float f11 = f10;
        if ((i10 & 8) != 0) {
            magnifierStyle = MagnifierStyle.Companion.getDefault();
        }
        MagnifierStyle magnifierStyle2 = magnifierStyle;
        if ((i10 & 16) != 0) {
            function13 = null;
        }
        return magnifier(modifier, function1, function14, f11, magnifierStyle2, function13);
    }

    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier magnifier(@NotNull Modifier modifier, @NotNull final Function1<? super Density, Offset> sourceCenter, @NotNull final Function1<? super Density, Offset> magnifierCenter, final float f10, @NotNull final MagnifierStyle style, @Nullable Function1<? super DpSize, Unit> function1) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(sourceCenter, "sourceCenter");
        Intrinsics.checkNotNullParameter(magnifierCenter, "magnifierCenter");
        Intrinsics.checkNotNullParameter(style, "style");
        Function1<InspectorInfo, Unit> noInspectorInfo = InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.MagnifierKt$magnifier$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName(MagnifierKt.isPlatformMagnifierSupported$default(0, 1, null) ? "magnifier" : "magnifier (not supported)");
                inspectorInfo.getProperties().set("sourceCenter", Function1.this);
                inspectorInfo.getProperties().set("magnifierCenter", magnifierCenter);
                inspectorInfo.getProperties().set("zoom", Float.valueOf(f10));
                inspectorInfo.getProperties().set(TtmlNode.TAG_STYLE, style);
            }
        } : InspectableValueKt.getNoInspectorInfo();
        Modifier modifier2 = Modifier.Companion;
        if (isPlatformMagnifierSupported$default(0, 1, null)) {
            modifier2 = magnifier(modifier2, sourceCenter, magnifierCenter, f10, style, function1, PlatformMagnifierFactory.Companion.getForCurrentPlatform());
        }
        return InspectableValueKt.inspectableWrapper(modifier, noInspectorInfo, modifier2);
    }
}
