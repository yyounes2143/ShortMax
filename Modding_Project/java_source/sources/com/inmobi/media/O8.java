package com.inmobi.media;

import android.media.MediaMetadataRetriever;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class O8 {

    /* renamed from: a  reason: collision with root package name */
    public final long f23944a;

    /* renamed from: b  reason: collision with root package name */
    public final long f23945b;

    /* renamed from: c  reason: collision with root package name */
    public final String f23946c;

    /* renamed from: d  reason: collision with root package name */
    public final C3113p8 f23947d;

    public O8(long j10, long j11, String referencedAssetId, C3113p8 nativeDataModel) {
        Intrinsics.checkNotNullParameter(referencedAssetId, "referencedAssetId");
        Intrinsics.checkNotNullParameter(nativeDataModel, "nativeDataModel");
        this.f23944a = j10;
        this.f23945b = j11;
        this.f23946c = referencedAssetId;
        this.f23947d = nativeDataModel;
        Intrinsics.checkNotNullExpressionValue(P8.class.getSimpleName(), "getSimpleName(...)");
    }

    public final long a() {
        String str;
        long j10;
        long j11 = this.f23944a;
        C2920d8 m10 = this.f23947d.m(this.f23946c);
        try {
            if (m10 instanceof C2904c9) {
                Ve d10 = ((C2904c9) m10).d();
                if (d10 != null) {
                    str = ((Ue) d10).b();
                } else {
                    str = null;
                }
                if (str != null) {
                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                    mediaMetadataRetriever.setDataSource(str);
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                    if (extractMetadata != null) {
                        j10 = Long.parseLong(extractMetadata);
                    } else {
                        j10 = 0;
                    }
                    j11 += (long) ((this.f23945b / 100.0d) * (j10 / 1000));
                    mediaMetadataRetriever.release();
                }
            }
        } catch (Exception unused) {
        }
        return Math.max(j11, 0L);
    }
}
