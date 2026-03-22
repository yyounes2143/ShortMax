package androidx.compose.material.ripple;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ripple.android.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class PlatformRipple extends Ripple {
    public /* synthetic */ PlatformRipple(boolean z10, float f10, State state, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, state);
    }

    @Composable
    private final ViewGroup findNearestViewGroup(Composer composer, int i10) {
        composer.startReplaceableGroup(-1737891121);
        Object consume = composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        while (!(consume instanceof ViewGroup)) {
            ViewParent parent = ((View) consume).getParent();
            if (parent instanceof View) {
                Intrinsics.checkNotNullExpressionValue(parent, "parent");
                consume = parent;
            } else {
                throw new IllegalArgumentException(("Couldn't find a valid parent for " + consume + ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?").toString());
            }
        }
        ViewGroup viewGroup = (ViewGroup) consume;
        composer.endReplaceableGroup();
        return viewGroup;
    }

    @Override // androidx.compose.material.ripple.Ripple
    @Composable
    @NotNull
    /* renamed from: rememberUpdatedRippleInstance-942rkJo */
    public RippleIndicationInstance mo1280rememberUpdatedRippleInstance942rkJo(@NotNull InteractionSource interactionSource, boolean z10, float f10, @NotNull State<Color> color, @NotNull State<RippleAlpha> rippleAlpha, @Nullable Composer composer, int i10) {
        View view;
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(color, "color");
        Intrinsics.checkNotNullParameter(rippleAlpha, "rippleAlpha");
        composer.startReplaceableGroup(331259447);
        ViewGroup findNearestViewGroup = findNearestViewGroup(composer, (i10 >> 15) & 14);
        composer.startReplaceableGroup(1643267286);
        if (findNearestViewGroup.isInEditMode()) {
            composer.startReplaceableGroup(-3686552);
            boolean changed = composer.changed(interactionSource) | composer.changed(this);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new CommonRippleIndicationInstance(z10, f10, color, rippleAlpha, null);
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            CommonRippleIndicationInstance commonRippleIndicationInstance = (CommonRippleIndicationInstance) rememberedValue;
            composer.endReplaceableGroup();
            composer.endReplaceableGroup();
            return commonRippleIndicationInstance;
        }
        composer.endReplaceableGroup();
        int childCount = findNearestViewGroup.getChildCount();
        int i11 = 0;
        while (true) {
            if (i11 < childCount) {
                view = findNearestViewGroup.getChildAt(i11);
                if (view instanceof RippleContainer) {
                    break;
                }
                i11++;
            } else {
                view = null;
                break;
            }
        }
        if (view == null) {
            Context context = findNearestViewGroup.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "view.context");
            view = new RippleContainer(context);
            findNearestViewGroup.addView(view);
        }
        composer.startReplaceableGroup(-3686095);
        boolean changed2 = composer.changed(interactionSource) | composer.changed(this) | composer.changed(view);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
            rememberedValue2 = new AndroidRippleIndicationInstance(z10, f10, color, rippleAlpha, (RippleContainer) view, null);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        AndroidRippleIndicationInstance androidRippleIndicationInstance = (AndroidRippleIndicationInstance) rememberedValue2;
        composer.endReplaceableGroup();
        return androidRippleIndicationInstance;
    }

    private PlatformRipple(boolean z10, float f10, State<Color> state) {
        super(z10, f10, state, null);
    }
}
