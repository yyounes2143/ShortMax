package com.google.android.play.core.review;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Task;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public interface a {
    @NonNull
    Task<ReviewInfo> a();

    @NonNull
    Task<Void> b(@NonNull Activity activity, @NonNull ReviewInfo reviewInfo);
}
