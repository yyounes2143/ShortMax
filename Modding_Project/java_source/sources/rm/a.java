package rm;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.mraid.MraidWebView;
import io.bidmachine.iab.mraid.g;
import java.util.Map;
/* loaded from: classes7.dex */
public interface a {
    boolean a(@NonNull String str);

    void b(@Nullable MraidWebView mraidWebView, @NonNull String str, @NonNull Map<String, String> map);

    @NonNull
    g c();

    @NonNull
    String getJs();
}
