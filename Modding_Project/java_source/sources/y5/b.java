package y5;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
/* compiled from: MotionPhotoDescription.java */
/* loaded from: classes4.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    public final long f70665a;

    /* renamed from: b  reason: collision with root package name */
    public final List<a> f70666b;

    /* compiled from: MotionPhotoDescription.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f70667a;

        /* renamed from: b  reason: collision with root package name */
        public final String f70668b;

        /* renamed from: c  reason: collision with root package name */
        public final long f70669c;

        /* renamed from: d  reason: collision with root package name */
        public final long f70670d;

        public a(String str, String str2, long j10, long j11) {
            this.f70667a = str;
            this.f70668b = str2;
            this.f70669c = j10;
            this.f70670d = j11;
        }
    }

    public b(long j10, List<a> list) {
        this.f70665a = j10;
        this.f70666b = list;
    }

    @Nullable
    public MotionPhotoMetadata a(long j10) {
        long j11;
        if (this.f70666b.size() < 2) {
            return null;
        }
        long j12 = j10;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        long j16 = -1;
        boolean z10 = false;
        for (int size = this.f70666b.size() - 1; size >= 0; size--) {
            a aVar = this.f70666b.get(size);
            boolean equals = MimeTypes.VIDEO_MP4.equals(aVar.f70667a) | z10;
            if (size == 0) {
                j12 -= aVar.f70670d;
                j11 = 0;
            } else {
                j11 = j12 - aVar.f70669c;
            }
            long j17 = j12;
            j12 = j11;
            if (equals && j12 != j17) {
                j16 = j17 - j12;
                j15 = j12;
                z10 = false;
            } else {
                z10 = equals;
            }
            if (size == 0) {
                j13 = j12;
                j14 = j17;
            }
        }
        if (j15 == -1 || j16 == -1 || j13 == -1 || j14 == -1) {
            return null;
        }
        return new MotionPhotoMetadata(j13, j14, this.f70665a, j15, j16);
    }
}
