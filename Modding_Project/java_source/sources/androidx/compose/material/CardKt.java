package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Dp;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Card.kt */
@Metadata
/* loaded from: classes.dex */
public final class CardKt {
    @c
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]")
    @Composable
    @ExperimentalMaterialApi
    /* renamed from: Card-9VG74zQ  reason: not valid java name */
    public static final void m965Card9VG74zQ(@NotNull Function0<Unit> onClick, @Nullable Modifier modifier, @Nullable Shape shape, long j10, long j11, @Nullable BorderStroke borderStroke, float f10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Indication indication, boolean z10, @Nullable String str, @Nullable Role role, @NotNull Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11, int i12) {
        Modifier modifier2;
        CornerBasedShape cornerBasedShape;
        long j12;
        long j13;
        BorderStroke borderStroke2;
        float f11;
        MutableInteractionSource mutableInteractionSource2;
        Indication indication2;
        String str2;
        Role role2;
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(1353606722);
        if ((i12 & 2) != 0) {
            modifier2 = Modifier.Companion;
        } else {
            modifier2 = modifier;
        }
        if ((i12 & 4) != 0) {
            cornerBasedShape = MaterialTheme.INSTANCE.getShapes(composer, 6).getMedium();
        } else {
            cornerBasedShape = shape;
        }
        if ((i12 & 8) != 0) {
            j12 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j12 = j10;
        }
        if ((i12 & 16) != 0) {
            j13 = ColorsKt.m1021contentColorForek8zF_U(j12, composer, (i10 >> 9) & 14);
        } else {
            j13 = j11;
        }
        if ((i12 & 32) != 0) {
            borderStroke2 = null;
        } else {
            borderStroke2 = borderStroke;
        }
        boolean z11 = true;
        if ((i12 & 64) != 0) {
            f11 = Dp.m4049constructorimpl(1);
        } else {
            f11 = f10;
        }
        if ((i12 & 128) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            mutableInteractionSource2 = (MutableInteractionSource) rememberedValue;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        if ((i12 & 256) != 0) {
            indication2 = (Indication) composer.consume(IndicationKt.getLocalIndication());
        } else {
            indication2 = indication;
        }
        if ((i12 & 512) == 0) {
            z11 = z10;
        }
        if ((i12 & 1024) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        if ((i12 & 2048) != 0) {
            role2 = null;
        } else {
            role2 = role;
        }
        SurfaceKt.m1198Surface9VG74zQ(onClick, modifier2, cornerBasedShape, j12, j13, borderStroke2, f11, mutableInteractionSource2, indication2, z11, str2, role2, content, composer, i10 & 2147483646, i11 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_NUMBER_THRESHOLD, 0);
        composer.endReplaceableGroup();
    }

    @Composable
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Card-F-jzlyU  reason: not valid java name */
    public static final void m966CardFjzlyU(@Nullable Modifier modifier, @Nullable Shape shape, long j10, long j11, @Nullable BorderStroke borderStroke, float f10, @NotNull Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        CornerBasedShape cornerBasedShape;
        long j12;
        long j13;
        BorderStroke borderStroke2;
        float f11;
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(1956755640);
        if ((i11 & 1) != 0) {
            modifier2 = Modifier.Companion;
        } else {
            modifier2 = modifier;
        }
        if ((i11 & 2) != 0) {
            cornerBasedShape = MaterialTheme.INSTANCE.getShapes(composer, 6).getMedium();
        } else {
            cornerBasedShape = shape;
        }
        if ((i11 & 4) != 0) {
            j12 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j12 = j10;
        }
        if ((i11 & 8) != 0) {
            j13 = ColorsKt.m1021contentColorForek8zF_U(j12, composer, (i10 >> 6) & 14);
        } else {
            j13 = j11;
        }
        if ((i11 & 16) != 0) {
            borderStroke2 = null;
        } else {
            borderStroke2 = borderStroke;
        }
        if ((i11 & 32) != 0) {
            f11 = Dp.m4049constructorimpl(1);
        } else {
            f11 = f10;
        }
        SurfaceKt.m1199SurfaceFjzlyU(modifier2, cornerBasedShape, j12, j13, borderStroke2, f11, content, composer, i10 & 4194302, 0);
        composer.endReplaceableGroup();
    }

    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget(scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]")
    /* renamed from: Card-LPr_se0  reason: not valid java name */
    public static final void m967CardLPr_se0(@NotNull Function0<Unit> onClick, @Nullable Modifier modifier, boolean z10, @Nullable Shape shape, long j10, long j11, @Nullable BorderStroke borderStroke, float f10, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull Function2<? super Composer, ? super Integer, Unit> content, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        boolean z11;
        CornerBasedShape cornerBasedShape;
        long j12;
        long j13;
        BorderStroke borderStroke2;
        float f11;
        MutableInteractionSource mutableInteractionSource2;
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(content, "content");
        composer.startReplaceableGroup(778538979);
        if ((i11 & 2) != 0) {
            modifier2 = Modifier.Companion;
        } else {
            modifier2 = modifier;
        }
        if ((i11 & 4) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i11 & 8) != 0) {
            cornerBasedShape = MaterialTheme.INSTANCE.getShapes(composer, 6).getMedium();
        } else {
            cornerBasedShape = shape;
        }
        if ((i11 & 16) != 0) {
            j12 = MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU();
        } else {
            j12 = j10;
        }
        if ((i11 & 32) != 0) {
            j13 = ColorsKt.m1021contentColorForek8zF_U(j12, composer, (i10 >> 12) & 14);
        } else {
            j13 = j11;
        }
        if ((i11 & 64) != 0) {
            borderStroke2 = null;
        } else {
            borderStroke2 = borderStroke;
        }
        if ((i11 & 128) != 0) {
            f11 = Dp.m4049constructorimpl(1);
        } else {
            f11 = f10;
        }
        if ((i11 & 256) != 0) {
            composer.startReplaceableGroup(-492369756);
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            mutableInteractionSource2 = (MutableInteractionSource) rememberedValue;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        SurfaceKt.m1200SurfaceLPr_se0(onClick, modifier2, z11, cornerBasedShape, j12, j13, borderStroke2, f11, mutableInteractionSource2, content, composer, i10 & 2147483646, 0);
        composer.endReplaceableGroup();
    }
}
