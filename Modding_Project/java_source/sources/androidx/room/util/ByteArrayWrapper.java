package androidx.room.util;

import androidx.annotation.RestrictTo;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteArrayWrapper.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class ByteArrayWrapper {
    @NotNull
    public final byte[] array;

    public ByteArrayWrapper(@NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.array = array;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ByteArrayWrapper)) {
            return false;
        }
        return Arrays.equals(this.array, ((ByteArrayWrapper) obj).array);
    }

    public int hashCode() {
        return Arrays.hashCode(this.array);
    }
}
