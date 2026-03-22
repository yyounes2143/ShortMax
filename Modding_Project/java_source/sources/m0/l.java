package m0;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.WorkerThread;
import androidx.lifecycle.Lifecycle;
import coil.ImageLoader;
import coil.request.BaseRequestDelegate;
import coil.request.CachePolicy;
import coil.request.NullRequestDataException;
import coil.request.RequestDelegate;
import coil.request.ViewTargetRequestDelegate;
import coil.size.Scale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import n0.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.q;
import r0.s;
/* compiled from: RequestService.kt */
@Metadata
/* loaded from: classes2.dex */
public final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ImageLoader f62426a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final s f62427b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final r0.m f62428c;

    public l(@NotNull ImageLoader imageLoader, @NotNull s sVar, @Nullable q qVar) {
        this.f62426a = imageLoader;
        this.f62427b = sVar;
        this.f62428c = r0.f.a(qVar);
    }

    private final boolean d(f fVar, n0.g gVar) {
        if (c(fVar, fVar.j()) && this.f62428c.a(gVar)) {
            return true;
        }
        return false;
    }

    private final boolean e(f fVar) {
        if (!fVar.O().isEmpty() && !kotlin.collections.n.f0(r0.i.o(), fVar.j())) {
            return false;
        }
        return true;
    }

    @WorkerThread
    public final boolean a(@NotNull j jVar) {
        if (r0.a.d(jVar.f()) && !this.f62428c.b()) {
            return false;
        }
        return true;
    }

    @NotNull
    public final d b(@NotNull f fVar, @NotNull Throwable th2) {
        Drawable t10;
        if (th2 instanceof NullRequestDataException) {
            t10 = fVar.u();
            if (t10 == null) {
                t10 = fVar.t();
            }
        } else {
            t10 = fVar.t();
        }
        return new d(t10, fVar, th2);
    }

    public final boolean c(@NotNull f fVar, @NotNull Bitmap.Config config) {
        if (!r0.a.d(config)) {
            return true;
        }
        if (!fVar.h()) {
            return false;
        }
        o0.a M = fVar.M();
        if (M instanceof o0.b) {
            View view = ((o0.b) M).getView();
            if (view.isAttachedToWindow() && !view.isHardwareAccelerated()) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final j f(@NotNull f fVar, @NotNull n0.g gVar) {
        Bitmap.Config config;
        CachePolicy cachePolicy;
        boolean z10;
        Scale scale;
        if (e(fVar) && d(fVar, gVar)) {
            config = fVar.j();
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap.Config config2 = config;
        if (this.f62427b.b()) {
            cachePolicy = fVar.D();
        } else {
            cachePolicy = CachePolicy.DISABLED;
        }
        CachePolicy cachePolicy2 = cachePolicy;
        if (fVar.i() && fVar.O().isEmpty() && config2 != Bitmap.Config.ALPHA_8) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        n0.c b10 = gVar.b();
        c.b bVar = c.b.f62717a;
        if (!Intrinsics.areEqual(b10, bVar) && !Intrinsics.areEqual(gVar.a(), bVar)) {
            scale = fVar.J();
        } else {
            scale = Scale.FIT;
        }
        return new j(fVar.l(), config2, fVar.k(), gVar, scale, r0.h.a(fVar), z11, fVar.I(), fVar.r(), fVar.x(), fVar.L(), fVar.E(), fVar.C(), fVar.s(), cachePolicy2);
    }

    @NotNull
    public final RequestDelegate g(@NotNull f fVar, @NotNull r rVar) {
        Lifecycle z10 = fVar.z();
        o0.a M = fVar.M();
        if (M instanceof o0.b) {
            return new ViewTargetRequestDelegate(this.f62426a, fVar, (o0.b) M, z10, rVar);
        }
        return new BaseRequestDelegate(z10, rVar);
    }
}
