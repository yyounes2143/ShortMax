package un;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;
import yo.l;
import yo.r;
/* compiled from: SubtitleDecoderFactory.java */
/* loaded from: classes8.dex */
public interface g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f68503a = new a();

    /* compiled from: SubtitleDecoderFactory.java */
    /* loaded from: classes8.dex */
    class a implements g {

        /* renamed from: b  reason: collision with root package name */
        private final yo.h f68504b = new yo.h();

        a() {
        }

        @Override // un.g
        public boolean a(io.bidmachine.media3.common.a aVar) {
            String str = aVar.f55174o;
            if (!this.f68504b.a(aVar) && !Objects.equals(str, MimeTypes.APPLICATION_CEA608) && !Objects.equals(str, MimeTypes.APPLICATION_MP4CEA608) && !Objects.equals(str, MimeTypes.APPLICATION_CEA708)) {
                return false;
            }
            return true;
        }

        @Override // un.g
        public l b(io.bidmachine.media3.common.a aVar) {
            String str = aVar.f55174o;
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case 930165504:
                        if (str.equals(MimeTypes.APPLICATION_MP4CEA608)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 1566015601:
                        if (str.equals(MimeTypes.APPLICATION_CEA608)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1566016562:
                        if (str.equals(MimeTypes.APPLICATION_CEA708)) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                    case 1:
                        return new zo.a(str, aVar.J, 16000L);
                    case 2:
                        return new zo.c(aVar.J, aVar.f55177r);
                }
            }
            if (this.f68504b.a(aVar)) {
                r c11 = this.f68504b.c(aVar);
                return new b(c11.getClass().getSimpleName() + "Decoder", c11);
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(io.bidmachine.media3.common.a aVar);

    l b(io.bidmachine.media3.common.a aVar);
}
