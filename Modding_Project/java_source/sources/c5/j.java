package c5;

import android.annotation.SuppressLint;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* compiled from: ExecutionModule.java */
/* loaded from: classes4.dex */
abstract class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"ThreadPoolCreation"})
    public static Executor a() {
        return new n(Executors.newSingleThreadExecutor());
    }
}
