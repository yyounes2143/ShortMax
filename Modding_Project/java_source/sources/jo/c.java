package jo;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
/* compiled from: MotionPhotoDescription.java */
/* loaded from: classes8.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    public final long f60474a;

    /* renamed from: b  reason: collision with root package name */
    public final List<a> f60475b;

    /* compiled from: MotionPhotoDescription.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f60476a;

        /* renamed from: b  reason: collision with root package name */
        public final String f60477b;

        /* renamed from: c  reason: collision with root package name */
        public final long f60478c;

        /* renamed from: d  reason: collision with root package name */
        public final long f60479d;

        public a(String str, String str2, long j10, long j11) {
            this.f60476a = str;
            this.f60477b = str2;
            this.f60478c = j10;
            this.f60479d = j11;
        }
    }

    public c(long j10, List<a> list) {
        this.f60474a = j10;
        this.f60475b = list;
    }

    @Nullable
    public qo.a a(long j10) {
        long j11;
        if (this.f60475b.size() < 2) {
            return null;
        }
        long j12 = j10;
        long j13 = -1;
        long j14 = -1;
        long j15 = -1;
        long j16 = -1;
        boolean z10 = false;
        for (int size = this.f60475b.size() - 1; size >= 0; size--) {
            a aVar = this.f60475b.get(size);
            boolean equals = MimeTypes.VIDEO_MP4.equals(aVar.f60476a) | z10;
            if (size == 0) {
                j12 -= aVar.f60479d;
                j11 = 0;
            } else {
                j11 = j12 - aVar.f60478c;
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
        return new qo.a(j13, j14, this.f60474a, j15, j16);
    }
}
