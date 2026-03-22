package io.bidmachine.iab.vast.processor;

import android.util.Pair;
import androidx.annotation.Nullable;
import io.bidmachine.iab.vast.tags.LinearCreativeTag;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes7.dex */
public abstract class VastMediaPicker<T extends MediaFileTag> implements Serializable {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public abstract Pair<LinearCreativeTag, T> b(@Nullable List<Pair<LinearCreativeTag, T>> list);
}
