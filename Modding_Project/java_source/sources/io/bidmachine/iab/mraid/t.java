package io.bidmachine.iab.mraid;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes7.dex */
public class t {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f54646a;

    /* loaded from: classes7.dex */
    public static class a {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final View[] f54647a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f54648b = new RunnableC0792a();
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Runnable f54649c;

        /* renamed from: d  reason: collision with root package name */
        private int f54650d;

        /* renamed from: io.bidmachine.iab.mraid.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class RunnableC0792a implements Runnable {

            /* renamed from: io.bidmachine.iab.mraid.t$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes7.dex */
            class ViewTreeObserver$OnPreDrawListenerC0793a implements ViewTreeObserver.OnPreDrawListener {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ View f54652a;

                ViewTreeObserver$OnPreDrawListenerC0793a(View view) {
                    this.f54652a = view;
                }

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    this.f54652a.getViewTreeObserver().removeOnPreDrawListener(this);
                    a.this.c();
                    return true;
                }
            }

            RunnableC0792a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                View[] viewArr;
                for (View view : a.this.f54647a) {
                    if (view.getHeight() <= 0 && view.getWidth() <= 0) {
                        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC0793a(view));
                    } else {
                        a.this.c();
                    }
                }
            }
        }

        public a(@NonNull View[] viewArr) {
            this.f54647a = viewArr;
        }

        void a() {
            sm.q.n(this.f54648b);
            this.f54649c = null;
        }

        void c() {
            Runnable runnable;
            int i10 = this.f54650d - 1;
            this.f54650d = i10;
            if (i10 == 0 && (runnable = this.f54649c) != null) {
                runnable.run();
                this.f54649c = null;
            }
        }

        public void d(@NonNull Runnable runnable) {
            this.f54649c = runnable;
            this.f54650d = this.f54647a.length;
            sm.q.I(this.f54648b);
        }
    }

    public void a() {
        a aVar = this.f54646a;
        if (aVar != null) {
            aVar.a();
            this.f54646a = null;
        }
    }

    @NonNull
    public a b(@NonNull View... viewArr) {
        a();
        a aVar = new a(viewArr);
        this.f54646a = aVar;
        return aVar;
    }
}
