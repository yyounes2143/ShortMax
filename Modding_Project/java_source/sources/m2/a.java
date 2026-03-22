package m2;

import androidx.annotation.NonNull;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MediaUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f62446a = new a();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Map<String, String> f62447b = p0.m(k.a("mkv", "video/x-matroska"), k.a("glb", "model/gltf-binary"));

    private a() {
    }

    private final String a(@NonNull String str) {
        int x02 = StringsKt.x0(str, '.', 0, false, 6, null);
        if (x02 >= 0 && x02 != str.length() - 1) {
            String substring = str.substring(x02 + 1);
            Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
            return substring;
        }
        return null;
    }

    @Nullable
    public static final String b(@NonNull @NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        String a10 = f62446a.a(path);
        if (a10 != null) {
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = a10.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (lowerCase != null) {
                String a11 = b.a(lowerCase);
                if (a11 == null) {
                    return f62447b.get(lowerCase);
                }
                return a11;
            }
            return null;
        }
        return null;
    }

    public static final boolean c(@Nullable String str) {
        if (str == null) {
            return false;
        }
        return StringsKt.V(str, "video/", false, 2, null);
    }
}
