package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.modifiers;

import android.annotation.SuppressLint;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.utils.c;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class b {
    @SuppressLint({"ModifierFactoryExtensionFunction"})
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull final a.AbstractC0597a.c savedStateButton, @NotNull final Function1<? super a.AbstractC0597a.c, Unit> updateButtonState) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(savedStateButton, "savedStateButton");
        Intrinsics.checkNotNullParameter(updateButtonState, "updateButtonState");
        return OnGloballyPositionedModifierKt.onGloballyPositioned(modifier, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.modifiers.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.b(a.AbstractC0597a.c.this, updateButtonState, (LayoutCoordinates) obj);
            }
        });
    }

    public static final Unit b(a.AbstractC0597a.c cVar, Function1 function1, LayoutCoordinates it) {
        Intrinsics.checkNotNullParameter(it, "it");
        c cVar2 = c.f34983a;
        a.AbstractC0597a.c b10 = cVar2.b(it, cVar.c());
        if (cVar2.e(b10) && !Intrinsics.areEqual(b10, cVar)) {
            function1.invoke(b10);
        }
        return Unit.f60915a;
    }
}
