package coil.compose;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import c0.a;
import c0.c;
import coil.ImageLoader;
import coil.compose.AsyncImagePainter;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import m0.f;
import n0.c;
import n0.g;
import n0.h;
import n0.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AsyncImage.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AsyncImageKt {
    @Composable
    public static final void a(@Nullable final Object obj, @Nullable final String str, @NotNull final ImageLoader imageLoader, @Nullable Modifier modifier, @Nullable Function1<? super AsyncImagePainter.b, ? extends AsyncImagePainter.b> function1, @Nullable Function1<? super AsyncImagePainter.b, Unit> function12, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f10, @Nullable ColorFilter colorFilter, int i10, @Nullable Composer composer, final int i11, final int i12, final int i13) {
        final int i14;
        int i15;
        Composer startRestartGroup = composer.startRestartGroup(-2030202961);
        final Modifier.Companion companion = (i13 & 8) != 0 ? Modifier.Companion : modifier;
        final Function1<AsyncImagePainter.b, AsyncImagePainter.b> a10 = (i13 & 16) != 0 ? AsyncImagePainter.f3805p.a() : function1;
        final Function1<? super AsyncImagePainter.b, Unit> function13 = (i13 & 32) != 0 ? null : function12;
        final Alignment center = (i13 & 64) != 0 ? Alignment.Companion.getCenter() : alignment;
        final ContentScale fit = (i13 & 128) != 0 ? ContentScale.Companion.getFit() : contentScale;
        final float f11 = (i13 & 256) != 0 ? 1.0f : f10;
        final ColorFilter colorFilter2 = (i13 & 512) != 0 ? null : colorFilter;
        if ((i13 & 1024) != 0) {
            i15 = i12 & (-15);
            i14 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        } else {
            i14 = i10;
            i15 = i12;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2030202961, i11, i15, "coil.compose.AsyncImage (AsyncImage.kt:116)");
        }
        f f12 = f(c.d(obj, startRestartGroup, 8), fit, startRestartGroup, 8 | ((i11 >> 18) & 112));
        int i16 = i11 >> 6;
        int i17 = i11 >> 9;
        int i18 = i17 & 57344;
        Function1<? super AsyncImagePainter.b, ? extends AsyncImagePainter.b> function14 = a10;
        Function1<? super AsyncImagePainter.b, Unit> function15 = function13;
        ContentScale contentScale2 = fit;
        int i19 = i14;
        AsyncImagePainter d10 = a.d(f12, imageLoader, function14, function15, contentScale2, i19, startRestartGroup, ((i15 << 15) & 458752) | (i16 & 7168) | (i16 & 896) | 72 | i18, 0);
        h K = f12.K();
        b(K instanceof ConstraintsSizeResolver ? companion.then((Modifier) K) : companion, d10, str, center, fit, f11, colorFilter2, startRestartGroup, (i17 & 7168) | ((i11 << 3) & 896) | i18 | (i17 & 458752) | (3670016 & i17));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: coil.compose.AsyncImageKt$AsyncImage$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.f60915a;
            }

            public final void invoke(@Nullable Composer composer2, int i20) {
                AsyncImageKt.a(obj, str, imageLoader, companion, a10, function13, center, fit, f11, colorFilter2, i14, composer2, i11 | 1, i12, i13);
            }
        });
    }

    @ComposableTarget(applier = "androidx.compose.ui.UiComposable")
    @Composable
    public static final void b(@NotNull final Modifier modifier, @NotNull final Painter painter, @Nullable final String str, @NotNull final Alignment alignment, @NotNull final ContentScale contentScale, final float f10, @Nullable final ColorFilter colorFilter, @Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(10290533);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(10290533, i10, -1, "coil.compose.Content (AsyncImage.kt:154)");
        }
        Modifier then = ClipKt.clipToBounds(d(modifier, str)).then(new ContentPainterModifier(painter, alignment, contentScale, f10, colorFilter));
        AsyncImageKt$Content$1 asyncImageKt$Content$1 = new MeasurePolicy() { // from class: coil.compose.AsyncImageKt$Content$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            /* renamed from: measure-3p2s80s */
            public final MeasureResult mo42measure3p2s80s(@NotNull MeasureScope measureScope, @NotNull List<? extends Measurable> list, long j10) {
                return MeasureScope.layout$default(measureScope, Constraints.m4007getMinWidthimpl(j10), Constraints.m4006getMinHeightimpl(j10), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: coil.compose.AsyncImageKt$Content$1$measure$1
                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Placeable.PlacementScope placementScope) {
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                        invoke2(placementScope);
                        return Unit.f60915a;
                    }
                }, 4, null);
            }
        };
        startRestartGroup.startReplaceableGroup(544976794);
        Density density = (Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
        LayoutDirection layoutDirection = (LayoutDirection) startRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
        ViewConfiguration viewConfiguration = (ViewConfiguration) startRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
        Modifier materialize = ComposedModifierKt.materialize(startRestartGroup, then);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        final Function0<ComposeUiNode> constructor = companion.getConstructor();
        startRestartGroup.startReplaceableGroup(1405779621);
        if (startRestartGroup.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startReusableNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(new Function0<ComposeUiNode>() { // from class: coil.compose.AsyncImageKt$Content$$inlined$Layout$1
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.ComposeUiNode, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final ComposeUiNode invoke() {
                    return Function0.this.invoke();
                }
            });
        } else {
            startRestartGroup.useNode();
        }
        startRestartGroup.disableReusing();
        Composer m1376constructorimpl = Updater.m1376constructorimpl(startRestartGroup);
        Updater.m1383setimpl(m1376constructorimpl, asyncImageKt$Content$1, companion.getSetMeasurePolicy());
        Updater.m1383setimpl(m1376constructorimpl, density, companion.getSetDensity());
        Updater.m1383setimpl(m1376constructorimpl, layoutDirection, companion.getSetLayoutDirection());
        Updater.m1383setimpl(m1376constructorimpl, viewConfiguration, companion.getSetViewConfiguration());
        Updater.m1383setimpl(m1376constructorimpl, materialize, companion.getSetModifier());
        startRestartGroup.enableReusing();
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.endReplaceableGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: coil.compose.AsyncImageKt$Content$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i11) {
                    AsyncImageKt.b(Modifier.this, painter, str, alignment, contentScale, f10, colorFilter, composer2, i10 | 1);
                }
            });
        }
    }

    public static final /* synthetic */ g c(long j10) {
        return e(j10);
    }

    @Stable
    private static final Modifier d(Modifier modifier, final String str) {
        if (str != null) {
            return SemanticsModifierKt.semantics$default(modifier, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: coil.compose.AsyncImageKt$contentDescription$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
                    SemanticsPropertiesKt.m3608setRolekuIjeqM(semanticsPropertyReceiver, Role.Companion.m3597getImageo7Vup1c());
                }
            }, 1, null);
        }
        return modifier;
    }

    @Stable
    public static final g e(long j10) {
        n0.c cVar;
        n0.c cVar2;
        if (Constraints.m4009isZeroimpl(j10)) {
            return null;
        }
        if (Constraints.m4001getHasBoundedWidthimpl(j10)) {
            cVar = n0.a.a(Constraints.m4005getMaxWidthimpl(j10));
        } else {
            cVar = c.b.f62717a;
        }
        if (Constraints.m4000getHasBoundedHeightimpl(j10)) {
            cVar2 = n0.a.a(Constraints.m4004getMaxHeightimpl(j10));
        } else {
            cVar2 = c.b.f62717a;
        }
        return new g(cVar, cVar2);
    }

    @Composable
    @NotNull
    public static final f f(@NotNull f fVar, @NotNull ContentScale contentScale, @Nullable Composer composer, int i10) {
        h hVar;
        composer.startReplaceableGroup(402368983);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(402368983, i10, -1, "coil.compose.updateRequest (AsyncImage.kt:181)");
        }
        if (fVar.q().m() == null) {
            if (Intrinsics.areEqual(contentScale, ContentScale.Companion.getNone())) {
                hVar = i.a(g.f62723d);
            } else {
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new ConstraintsSizeResolver();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                hVar = (h) rememberedValue;
            }
            fVar = f.R(fVar, null, 1, null).k(hVar).a();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return fVar;
    }
}
