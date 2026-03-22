package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import android.app.Activity;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.WindowInfo;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nHideSystemUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideSystemUI.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/HideSystemUIKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,21:1\n76#2:22\n1057#3,6:23\n*S KotlinDebug\n*F\n+ 1 HideSystemUI.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/HideSystemUIKt\n*L\n11#1:22\n15#1:23,6\n*E\n"})
/* loaded from: classes6.dex */
public final class s {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.HideSystemUIKt$HideSystemUI$1$1", f = "HideSystemUI.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34951h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ boolean f34952i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ Activity f34953j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z10, Activity activity, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34952i = z10;
            this.f34953j = activity;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34952i, this.f34953j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f34951h == 0) {
                kotlin.f.b(obj);
                if (this.f34952i) {
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.f0.a(this.f34953j);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static final Unit a(Activity activity, int i10, Composer composer, int i11) {
        b(activity, composer, i10 | 1);
        return Unit.f60915a;
    }

    @Composable
    public static final void b(@NotNull final Activity activity, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Composer startRestartGroup = composer.startRestartGroup(-726701488);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changed(activity)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i11 = i12 | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 3) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-726701488, i11, -1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.HideSystemUI (HideSystemUI.kt:9)");
            }
            boolean isWindowFocused = ((WindowInfo) startRestartGroup.consume(CompositionLocalsKt.getLocalWindowInfo())).isWindowFocused();
            Boolean valueOf = Boolean.valueOf(isWindowFocused);
            startRestartGroup.startReplaceableGroup(-1598618285);
            boolean changed = startRestartGroup.changed(isWindowFocused) | startRestartGroup.changed(activity);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new a(isWindowFocused, activity, null);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.LaunchedEffect(valueOf, (Function2) rememberedValue, startRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.f0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return s.a(activity, i10, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
