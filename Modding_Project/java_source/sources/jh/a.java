package jh;

import android.content.Context;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.tab.TagFilterTab;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TagLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull
    public final List<TagFilterTab> a(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        String string = context.getString(R$string.labels_tab_trending);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        TagFilterTab tagFilterTab = new TagFilterTab(1, string);
        String string2 = context.getString(R$string.labels_tab_latest);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        List<TagFilterTab> t10 = CollectionsKt.t(tagFilterTab, new TagFilterTab(2, string2));
        if (i10 >= 0 && i10 < t10.size()) {
            t10.get(i10).setSelected(true);
        }
        return t10;
    }
}
