package g0;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import coil.ImageLoader;
import coil.decode.DataSource;
import g0.i;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f52138a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0.j f52139b;

    /* compiled from: BitmapFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a implements i.a<Bitmap> {
        @Override // g0.i.a
        @NotNull
        /* renamed from: b */
        public i a(@NotNull Bitmap bitmap, @NotNull m0.j jVar, @NotNull ImageLoader imageLoader) {
            return new b(bitmap, jVar);
        }
    }

    public b(@NotNull Bitmap bitmap, @NotNull m0.j jVar) {
        this.f52138a = bitmap;
        this.f52139b = jVar;
    }

    @Override // g0.i
    @Nullable
    public Object a(@NotNull rs.c<? super h> cVar) {
        return new g(new BitmapDrawable(this.f52139b.g().getResources(), this.f52138a), false, DataSource.MEMORY);
    }
}
