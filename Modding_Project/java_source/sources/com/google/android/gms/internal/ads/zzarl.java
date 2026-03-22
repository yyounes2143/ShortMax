package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzarl extends ThreadLocal {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarl(zzarm zzarmVar) {
    }

    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ Object initialValue() {
        return ByteBuffer.allocate(32);
    }
}
