package g0;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import coil.ImageLoader;
import coil.decode.DataSource;
import d0.n;
import g0.i;
import java.io.InputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import n0.c;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContentUriFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class e implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Uri f52142a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0.j f52143b;

    /* compiled from: ContentUriFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a implements i.a<Uri> {
        private final boolean c(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "content");
        }

        @Override // g0.i.a
        @Nullable
        /* renamed from: b */
        public i a(@NotNull Uri uri, @NotNull m0.j jVar, @NotNull ImageLoader imageLoader) {
            if (!c(uri)) {
                return null;
            }
            return new e(uri, jVar);
        }
    }

    public e(@NotNull Uri uri, @NotNull m0.j jVar) {
        this.f52142a = uri;
        this.f52143b = jVar;
    }

    private final Bundle d() {
        c.a aVar;
        c.a aVar2;
        n0.c b10 = this.f52143b.n().b();
        if (b10 instanceof c.a) {
            aVar = (c.a) b10;
        } else {
            aVar = null;
        }
        if (aVar == null) {
            return null;
        }
        int i10 = aVar.f62716a;
        n0.c a10 = this.f52143b.n().a();
        if (a10 instanceof c.a) {
            aVar2 = (c.a) a10;
        } else {
            aVar2 = null;
        }
        if (aVar2 == null) {
            return null;
        }
        int i11 = aVar2.f62716a;
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("android.content.extra.SIZE", new Point(i10, i11));
        return bundle;
    }

    @Override // g0.i
    @Nullable
    public Object a(@NotNull rs.c<? super h> cVar) {
        AssetFileDescriptor openTypedAssetFile;
        ContentResolver contentResolver = this.f52143b.g().getContentResolver();
        InputStream inputStream = null;
        if (b(this.f52142a)) {
            AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(this.f52142a, "r");
            if (openAssetFileDescriptor != null) {
                inputStream = openAssetFileDescriptor.createInputStream();
            }
            if (inputStream == null) {
                throw new IllegalStateException(("Unable to find a contact photo associated with '" + this.f52142a + "'.").toString());
            }
        } else if (Build.VERSION.SDK_INT >= 29 && c(this.f52142a)) {
            openTypedAssetFile = contentResolver.openTypedAssetFile(this.f52142a, "image/*", d(), null);
            if (openTypedAssetFile != null) {
                inputStream = openTypedAssetFile.createInputStream();
            }
            if (inputStream == null) {
                throw new IllegalStateException(("Unable to find a music thumbnail associated with '" + this.f52142a + "'.").toString());
            }
        } else {
            inputStream = contentResolver.openInputStream(this.f52142a);
            if (inputStream == null) {
                throw new IllegalStateException(("Unable to open '" + this.f52142a + "'.").toString());
            }
        }
        return new l(n.b(Okio.buffer(Okio.source(inputStream)), this.f52143b.g(), new d0.d(this.f52142a)), contentResolver.getType(this.f52142a), DataSource.DISK);
    }

    @VisibleForTesting
    public final boolean b(@NotNull Uri uri) {
        if (Intrinsics.areEqual(uri.getAuthority(), "com.android.contacts") && Intrinsics.areEqual(uri.getLastPathSegment(), "display_photo")) {
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public final boolean c(@NotNull Uri uri) {
        List<String> pathSegments;
        int size;
        if (!Intrinsics.areEqual(uri.getAuthority(), "media") || (size = (pathSegments = uri.getPathSegments()).size()) < 3 || !Intrinsics.areEqual(pathSegments.get(size - 3), "audio") || !Intrinsics.areEqual(pathSegments.get(size - 2), "albums")) {
            return false;
        }
        return true;
    }
}
