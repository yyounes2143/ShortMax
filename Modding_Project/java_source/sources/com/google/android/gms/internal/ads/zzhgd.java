package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public interface zzhgd extends Closeable {
    int zza(ByteBuffer byteBuffer) throws IOException;

    long zzb() throws IOException;

    long zzc() throws IOException;

    ByteBuffer zzd(long j10, long j11) throws IOException;

    void zze(long j10) throws IOException;
}
