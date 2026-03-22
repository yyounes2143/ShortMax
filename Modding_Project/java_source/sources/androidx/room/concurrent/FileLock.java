package androidx.room.concurrent;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FileLock.jvmAndroid.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FileLock {
    @Nullable
    private FileChannel lockChannel;
    @NotNull
    private final String lockFilename;

    public FileLock(@NotNull String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        this.lockFilename = filename + ".lck";
    }

    public final void lock() {
        if (this.lockChannel != null) {
            return;
        }
        try {
            File file = new File(this.lockFilename);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.lockChannel = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th2) {
            FileChannel fileChannel = this.lockChannel;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.lockChannel = null;
            throw new IllegalStateException("Unable to lock file: '" + this.lockFilename + "'.", th2);
        }
    }

    public final void unlock() {
        FileChannel fileChannel = this.lockChannel;
        if (fileChannel == null) {
            return;
        }
        try {
            fileChannel.close();
        } finally {
            this.lockChannel = null;
        }
    }
}
