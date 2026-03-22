package i4;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.core.content.res.ResourcesCompat;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r2.d;
import y3.e;
import y3.j;
import y3.k;
import y3.p;
/* compiled from: XmlFormatDecoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nXmlFormatDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XmlFormatDecoder.kt\ncom/facebook/imagepipeline/xml/XmlFormatDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,72:1\n1#2:73\n381#3,7:74\n*S KotlinDebug\n*F\n+ 1 XmlFormatDecoder.kt\ncom/facebook/imagepipeline/xml/XmlFormatDecoder\n*L\n45#1:74,7\n*E\n"})
/* loaded from: classes3.dex */
public final class b implements w3.b {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f53291c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Resources f53292a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Integer> f53293b;

    /* compiled from: XmlFormatDecoder.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(@NotNull Resources resources) {
        Intrinsics.checkNotNullParameter(resources, "resources");
        this.f53292a = resources;
        this.f53293b = new ConcurrentHashMap();
    }

    private final int a(String str) {
        Map<String, Integer> map = this.f53293b;
        Integer num = map.get(str);
        if (num == null) {
            Uri parse = Uri.parse(str);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
            num = Integer.valueOf(b(parse));
            map.put(str, num);
        }
        return num.intValue();
    }

    private final int b(Uri uri) {
        Integer intOrNull;
        if (!d.n(uri) && !d.p(uri)) {
            throw new IllegalStateException(("Unsupported uri " + uri).toString());
        }
        List<String> pathSegments = uri.getPathSegments();
        Intrinsics.checkNotNullExpressionValue(pathSegments, "getPathSegments(...)");
        String str = (String) CollectionsKt.D0(pathSegments);
        if (str != null && (intOrNull = StringsKt.toIntOrNull(str)) != null) {
            return intOrNull.intValue();
        }
        String path = uri.getPath();
        throw new IllegalStateException(("Unable to read resource ID from " + path).toString());
    }

    @Override // w3.b
    @Nullable
    public e decode(@NotNull k encodedImage, int i10, @NotNull p qualityInfo, @NotNull s3.d options) {
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        Intrinsics.checkNotNullParameter(qualityInfo, "qualityInfo");
        Intrinsics.checkNotNullParameter(options, "options");
        try {
            String v10 = encodedImage.v();
            if (v10 != null) {
                Drawable drawable = ResourcesCompat.getDrawable(this.f53292a, a(v10), null);
                if (drawable == null) {
                    return null;
                }
                return new j(drawable);
            }
            throw new IllegalStateException("No source in encoded image");
        } catch (Throwable th2) {
            l2.a.j("XmlFormatDecoder", "Cannot decode xml", th2);
            return null;
        }
    }
}
