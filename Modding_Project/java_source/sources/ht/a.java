package ht;

import android.os.Looper;
import gt.j1;
import java.util.List;
import kotlin.Metadata;
import mt.p;
import org.jetbrains.annotations.NotNull;
/* compiled from: HandlerDispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a implements p {
    @Override // mt.p
    public int a() {
        return 1073741823;
    }

    @Override // mt.p
    @NotNull
    public String b() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // mt.p
    @NotNull
    public j1 c(@NotNull List<? extends p> list) {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new f(h.a(mainLooper, true), null, 2, null);
        }
        throw new IllegalStateException("The main looper is not available");
    }
}
