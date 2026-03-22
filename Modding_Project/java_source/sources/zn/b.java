package zn;

import androidx.annotation.Nullable;
import cn.b0;
import cn.m0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.decoder.DecoderInputBuffer;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
import io.bidmachine.media3.exoplayer.h;
import io.bidmachine.media3.exoplayer.i2;
import java.nio.ByteBuffer;
/* compiled from: CameraMotionRenderer.java */
/* loaded from: classes8.dex */
public final class b extends h {

    /* renamed from: r  reason: collision with root package name */
    private final DecoderInputBuffer f72239r;

    /* renamed from: s  reason: collision with root package name */
    private final b0 f72240s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private a f72241t;

    /* renamed from: u  reason: collision with root package name */
    private long f72242u;

    public b() {
        super(6);
        this.f72239r = new DecoderInputBuffer(1);
        this.f72240s = new b0();
    }

    @Nullable
    private float[] b0(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f72240s.U(byteBuffer.array(), byteBuffer.limit());
        this.f72240s.W(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < 3; i10++) {
            fArr[i10] = Float.intBitsToFloat(this.f72240s.u());
        }
        return fArr;
    }

    private void c0() {
        a aVar = this.f72241t;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void N() {
        c0();
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void Q(long j10, boolean z10) {
        this.f72242u = Long.MIN_VALUE;
        c0();
    }

    @Override // io.bidmachine.media3.exoplayer.i2
    public int a(io.bidmachine.media3.common.a aVar) {
        if (MimeTypes.APPLICATION_CAMERA_MOTION.equals(aVar.f55174o)) {
            return i2.k(4);
        }
        return i2.k(0);
    }

    @Override // io.bidmachine.media3.exoplayer.h2, io.bidmachine.media3.exoplayer.i2
    public String getName() {
        return "CameraMotionRenderer";
    }

    @Override // io.bidmachine.media3.exoplayer.h, io.bidmachine.media3.exoplayer.f2.b
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 8) {
            this.f72241t = (a) obj;
        } else {
            super.handleMessage(i10, obj);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isReady() {
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public void render(long j10, long j11) {
        while (!hasReadStreamToEnd() && this.f72242u < 100000 + j10) {
            this.f72239r.b();
            boolean z10 = false;
            if (Y(F(), this.f72239r, 0) == -4 && !this.f72239r.f()) {
                long j12 = this.f72239r.f55347f;
                this.f72242u = j12;
                if (j12 < H()) {
                    z10 = true;
                }
                if (this.f72241t != null && !z10) {
                    this.f72239r.n();
                    float[] b02 = b0((ByteBuffer) m0.i(this.f72239r.f55345d));
                    if (b02 != null) {
                        ((a) m0.i(this.f72241t)).a(this.f72242u - K(), b02);
                    }
                }
            } else {
                return;
            }
        }
    }
}
