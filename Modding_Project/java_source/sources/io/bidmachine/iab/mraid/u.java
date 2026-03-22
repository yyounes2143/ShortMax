package io.bidmachine.iab.mraid;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
/* loaded from: classes7.dex */
public class u extends GestureDetector {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final a f54654a;

    /* loaded from: classes7.dex */
    static class a extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f54655a = false;

        a() {
        }

        boolean a() {
            return this.f54655a;
        }

        void b() {
            this.f54655a = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(@NonNull MotionEvent motionEvent) {
            this.f54655a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public u(@NonNull Context context) {
        this(context, new a());
    }

    public boolean a() {
        return this.f54654a.a();
    }

    public void b() {
        this.f54654a.b();
    }

    private u(Context context, @NonNull a aVar) {
        super(context, aVar);
        this.f54654a = aVar;
        setIsLongpressEnabled(false);
    }
}
