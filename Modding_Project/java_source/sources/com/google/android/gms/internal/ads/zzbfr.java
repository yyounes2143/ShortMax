package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbfr {
    public static final zzbeo zza;

    static {
        zzbeo.zzb("gads:ad_loader:timeout_ms", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        zza = zzbeo.zzb("gads:rendering:timeout_ms", ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        zzbeo.zzb("gads:resolve_future:default_timeout_ms", 30000L);
    }
}
