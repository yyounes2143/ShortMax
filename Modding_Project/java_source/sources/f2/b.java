package f2;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CacheKeyUtil.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f51594a = new b();

    private b() {
    }

    @NotNull
    public static final String a(@NotNull a key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            if (key instanceof c) {
                List<a> a10 = ((c) key).a();
                Intrinsics.checkNotNullExpressionValue(a10, "getCacheKeys(...)");
                b bVar = f51594a;
                a aVar = a10.get(0);
                Intrinsics.checkNotNullExpressionValue(aVar, "get(...)");
                return bVar.c(aVar);
            }
            return f51594a.c(key);
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NotNull
    public static final List<String> b(@NotNull a key) {
        ArrayList arrayList;
        String c10;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            if (key instanceof c) {
                List<a> a10 = ((c) key).a();
                Intrinsics.checkNotNullExpressionValue(a10, "getCacheKeys(...)");
                arrayList = new ArrayList(a10.size());
                int size = a10.size();
                for (int i10 = 0; i10 < size; i10++) {
                    b bVar = f51594a;
                    a aVar = a10.get(i10);
                    Intrinsics.checkNotNullExpressionValue(aVar, "get(...)");
                    arrayList.add(bVar.c(aVar));
                }
            } else {
                arrayList = new ArrayList(1);
                if (key.isResourceIdForDebugging()) {
                    c10 = key.getUriString();
                } else {
                    c10 = f51594a.c(key);
                }
                arrayList.add(c10);
            }
            return arrayList;
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10);
        }
    }

    private final String c(a aVar) throws UnsupportedEncodingException {
        String uriString = aVar.getUriString();
        Intrinsics.checkNotNullExpressionValue(uriString, "getUriString(...)");
        Charset forName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
        byte[] bytes = uriString.getBytes(forName);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String a10 = r2.b.a(bytes);
        Intrinsics.checkNotNullExpressionValue(a10, "makeSHA1HashBase64(...)");
        return a10;
    }
}
