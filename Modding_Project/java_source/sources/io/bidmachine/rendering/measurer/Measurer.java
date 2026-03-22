package io.bidmachine.rendering.measurer;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Serializable;
import rq.t;
/* loaded from: classes8.dex */
public interface Measurer<ViewType extends View> extends Serializable {
    void A0(@NonNull ViewType viewtype);

    void R(@Nullable Runnable runnable);

    void T(@NonNull ViewType viewtype);

    void a(@NonNull t tVar);

    void onClicked();

    void onShown();

    void w(@NonNull ViewType viewtype, @NonNull ViewGroup viewGroup);
}
