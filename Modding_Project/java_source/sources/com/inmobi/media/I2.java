package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class I2 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f23726a;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashMap f23727b;

    /* renamed from: c  reason: collision with root package name */
    public Map f23728c;

    /* renamed from: d  reason: collision with root package name */
    public ThreadPoolExecutor f23729d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I2(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        this.f23726a = new ArrayList();
        this.f23727b = new LinkedHashMap();
        this.f23728c = new LinkedHashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:208:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0330 A[Catch: OutOfMemoryError -> 0x0335, TRY_LEAVE, TryCatch #0 {OutOfMemoryError -> 0x0335, blocks: (B:90:0x031f, B:92:0x0323, B:94:0x0329, B:97:0x0330, B:95:0x032c), top: B:187:0x031f }] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleMessage(android.os.Message r27) {
        /*
            Method dump skipped, instructions count: 1512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.I2.handleMessage(android.os.Message):void");
    }
}
