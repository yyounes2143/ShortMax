package androidx.room.concurrent;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExclusiveLock.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ExclusiveLock {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Map<String, ReentrantLock> threadLocksMap = new LinkedHashMap();
    @Nullable
    private final FileLock fileLock;
    @NotNull
    private final ReentrantLock threadLock;

    /* compiled from: ExclusiveLock.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nExclusiveLock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExclusiveLock.kt\nandroidx/room/concurrent/ExclusiveLock$Companion\n+ 2 Synchronized.jvmAndroid.kt\nandroidx/room/concurrent/Synchronized_jvmAndroidKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,77:1\n22#2:78\n384#3,7:79\n*S KotlinDebug\n*F\n+ 1 ExclusiveLock.kt\nandroidx/room/concurrent/ExclusiveLock$Companion\n*L\n70#1:78\n71#1:79,7\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final FileLock getFileLock(String str) {
            return new FileLock(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final ReentrantLock getThreadLock(String str) {
            ReentrantLock reentrantLock;
            synchronized (this) {
                try {
                    Map map = ExclusiveLock.threadLocksMap;
                    Object obj = map.get(str);
                    if (obj == null) {
                        obj = new ReentrantLock();
                        map.put(str, obj);
                    }
                    reentrantLock = (ReentrantLock) obj;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return reentrantLock;
        }

        private Companion() {
        }
    }

    public ExclusiveLock(@NotNull String filename, boolean z10) {
        FileLock fileLock;
        Intrinsics.checkNotNullParameter(filename, "filename");
        Companion companion = Companion;
        this.threadLock = companion.getThreadLock(filename);
        if (z10) {
            fileLock = companion.getFileLock(filename);
        } else {
            fileLock = null;
        }
        this.fileLock = fileLock;
    }

    public final <T> T withLock(@NotNull Function0<? extends T> onLocked, @NotNull Function1 onLockError) {
        Intrinsics.checkNotNullParameter(onLocked, "onLocked");
        Intrinsics.checkNotNullParameter(onLockError, "onLockError");
        this.threadLock.lock();
        boolean z10 = false;
        try {
            FileLock fileLock = this.fileLock;
            if (fileLock != null) {
                fileLock.lock();
            }
            z10 = true;
            T invoke = onLocked.invoke();
            FileLock fileLock2 = this.fileLock;
            if (fileLock2 != null) {
                fileLock2.unlock();
            }
            this.threadLock.unlock();
            return invoke;
        } catch (Throwable th2) {
            try {
                if (z10) {
                    throw th2;
                }
                onLockError.invoke(th2);
                throw new KotlinNothingValueException();
            } catch (Throwable th3) {
                this.threadLock.unlock();
                throw th3;
            }
        }
    }
}
