package com.startshorts.androidplayer.databinding;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.databinding.ViewDataBinding;
import com.startshorts.androidplayer.ui.view.base.SwipingFrescoView;
import com.startshorts.androidplayer.ui.view.base.SwipingTextureView;
/* loaded from: classes6.dex */
public abstract class ItemPlayEpisodeBinding extends ViewDataBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f40555a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SwipingFrescoView f40556b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SwipingTextureView f40557c;

    /* JADX INFO: Access modifiers changed from: protected */
    public ItemPlayEpisodeBinding(Object obj, View view, int i10, ImageView imageView, SwipingFrescoView swipingFrescoView, SwipingTextureView swipingTextureView) {
        super(obj, view, i10);
        this.f40555a = imageView;
        this.f40556b = swipingFrescoView;
        this.f40557c = swipingTextureView;
    }
}
