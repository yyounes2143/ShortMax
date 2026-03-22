package tq;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
/* loaded from: classes8.dex */
public class e extends c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f67671a = new Handler(Looper.getMainLooper());

    @Override // tq.c
    @NonNull
    protected Handler b() {
        return f67671a;
    }
}
