package cn;

import android.os.Looper;
import androidx.annotation.Nullable;
/* compiled from: HandlerWrapper.java */
/* loaded from: classes8.dex */
public interface n {

    /* compiled from: HandlerWrapper.java */
    /* loaded from: classes8.dex */
    public interface a {
        void a();
    }

    boolean a(int i10);

    boolean b(a aVar);

    Looper getLooper();

    a obtainMessage(int i10);

    a obtainMessage(int i10, int i11, int i12);

    a obtainMessage(int i10, int i11, int i12, @Nullable Object obj);

    a obtainMessage(int i10, @Nullable Object obj);

    boolean post(Runnable runnable);

    void removeCallbacksAndMessages(@Nullable Object obj);

    void removeMessages(int i10);

    boolean sendEmptyMessage(int i10);

    boolean sendEmptyMessageAtTime(int i10, long j10);
}
