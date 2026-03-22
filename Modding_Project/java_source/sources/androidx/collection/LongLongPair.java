package androidx.collection;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LongLongPair.kt */
@Metadata
/* loaded from: classes.dex */
public final class LongLongPair {
    private final long first;
    private final long second;

    public LongLongPair(long j10, long j11) {
        this.first = j10;
        this.second = j11;
    }

    public final long component1() {
        return getFirst();
    }

    public final long component2() {
        return getSecond();
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof LongLongPair)) {
            return false;
        }
        LongLongPair longLongPair = (LongLongPair) obj;
        if (longLongPair.first != this.first || longLongPair.second != this.second) {
            return false;
        }
        return true;
    }

    public final long getFirst() {
        return this.first;
    }

    public final long getSecond() {
        return this.second;
    }

    public int hashCode() {
        return Long.hashCode(this.first) ^ Long.hashCode(this.second);
    }

    @NotNull
    public String toString() {
        return '(' + this.first + ", " + this.second + ')';
    }
}
