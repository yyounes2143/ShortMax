package com.unity3d.ads.core.domain;

import android.app.Activity;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.ShowEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Show.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Show {
    @NotNull
    b<ShowEvent> invoke(@NotNull Activity activity, @NotNull AdObject adObject, @Nullable UnityAdsShowOptions unityAdsShowOptions);

    @Nullable
    Object terminate(@NotNull AdObject adObject, @NotNull c<? super Unit> cVar);
}
