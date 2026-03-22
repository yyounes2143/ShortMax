package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
/* compiled from: com.google.android.play:review@@2.0.2 */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes5.dex */
public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private final i f19957a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f19958b = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(i iVar) {
        this.f19957a = iVar;
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public final Task<ReviewInfo> a() {
        return this.f19957a.a();
    }

    @Override // com.google.android.play.core.review.a
    @NonNull
    public final Task<Void> b(@NonNull Activity activity, @NonNull ReviewInfo reviewInfo) {
        if (reviewInfo.b()) {
            return Tasks.forResult(null);
        }
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.a());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        intent.putExtra("result_receiver", new zzc(this, this.f19958b, taskCompletionSource));
        activity.startActivity(intent);
        return taskCompletionSource.getTask();
    }
}
