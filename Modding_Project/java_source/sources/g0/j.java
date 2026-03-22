package g0;

import android.webkit.MimeTypeMap;
import coil.ImageLoader;
import coil.decode.DataSource;
import d0.n;
import g0.i;
import java.io.File;
import kotlin.Metadata;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FileFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class j implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final File f52149a;

    /* compiled from: FileFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a implements i.a<File> {
        @Override // g0.i.a
        @NotNull
        /* renamed from: b */
        public i a(@NotNull File file, @NotNull m0.j jVar, @NotNull ImageLoader imageLoader) {
            return new j(file);
        }
    }

    public j(@NotNull File file) {
        this.f52149a = file;
    }

    @Override // g0.i
    @Nullable
    public Object a(@NotNull rs.c<? super h> cVar) {
        return new l(n.d(Path.Companion.get$default(Path.Companion, this.f52149a, false, 1, (Object) null), null, null, null, 14, null), MimeTypeMap.getSingleton().getMimeTypeFromExtension(ws.f.x(this.f52149a)), DataSource.DISK);
    }
}
