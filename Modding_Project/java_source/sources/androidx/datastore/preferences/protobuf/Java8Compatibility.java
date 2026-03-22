package androidx.datastore.preferences.protobuf;

import java.nio.Buffer;
/* loaded from: classes2.dex */
final class Java8Compatibility {
    private Java8Compatibility() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clear(Buffer buffer) {
        buffer.clear();
    }

    static void flip(Buffer buffer) {
        buffer.flip();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void limit(Buffer buffer, int i10) {
        buffer.limit(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void mark(Buffer buffer) {
        buffer.mark();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void position(Buffer buffer, int i10) {
        buffer.position(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reset(Buffer buffer) {
        buffer.reset();
    }
}
