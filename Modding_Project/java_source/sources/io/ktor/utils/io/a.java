package io.ktor.utils.io;

import kotlin.Metadata;
/* compiled from: ByteBufferChannel.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Void b(Throwable th2) {
        Throwable th3;
        try {
            th3 = ExceptionUtilsJvmKt.e(th2, th2);
        } catch (Throwable unused) {
            th3 = null;
        }
        if (th3 == null) {
            throw th2;
        }
        throw th3;
    }
}
