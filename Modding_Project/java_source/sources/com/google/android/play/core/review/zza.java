package com.google.android.play.core.review;

import android.app.PendingIntent;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
final class zza extends ReviewInfo {

    /* renamed from: a  reason: collision with root package name */
    private final PendingIntent f19968a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f19969b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(PendingIntent pendingIntent, boolean z10) {
        if (pendingIntent != null) {
            this.f19968a = pendingIntent;
            this.f19969b = z10;
            return;
        }
        throw new NullPointerException("Null pendingIntent");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.review.ReviewInfo
    public final PendingIntent a() {
        return this.f19968a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.review.ReviewInfo
    public final boolean b() {
        return this.f19969b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReviewInfo) {
            ReviewInfo reviewInfo = (ReviewInfo) obj;
            if (this.f19968a.equals(reviewInfo.a()) && this.f19969b == reviewInfo.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int hashCode = this.f19968a.hashCode() ^ 1000003;
        if (true != this.f19969b) {
            i10 = 1237;
        } else {
            i10 = 1231;
        }
        return (hashCode * 1000003) ^ i10;
    }

    public final String toString() {
        String obj = this.f19968a.toString();
        return "ReviewInfo{pendingIntent=" + obj + ", isNoOp=" + this.f19969b + "}";
    }
}
