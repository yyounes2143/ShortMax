package m2;

import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import com.facebook.common.internal.ImmutableMap;
import java.util.Map;
/* compiled from: MimeTypeMapWrapper.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final MimeTypeMap f62448a = MimeTypeMap.getSingleton();

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, String> f62449b = ImmutableMap.of("image/heif", "heif", "image/heic", "heic");

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, String> f62450c = ImmutableMap.of("heif", "image/heif", "heic", "image/heic");

    @Nullable
    public static String a(String str) {
        String str2 = f62450c.get(str);
        if (str2 != null) {
            return str2;
        }
        return f62448a.getMimeTypeFromExtension(str);
    }
}
