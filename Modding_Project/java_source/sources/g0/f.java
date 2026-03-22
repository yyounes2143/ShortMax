package g0;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import coil.ImageLoader;
import coil.decode.DataSource;
import g0.i;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DrawableFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class f implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f52144a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0.j f52145b;

    /* compiled from: DrawableFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a implements i.a<Drawable> {
        @Override // g0.i.a
        @NotNull
        /* renamed from: b */
        public i a(@NotNull Drawable drawable, @NotNull m0.j jVar, @NotNull ImageLoader imageLoader) {
            return new f(drawable, jVar);
        }
    }

    public f(@NotNull Drawable drawable, @NotNull m0.j jVar) {
        this.f52144a = drawable;
        this.f52145b = jVar;
    }

    @Override // g0.i
    @Nullable
    public Object a(@NotNull rs.c<? super h> cVar) {
        Drawable drawable;
        boolean u10 = r0.i.u(this.f52144a);
        if (u10) {
            drawable = new BitmapDrawable(this.f52145b.g().getResources(), r0.k.f65453a.a(this.f52144a, this.f52145b.f(), this.f52145b.n(), this.f52145b.m(), this.f52145b.c()));
        } else {
            drawable = this.f52144a;
        }
        return new g(drawable, u10, DataSource.MEMORY);
    }
}
