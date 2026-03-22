package io.bidmachine.rendering.measurer;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes8.dex */
public class CompositeHtmlMeasurer extends BaseCompositeMeasurer<HtmlMeasurer, WebView> implements HtmlMeasurer {
    public CompositeHtmlMeasurer(@NonNull List<HtmlMeasurer> list) {
        super(list);
    }

    @Override // io.bidmachine.rendering.measurer.HtmlMeasurer
    @NonNull
    public String p(@NonNull String str) {
        for (MeasurerType measurertype : this.f58516a) {
            str = measurertype.p(str);
        }
        return str;
    }
}
