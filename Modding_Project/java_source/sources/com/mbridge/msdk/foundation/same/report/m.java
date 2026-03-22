package com.mbridge.msdk.foundation.same.report;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPOutputStream;
/* compiled from: SocketStack.java */
/* loaded from: classes5.dex */
public class m extends com.mbridge.msdk.tracker.network.toolbox.a {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f27261b = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private final byte f27262a;

    public m(byte b10) {
        this.f27262a = b10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0089 A[Catch: all -> 0x0067, TryCatch #3 {all -> 0x0067, blocks: (B:11:0x004d, B:13:0x005e, B:16:0x0062, B:21:0x0070, B:23:0x007d, B:26:0x0081, B:30:0x008a, B:32:0x00a2, B:29:0x0089, B:31:0x0098, B:20:0x006d), top: B:77:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f7 A[Catch: all -> 0x00ed, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x00ed, blocks: (B:33:0x00b2, B:37:0x00c2, B:40:0x00d4, B:47:0x00f7, B:50:0x010e, B:52:0x0112, B:55:0x012b), top: B:79:0x00b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010e A[Catch: all -> 0x00ed, TRY_ENTER, TryCatch #4 {all -> 0x00ed, blocks: (B:33:0x00b2, B:37:0x00c2, B:40:0x00d4, B:47:0x00f7, B:50:0x010e, B:52:0x0112, B:55:0x012b), top: B:79:0x00b2 }] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v3 */
    @Override // com.mbridge.msdk.tracker.network.toolbox.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.tracker.network.toolbox.g a(com.mbridge.msdk.tracker.network.t<?> r12, java.util.Map<java.lang.String, java.lang.String> r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.report.m.a(com.mbridge.msdk.tracker.network.t, java.util.Map):com.mbridge.msdk.tracker.network.toolbox.g");
    }

    public byte[] a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(bArr);
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private static void a(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (Exception unused) {
            }
        }
    }

    private static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Exception unused) {
            }
        }
    }

    private void a(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            try {
                byteBuffer.clear();
            } catch (Exception unused) {
            }
        }
    }
}
