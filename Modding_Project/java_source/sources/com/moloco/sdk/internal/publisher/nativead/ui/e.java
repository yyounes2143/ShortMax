package com.moloco.sdk.internal.publisher.nativead.ui;

import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.MaterialThemeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.ComposeView;
import at.n;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class e {

    /* loaded from: classes6.dex */
    public static final class a implements Function2<Composer, Integer, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ n<Modifier, Composer, Integer, Unit> f32922a;

        /* renamed from: com.moloco.sdk.internal.publisher.nativead.ui.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0487a implements Function2<Composer, Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ n<Modifier, Composer, Integer, Unit> f32923a;

            /* JADX WARN: Multi-variable type inference failed */
            public C0487a(n<? super Modifier, ? super Composer, ? super Integer, Unit> nVar) {
                this.f32923a = nVar;
            }

            @Composable
            public final void a(Composer composer, int i10) {
                if ((i10 & 3) == 2 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-964093233, i10, -1, "com.moloco.sdk.internal.publisher.nativead.ui.NativeAdComposeViewWrapper.<anonymous>.<anonymous>.<anonymous> (NativeAdComposeViewWrapper.kt:15)");
                }
                this.f32923a.invoke(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, null), composer, 6);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return Unit.f60915a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(n<? super Modifier, ? super Composer, ? super Integer, Unit> nVar) {
            this.f32922a = nVar;
        }

        @Composable
        public final void a(Composer composer, int i10) {
            if ((i10 & 3) == 2 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1870157091, i10, -1, "com.moloco.sdk.internal.publisher.nativead.ui.NativeAdComposeViewWrapper.<anonymous>.<anonymous> (NativeAdComposeViewWrapper.kt:14)");
            }
            MaterialThemeKt.MaterialTheme(null, null, null, ComposableLambdaKt.composableLambda(composer, -964093233, true, new C0487a(this.f32922a)), composer, 3072, 7);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
            a(composer, num.intValue());
            return Unit.f60915a;
        }
    }

    @ComposableInferredTarget(scheme = "[0[0]]")
    @NotNull
    public static final ComposeView a(@NotNull Context context, @NotNull n<? super Modifier, ? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(content, "content");
        ComposeView composeView = new ComposeView(context, null, 0, 6, null);
        composeView.setContent(ComposableLambdaKt.composableLambdaInstance(1870157091, true, new a(content)));
        return composeView;
    }
}
