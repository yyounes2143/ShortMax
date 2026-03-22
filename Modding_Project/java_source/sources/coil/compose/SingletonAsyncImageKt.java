package coil.compose;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.ContentScale;
import c0.b;
import coil.compose.AsyncImagePainter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.Nullable;
/* compiled from: SingletonAsyncImage.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SingletonAsyncImageKt {
    @Composable
    public static final void a(@Nullable final Object obj, @Nullable final String str, @Nullable Modifier modifier, @Nullable Function1<? super AsyncImagePainter.b, ? extends AsyncImagePainter.b> function1, @Nullable Function1<? super AsyncImagePainter.b, Unit> function12, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f10, @Nullable ColorFilter colorFilter, int i10, @Nullable Composer composer, final int i11, final int i12) {
        Function1<AsyncImagePainter.b, AsyncImagePainter.b> function13;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(-941517612);
        final Modifier.Companion companion = (i12 & 4) != 0 ? Modifier.Companion : modifier;
        if ((i12 & 8) != 0) {
            i13 = i11 & (-7169);
            function13 = AsyncImagePainter.f3805p.a();
        } else {
            function13 = function1;
            i13 = i11;
        }
        Function1<? super AsyncImagePainter.b, Unit> function14 = (i12 & 16) != 0 ? null : function12;
        Alignment center = (i12 & 32) != 0 ? Alignment.Companion.getCenter() : alignment;
        ContentScale fit = (i12 & 64) != 0 ? ContentScale.Companion.getFit() : contentScale;
        float f11 = (i12 & 128) != 0 ? 1.0f : f10;
        ColorFilter colorFilter2 = (i12 & 256) != 0 ? null : colorFilter;
        if ((i12 & 512) != 0) {
            i13 &= -1879048193;
            i14 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        } else {
            i14 = i10;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-941517612, i13, -1, "coil.compose.AsyncImage (SingletonAsyncImage.kt:99)");
        }
        int i15 = i13 << 3;
        AsyncImageKt.a(obj, str, ImageLoaderProvidableCompositionLocal.c(b.a(), startRestartGroup, 6), companion, function13, function14, center, fit, f11, colorFilter2, i14, startRestartGroup, (i13 & 112) | 520 | (i15 & 7168) | (57344 & i15) | (458752 & i15) | (3670016 & i15) | (29360128 & i15) | (234881024 & i15) | (i15 & 1879048192), (i13 >> 27) & 14, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final Function1<? super AsyncImagePainter.b, ? extends AsyncImagePainter.b> function15 = function13;
        final Function1<? super AsyncImagePainter.b, Unit> function16 = function14;
        final Alignment alignment2 = center;
        final ContentScale contentScale2 = fit;
        final float f12 = f11;
        final ColorFilter colorFilter3 = colorFilter2;
        final int i16 = i14;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: coil.compose.SingletonAsyncImageKt$AsyncImage$2
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

            public final void invoke(@Nullable Composer composer2, int i17) {
                SingletonAsyncImageKt.a(obj, str, companion, function15, function16, alignment2, contentScale2, f12, colorFilter3, i16, composer2, i11 | 1, i12);
            }
        });
    }
}
