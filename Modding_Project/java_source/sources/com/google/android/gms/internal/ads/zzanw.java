package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzanw extends zzadg {
    public zzanw(zzeu zzeuVar, long j10, long j11) {
        super(new zzadb(), new zzanu(zzeuVar, null), j10, 0L, j10 + 1, 0L, j11, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ int zzh(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }
}
