package d;

import com.hades.aar.admanager.core.AdFormat;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public abstract class h {
    public static final AdFormat a(Object obj) {
        AdFormat a10;
        if (obj == null) {
            return AdFormat.ALL;
        }
        if (obj instanceof AdFormat) {
            return (AdFormat) obj;
        }
        if (obj instanceof ca.e) {
            return ((ca.e) obj).f();
        }
        if (obj instanceof ca.d) {
            return ((ca.d) obj).h();
        }
        if (obj instanceof ca.f) {
            return a(((ca.f) obj).f());
        }
        if (obj instanceof c.g) {
            return a(((c.g) obj).f2836b);
        }
        if (obj instanceof Iterable) {
            Object s02 = CollectionsKt.s0((Iterable) obj);
            if (s02 == null || (a10 = a(s02)) == null) {
                return AdFormat.ALL;
            }
            return a10;
        }
        return AdFormat.ALL;
    }

    public static final String b(Object obj, String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        AdFormat a10 = a(obj);
        return tag + ":format_" + a10;
    }
}
