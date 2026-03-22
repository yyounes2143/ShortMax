package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class TransferUtilityOptions implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final Log f5742e = LogFactory.b(TransferUtilityOptions.class);
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    private long f5743a = b();

    /* renamed from: b  reason: collision with root package name */
    private int f5744b = d();

    /* renamed from: d  reason: collision with root package name */
    protected TransferNetworkConnectionType f5746d = e();

    /* renamed from: c  reason: collision with root package name */
    private long f5745c = 5242880;

    @Deprecated
    static long b() {
        return ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d() {
        return (Runtime.getRuntime().availableProcessors() + 1) * 2;
    }

    static TransferNetworkConnectionType e() {
        return TransferNetworkConnectionType.ANY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long f() {
        return this.f5745c;
    }

    public TransferNetworkConnectionType g() {
        return this.f5746d;
    }

    public int h() {
        return this.f5744b;
    }
}
