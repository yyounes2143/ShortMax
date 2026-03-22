package kk;

import android.net.Uri;
import com.facebook.imagepipeline.request.ImageRequest;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r3.j;
/* compiled from: CustomFrescoCacheKeyFactory.kt */
@Metadata
/* loaded from: classes7.dex */
public class b implements j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f60744a = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static b f60745b;

    /* compiled from: CustomFrescoCacheKeyFactory.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final synchronized b a() {
            try {
                if (b.f60745b == null) {
                    b.f60745b = new b(null);
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return b.f60745b;
        }

        private a() {
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final Uri g(Uri uri) {
        String uri2 = uri.toString();
        Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
        if (f.f60747a.h(uri2)) {
            try {
                Uri parse = Uri.parse(v.l(uri2));
                Intrinsics.checkNotNull(parse);
                return parse;
            } catch (Exception unused) {
                return uri;
            }
        }
        return uri;
    }

    @Override // r3.j
    @NotNull
    public f2.a a(@NotNull ImageRequest request, @Nullable Object obj) {
        f2.a aVar;
        String str;
        Intrinsics.checkNotNullParameter(request, "request");
        e4.b m10 = request.m();
        if (m10 != null) {
            f2.a b10 = m10.b();
            str = m10.getClass().getName();
            aVar = b10;
        } else {
            aVar = null;
            str = null;
        }
        Uri w10 = request.w();
        Intrinsics.checkNotNullExpressionValue(w10, "getSourceUri(...)");
        String uri = g(w10).toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        s3.f s10 = request.s();
        s3.g u10 = request.u();
        Intrinsics.checkNotNullExpressionValue(u10, "getRotationOptions(...)");
        s3.d i10 = request.i();
        Intrinsics.checkNotNullExpressionValue(i10, "getImageDecodeOptions(...)");
        return new r3.b(uri, s10, u10, i10, aVar, str);
    }

    @Override // r3.j
    @NotNull
    public f2.a b(@NotNull ImageRequest request, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(request, "request");
        Uri w10 = request.w();
        Intrinsics.checkNotNullExpressionValue(w10, "getSourceUri(...)");
        return d(request, w10, obj);
    }

    @Override // r3.j
    @NotNull
    public f2.a c(@NotNull ImageRequest request, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(request, "request");
        Uri w10 = request.w();
        Intrinsics.checkNotNullExpressionValue(w10, "getSourceUri(...)");
        String uri = g(w10).toString();
        Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
        s3.f s10 = request.s();
        s3.g u10 = request.u();
        Intrinsics.checkNotNullExpressionValue(u10, "getRotationOptions(...)");
        s3.d i10 = request.i();
        Intrinsics.checkNotNullExpressionValue(i10, "getImageDecodeOptions(...)");
        return new r3.b(uri, s10, u10, i10, null, null);
    }

    @Override // r3.j
    @NotNull
    public f2.a d(@NotNull ImageRequest request, @NotNull Uri sourceUri, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(sourceUri, "sourceUri");
        return new f2.e(g(sourceUri).toString());
    }

    private b() {
    }
}
