package io.bidmachine.iab.mraid;

import android.content.Context;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
/* loaded from: classes7.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final float f54622a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Rect f54623b = new Rect();
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Rect f54624c = new Rect();
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Rect f54625d = new Rect();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Rect f54626e = new Rect();
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Rect f54627f = new Rect();
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final Rect f54628g = new Rect();
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final Rect f54629h = new Rect();
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final Rect f54630i = new Rect();

    public n(@NonNull Context context) {
        this.f54622a = context.getResources().getDisplayMetrics().density;
    }

    private boolean e(@NonNull Rect rect, @NonNull Rect rect2, int i10, int i11, int i12, int i13) {
        if (rect.left == i10 && rect.top == i11 && i10 + i12 == rect.right && i11 + i13 == rect.bottom) {
            return false;
        }
        rect.set(i10, i11, i12 + i10, i13 + i11);
        b(rect, rect2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Rect a() {
        return this.f54628g;
    }

    @VisibleForTesting
    void b(@NonNull Rect rect, @NonNull Rect rect2) {
        rect2.set(sm.q.H(rect.left, this.f54622a), sm.q.H(rect.top, this.f54622a), sm.q.H(rect.right, this.f54622a), sm.q.H(rect.bottom, this.f54622a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(int i10, int i11) {
        if (this.f54623b.width() == i10 && this.f54623b.height() == i11) {
            return false;
        }
        this.f54623b.set(0, 0, i10, i11);
        b(this.f54623b, this.f54624c);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(int i10, int i11, int i12, int i13) {
        return e(this.f54627f, this.f54628g, i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(int i10, int i11, int i12, int i13) {
        return e(this.f54629h, this.f54630i, i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Rect g() {
        return this.f54630i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(int i10, int i11, int i12, int i13) {
        return e(this.f54625d, this.f54626e, i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Rect i() {
        return this.f54626e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Rect j() {
        return this.f54624c;
    }
}
