package r0;

import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import java.io.File;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HardwareBitmaps.kt */
@Metadata
/* loaded from: classes2.dex */
final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l f65454a = new l();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final File f65455b = new File("/proc/self/fd");

    /* renamed from: c  reason: collision with root package name */
    private static int f65456c = 30;

    /* renamed from: d  reason: collision with root package name */
    private static long f65457d = SystemClock.uptimeMillis();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f65458e = true;

    private l() {
    }

    private final boolean a() {
        int i10 = f65456c;
        f65456c = i10 + 1;
        if (i10 < 30 && SystemClock.uptimeMillis() <= f65457d + 30000) {
            return false;
        }
        return true;
    }

    @WorkerThread
    public final synchronized boolean b(@Nullable q qVar) {
        try {
            if (a()) {
                boolean z10 = false;
                f65456c = 0;
                f65457d = SystemClock.uptimeMillis();
                String[] list = f65455b.list();
                if (list == null) {
                    list = new String[0];
                }
                int length = list.length;
                if (length < 800) {
                    z10 = true;
                }
                f65458e = z10;
                if (!z10 && qVar != null && qVar.getLevel() <= 5) {
                    qVar.a("FileDescriptorCounter", 5, "Unable to allocate more hardware bitmaps. Number of used file descriptors: " + length, null);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f65458e;
    }
}
