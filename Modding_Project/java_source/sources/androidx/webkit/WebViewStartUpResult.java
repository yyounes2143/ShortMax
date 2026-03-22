package androidx.webkit;

import android.annotation.SuppressLint;
import androidx.webkit.WebViewCompat;
import java.util.List;
@WebViewCompat.ExperimentalAsyncStartUp
/* loaded from: classes2.dex */
public interface WebViewStartUpResult {
    @SuppressLint({"AutoBoxing"})
    Long getMaxTimePerTaskInUiThreadMillis();

    @SuppressLint({"NullableCollection"})
    List<StartUpLocation> getNonUiThreadBlockingStartUpLocations();

    @SuppressLint({"AutoBoxing"})
    Long getTotalTimeInUiThreadMillis();

    @SuppressLint({"NullableCollection"})
    List<StartUpLocation> getUiThreadBlockingStartUpLocations();
}
