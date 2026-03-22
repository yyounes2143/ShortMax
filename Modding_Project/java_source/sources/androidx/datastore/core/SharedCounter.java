package androidx.datastore.core;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SharedCounter.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SharedCounter {
    @NotNull
    public static final Factory Factory = new Factory(null);
    @NotNull
    private static final NativeSharedCounter nativeSharedCounter = new NativeSharedCounter();
    private final long mappedAddress;

    /* compiled from: SharedCounter.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Factory {
        public /* synthetic */ Factory(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final SharedCounter createCounterFromFd(ParcelFileDescriptor parcelFileDescriptor) {
            int fd2 = parcelFileDescriptor.getFd();
            if (getNativeSharedCounter$datastore_core_release().nativeTruncateFile(fd2) == 0) {
                long nativeCreateSharedCounter = getNativeSharedCounter$datastore_core_release().nativeCreateSharedCounter(fd2);
                if (nativeCreateSharedCounter >= 0) {
                    return new SharedCounter(nativeCreateSharedCounter, null);
                }
                throw new IOException("Failed to mmap counter file");
            }
            throw new IOException("Failed to truncate counter file");
        }

        @NotNull
        public final SharedCounter create$datastore_core_release(@NotNull Function0<? extends File> produceFile) {
            ParcelFileDescriptor parcelFileDescriptor;
            Intrinsics.checkNotNullParameter(produceFile, "produceFile");
            try {
                parcelFileDescriptor = ParcelFileDescriptor.open(produceFile.invoke(), 939524096);
                try {
                    SharedCounter createCounterFromFd = createCounterFromFd(parcelFileDescriptor);
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                    return createCounterFromFd;
                } catch (Throwable th2) {
                    th = th2;
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                parcelFileDescriptor = null;
            }
        }

        @NotNull
        public final NativeSharedCounter getNativeSharedCounter$datastore_core_release() {
            return SharedCounter.nativeSharedCounter;
        }

        public final void loadLib() {
            System.loadLibrary("datastore_shared_counter");
        }

        private Factory() {
        }
    }

    public /* synthetic */ SharedCounter(long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10);
    }

    public final int getValue() {
        return nativeSharedCounter.nativeGetCounterValue(this.mappedAddress);
    }

    public final int incrementAndGetValue() {
        return nativeSharedCounter.nativeIncrementAndGetCounterValue(this.mappedAddress);
    }

    private SharedCounter(long j10) {
        this.mappedAddress = j10;
    }
}
