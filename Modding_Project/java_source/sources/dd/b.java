package dd;

import android.content.Context;
import java.util.List;
import kotlin.Metadata;
@Metadata
/* loaded from: classes6.dex */
public interface b extends a {
    <T> List<T> a(String str, Class<T> cls, List<? extends T> list);

    <T> T b(String str, Class<T> cls, T t10);

    boolean c(Context context, boolean z10, d dVar);

    void d(String str, Object obj);

    void e(String str, List<? extends Object> list);

    String tag();
}
