package androidx.sqlite.util;

import android.util.Log;
import androidx.annotation.RestrictTo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProcessLock.android.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nProcessLock.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessLock.android.kt\nandroidx/sqlite/util/ProcessLock\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"})
/* loaded from: classes2.dex */
public final class ProcessLock {
    @NotNull
    private static final String TAG = "SupportSQLiteLock";
    @Nullable
    private FileChannel lockChannel;
    @Nullable
    private final File lockFile;
    private final boolean processLock;
    @NotNull
    private final Lock threadLock;
    @NotNull
    private static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<String, Lock> threadLocksMap = new HashMap();

    /* compiled from: ProcessLock.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nProcessLock.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessLock.android.kt\nandroidx/sqlite/util/ProcessLock$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,97:1\n384#2,7:98\n*S KotlinDebug\n*F\n+ 1 ProcessLock.android.kt\nandroidx/sqlite/util/ProcessLock$Companion\n*L\n93#1:98,7\n*E\n"})
    /* loaded from: classes2.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Lock getThreadLock(String str) {
            Lock lock;
            synchronized (ProcessLock.threadLocksMap) {
                try {
                    Map map = ProcessLock.threadLocksMap;
                    Object obj = map.get(str);
                    if (obj == null) {
                        obj = new ReentrantLock();
                        map.put(str, obj);
                    }
                    lock = (Lock) obj;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return lock;
        }

        private Companion() {
        }
    }

    public ProcessLock(@NotNull String name, @Nullable File file, boolean z10) {
        File file2;
        Intrinsics.checkNotNullParameter(name, "name");
        this.processLock = z10;
        if (file != null) {
            file2 = new File(file, name + ".lck");
        } else {
            file2 = null;
        }
        this.lockFile = file2;
        this.threadLock = Companion.getThreadLock(name);
    }

    public static /* synthetic */ void lock$default(ProcessLock processLock, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = processLock.processLock;
        }
        processLock.lock(z10);
    }

    public final void lock(boolean z10) {
        this.threadLock.lock();
        if (z10) {
            try {
                File file = this.lockFile;
                if (file != null) {
                    File parentFile = file.getParentFile();
                    if (parentFile != null) {
                        parentFile.mkdirs();
                    }
                    FileChannel channel = new FileOutputStream(this.lockFile).getChannel();
                    channel.lock();
                    this.lockChannel = channel;
                    return;
                }
                throw new IOException("No lock directory was provided.");
            } catch (IOException e10) {
                this.lockChannel = null;
                Log.w(TAG, "Unable to grab file lock.", e10);
            }
        }
    }

    public final void unlock() {
        try {
            FileChannel fileChannel = this.lockChannel;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.threadLock.unlock();
    }
}
