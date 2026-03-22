package bd;

import android.util.Log;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidLogger.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements c {
    @Override // bd.c
    public void a(@Nullable String str, @Nullable String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            Log.e(str, str2);
        }
    }

    @Override // bd.c
    public void b(@Nullable String str, @Nullable String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            Log.i(str, str2);
        }
    }
}
