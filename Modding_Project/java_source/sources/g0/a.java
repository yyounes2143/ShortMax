package g0;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import coil.ImageLoader;
import coil.decode.DataSource;
import d0.n;
import g0.i;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AssetUriFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class a implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Uri f52136a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0.j f52137b;

    /* compiled from: AssetUriFetcher.kt */
    @Metadata
    /* renamed from: g0.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0749a implements i.a<Uri> {
        @Override // g0.i.a
        @Nullable
        /* renamed from: b */
        public i a(@NotNull Uri uri, @NotNull m0.j jVar, @NotNull ImageLoader imageLoader) {
            if (!r0.i.q(uri)) {
                return null;
            }
            return new a(uri, jVar);
        }
    }

    public a(@NotNull Uri uri, @NotNull m0.j jVar) {
        this.f52136a = uri;
        this.f52137b = jVar;
    }

    @Override // g0.i
    @Nullable
    public Object a(@NotNull rs.c<? super h> cVar) {
        String A0 = CollectionsKt.A0(CollectionsKt.j0(this.f52136a.getPathSegments(), 1), DomExceptionUtils.SEPARATOR, null, null, 0, null, null, 62, null);
        return new l(n.b(Okio.buffer(Okio.source(this.f52137b.g().getAssets().open(A0))), this.f52137b.g(), new d0.a(A0)), r0.i.j(MimeTypeMap.getSingleton(), A0), DataSource.DISK);
    }
}
