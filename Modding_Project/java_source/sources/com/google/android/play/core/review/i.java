package com.google.android.play.core.review;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import f7.t;
import f7.v;
/* compiled from: com.google.android.play:review@@2.0.2 */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes5.dex */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    private static final f7.i f19964c = new f7.i("ReviewService");
    @Nullable
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    t f19965a;

    /* renamed from: b  reason: collision with root package name */
    private final String f19966b;

    /* JADX WARN: Type inference failed for: r7v0, types: [com.google.android.play.core.review.e] */
    public i(Context context) {
        this.f19966b = context.getPackageName();
        if (v.a(context)) {
            this.f19965a = new t(context, f19964c, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), new Object() { // from class: com.google.android.play.core.review.e
            }, null);
        }
    }

    public final Task a() {
        String str = this.f19966b;
        f7.i iVar = f19964c;
        iVar.c("requestInAppReview (%s)", str);
        if (this.f19965a == null) {
            iVar.a("Play Store app is either not installed or not the official version", new Object[0]);
            return Tasks.forException(new ReviewException(-1));
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f19965a.s(new f(this, taskCompletionSource, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
