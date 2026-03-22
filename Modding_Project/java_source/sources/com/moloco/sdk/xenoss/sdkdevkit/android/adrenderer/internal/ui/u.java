package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.h0;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@SourceDebugExtension({"SMAP\nTouchInterceptClickHandlerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchInterceptClickHandlerView.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/TouchInterceptClickHandlerView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"})
/* loaded from: classes6.dex */
public final class u extends View {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(0);
    }

    public static /* synthetic */ Object b(u uVar, MotionEvent motionEvent, com.moloco.sdk.internal.services.f0 f0Var, String str, String str2, r rVar, kt.d dVar, com.moloco.sdk.internal.h0 h0Var, rs.c cVar, int i10, Object obj) {
        com.moloco.sdk.internal.h0 h0Var2;
        if ((i10 & 64) != 0) {
            h0Var2 = com.moloco.sdk.internal.k0.b();
        } else {
            h0Var2 = h0Var;
        }
        return uVar.a(motionEvent, f0Var, str, str2, rVar, dVar, h0Var2, cVar);
    }

    @Nullable
    public final Object a(@NotNull MotionEvent motionEvent, @NotNull com.moloco.sdk.internal.services.f0 f0Var, @Nullable String str, @Nullable String str2, @NotNull r rVar, @Nullable kt.d<Unit> dVar, @NotNull com.moloco.sdk.internal.h0 h0Var, @NotNull rs.c<? super Unit> cVar) {
        Object b10;
        if (motionEvent.getAction() == 0) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a aVar = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a(kotlin.collections.n.j0(iArr), kotlin.collections.n.W0(iArr), getHeight(), getWidth(), (int) (motionEvent.getX() + kotlin.collections.n.j0(iArr)), (int) (motionEvent.getY() + kotlin.collections.n.W0(iArr)));
            if (str != null) {
                kotlin.coroutines.jvm.internal.a.a(h0.a.a(h0Var, str, System.currentTimeMillis(), null, 4, null));
            }
            if (str2 != null && (b10 = f0Var.b(str2, aVar, rVar, dVar, cVar)) == kotlin.coroutines.intrinsics.a.f()) {
                return b10;
            }
        }
        return Unit.f60915a;
    }
}
