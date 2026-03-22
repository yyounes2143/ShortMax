package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.inmobi.media.G1;
import java.lang.ref.WeakReference;
import java.util.Queue;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class G1 implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    public final WeakReference f23669b;

    /* renamed from: a  reason: collision with root package name */
    public final String f23668a = G1.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    public final Handler f23670c = new Handler(Looper.getMainLooper());

    public G1(Object obj) {
        this.f23669b = new WeakReference(obj);
    }

    public static final void a(G1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object obj = this$0.f23669b.get();
        if (obj != null) {
            A a10 = A.f23444a;
            int hashCode = obj.hashCode();
            try {
                SparseArray sparseArray = A.f23445b;
                Queue queue = (Queue) sparseArray.get(hashCode);
                if (queue != null) {
                    queue.poll();
                    G1 g12 = (G1) queue.peek();
                    if (queue.size() > 0 && g12 != null) {
                        try {
                            A.f23446c.execute(g12);
                        } catch (OutOfMemoryError unused) {
                            g12.c();
                        }
                    }
                    if (queue.size() == 0) {
                        sparseArray.remove(hashCode);
                    }
                }
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }

    public abstract void a();

    public final void b() {
        this.f23670c.post(new Runnable() { // from class: ub.h0
            @Override // java.lang.Runnable
            public final void run() {
                G1.a(G1.this);
            }
        });
    }

    public void c() {
        String TAG = this.f23668a;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        AbstractC2984h7.a((byte) 1, TAG, "Could not execute runnable due to OutOfMemory.");
        Object obj = this.f23669b.get();
        if (obj != null) {
            A a10 = A.f23444a;
            int hashCode = obj.hashCode();
            SparseArray sparseArray = A.f23445b;
            sparseArray.remove(hashCode);
            Intrinsics.checkNotNullExpressionValue(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "TAG");
            sparseArray.size();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        a();
        b();
    }
}
