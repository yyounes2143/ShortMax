package g0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.TypedValue;
import android.webkit.MimeTypeMap;
import coil.ImageLoader;
import coil.decode.DataSource;
import d0.n;
import d0.o;
import g0.i;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResourceUriFetcher.kt */
@Metadata
/* loaded from: classes2.dex */
public final class k implements i {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f52150c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Uri f52151a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0.j f52152b;

    /* compiled from: ResourceUriFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ResourceUriFetcher.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class b implements i.a<Uri> {
        private final boolean c(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "android.resource");
        }

        @Override // g0.i.a
        @Nullable
        /* renamed from: b */
        public i a(@NotNull Uri uri, @NotNull m0.j jVar, @NotNull ImageLoader imageLoader) {
            if (!c(uri)) {
                return null;
            }
            return new k(uri, jVar);
        }
    }

    public k(@NotNull Uri uri, @NotNull m0.j jVar) {
        this.f52151a = uri;
        this.f52152b = jVar;
    }

    private final Void b(Uri uri) {
        throw new IllegalStateException("Invalid android.resource URI: " + uri);
    }

    @Override // g0.i
    @Nullable
    public Object a(@NotNull rs.c<? super h> cVar) {
        Integer intOrNull;
        Resources resourcesForApplication;
        Drawable d10;
        String authority = this.f52151a.getAuthority();
        if (authority != null) {
            if (StringsKt.t0(authority)) {
                authority = null;
            }
            if (authority != null) {
                String str = (String) CollectionsKt.D0(this.f52151a.getPathSegments());
                if (str != null && (intOrNull = StringsKt.toIntOrNull(str)) != null) {
                    int intValue = intOrNull.intValue();
                    Context g10 = this.f52152b.g();
                    if (Intrinsics.areEqual(authority, g10.getPackageName())) {
                        resourcesForApplication = g10.getResources();
                    } else {
                        resourcesForApplication = g10.getPackageManager().getResourcesForApplication(authority);
                    }
                    TypedValue typedValue = new TypedValue();
                    resourcesForApplication.getValue(intValue, typedValue, true);
                    CharSequence charSequence = typedValue.string;
                    String j10 = r0.i.j(MimeTypeMap.getSingleton(), charSequence.subSequence(StringsKt.x0(charSequence, '/', 0, false, 6, null), charSequence.length()).toString());
                    if (Intrinsics.areEqual(j10, "text/xml")) {
                        if (Intrinsics.areEqual(authority, g10.getPackageName())) {
                            d10 = r0.d.a(g10, intValue);
                        } else {
                            d10 = r0.d.d(g10, resourcesForApplication, intValue);
                        }
                        Drawable drawable = d10;
                        boolean u10 = r0.i.u(drawable);
                        if (u10) {
                            drawable = new BitmapDrawable(g10.getResources(), r0.k.f65453a.a(drawable, this.f52152b.f(), this.f52152b.n(), this.f52152b.m(), this.f52152b.c()));
                        }
                        return new g(drawable, u10, DataSource.DISK);
                    }
                    TypedValue typedValue2 = new TypedValue();
                    return new l(n.b(Okio.buffer(Okio.source(resourcesForApplication.openRawResource(intValue, typedValue2))), g10, new o(authority, intValue, typedValue2.density)), j10, DataSource.DISK);
                }
                b(this.f52151a);
                throw new KotlinNothingValueException();
            }
        }
        b(this.f52151a);
        throw new KotlinNothingValueException();
    }
}
