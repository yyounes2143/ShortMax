package x0;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import com.airbnb.lottie.i;
/* compiled from: LottieCompositionCache.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final f f70379b = new f();

    /* renamed from: a  reason: collision with root package name */
    private final LruCache<String, i> f70380a = new LruCache<>(20);

    @VisibleForTesting
    f() {
    }

    public static f b() {
        return f70379b;
    }

    @Nullable
    public i a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return this.f70380a.get(str);
    }

    public void c(@Nullable String str, i iVar) {
        if (str == null) {
            return;
        }
        this.f70380a.put(str, iVar);
    }
}
