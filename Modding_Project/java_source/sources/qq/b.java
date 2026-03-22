package qq;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.measurer.VideoMeasurer;
import java.util.Map;
/* loaded from: classes8.dex */
public interface b {
    @Nullable
    VideoMeasurer a(@NonNull Context context, @NonNull String str, @Nullable Map<String, String> map);

    @Nullable
    HtmlMeasurer b(@NonNull Context context, @NonNull String str, @Nullable Map<String, String> map);
}
