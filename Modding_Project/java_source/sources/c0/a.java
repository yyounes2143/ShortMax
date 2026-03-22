package c0;

import android.graphics.drawable.Drawable;
import androidx.annotation.MainThread;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.InspectionModeKt;
import coil.ImageLoader;
import coil.compose.AsyncImagePainter;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import m0.f;
import n0.c;
import n0.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import q0.d;
/* compiled from: AsyncImagePainter.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a {
    @NotNull

    /* renamed from: a */
    private static final C0083a f2844a = new C0083a();

    /* compiled from: AsyncImagePainter.kt */
    @Metadata
    /* renamed from: c0.a$a */
    /* loaded from: classes2.dex */
    public static final class C0083a implements d {
        C0083a() {
        }

        @Override // q0.d
        @Nullable
        public Drawable a() {
            return null;
        }

        @Override // o0.a
        @MainThread
        public void b(@NotNull Drawable drawable) {
            d.a.c(this, drawable);
        }

        @Override // o0.a
        @MainThread
        public void c(@Nullable Drawable drawable) {
            d.a.b(this, drawable);
        }

        @Override // o0.a
        @MainThread
        public void d(@Nullable Drawable drawable) {
            d.a.a(this, drawable);
        }
    }

    private static final boolean c(long j10) {
        if (Size.m1675getWidthimpl(j10) >= 0.5d && Size.m1672getHeightimpl(j10) >= 0.5d) {
            return true;
        }
        return false;
    }

    @Composable
    @NotNull
    public static final AsyncImagePainter d(@Nullable Object obj, @NotNull ImageLoader imageLoader, @Nullable Function1<? super AsyncImagePainter.b, ? extends AsyncImagePainter.b> function1, @Nullable Function1<? super AsyncImagePainter.b, Unit> function12, @Nullable ContentScale contentScale, int i10, @Nullable Composer composer, int i11, int i12) {
        composer.startReplaceableGroup(-2020614074);
        if ((i12 & 4) != 0) {
            function1 = AsyncImagePainter.f3805p.a();
        }
        if ((i12 & 8) != 0) {
            function12 = null;
        }
        if ((i12 & 16) != 0) {
            contentScale = ContentScale.Companion.getFit();
        }
        if ((i12 & 32) != 0) {
            i10 = DrawScope.Companion.m2338getDefaultFilterQualityfv9h1I();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2020614074, i11, -1, "coil.compose.rememberAsyncImagePainter (AsyncImagePainter.kt:131)");
        }
        f d10 = c.d(obj, composer, 8);
        h(d10);
        composer.startReplaceableGroup(-492369756);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new AsyncImagePainter(d10, imageLoader);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        AsyncImagePainter asyncImagePainter = (AsyncImagePainter) rememberedValue;
        asyncImagePainter.x(function1);
        asyncImagePainter.s(function12);
        asyncImagePainter.p(contentScale);
        asyncImagePainter.q(i10);
        asyncImagePainter.u(((Boolean) composer.consume(InspectionModeKt.getLocalInspectionMode())).booleanValue());
        asyncImagePainter.r(imageLoader);
        asyncImagePainter.v(d10);
        asyncImagePainter.onRemembered();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return asyncImagePainter;
    }

    public static final g e(long j10) {
        n0.c cVar;
        n0.c cVar2;
        if (j10 == Size.Companion.m1683getUnspecifiedNHjbRc()) {
            return g.f62723d;
        }
        if (c(j10)) {
            float m1675getWidthimpl = Size.m1675getWidthimpl(j10);
            if (!Float.isInfinite(m1675getWidthimpl) && !Float.isNaN(m1675getWidthimpl)) {
                cVar = n0.a.a(bt.a.c(Size.m1675getWidthimpl(j10)));
            } else {
                cVar = c.b.f62717a;
            }
            float m1672getHeightimpl = Size.m1672getHeightimpl(j10);
            if (!Float.isInfinite(m1672getHeightimpl) && !Float.isNaN(m1672getHeightimpl)) {
                cVar2 = n0.a.a(bt.a.c(Size.m1672getHeightimpl(j10)));
            } else {
                cVar2 = c.b.f62717a;
            }
            return new g(cVar, cVar2);
        }
        return null;
    }

    private static final Void f(String str, String str2) {
        throw new IllegalArgumentException("Unsupported type: " + str + ". " + str2);
    }

    static /* synthetic */ Void g(String str, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "If you wish to display this " + str + ", use androidx.compose.foundation.Image.";
        }
        return f(str, str2);
    }

    private static final void h(f fVar) {
        Object m10 = fVar.m();
        if (!(m10 instanceof f.a)) {
            if (!(m10 instanceof ImageBitmap)) {
                if (!(m10 instanceof ImageVector)) {
                    if (!(m10 instanceof Painter)) {
                        if (fVar.M() == null) {
                            return;
                        }
                        throw new IllegalArgumentException("request.target must be null.");
                    }
                    g("Painter", null, 2, null);
                    throw new KotlinNothingValueException();
                }
                g("ImageVector", null, 2, null);
                throw new KotlinNothingValueException();
            }
            g("ImageBitmap", null, 2, null);
            throw new KotlinNothingValueException();
        }
        f("ImageRequest.Builder", "Did you forget to call ImageRequest.Builder.build()?");
        throw new KotlinNothingValueException();
    }
}
